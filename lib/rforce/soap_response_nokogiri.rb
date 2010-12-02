require 'nokogiri'
require 'rforce/method_keys'

module RForce
  class SoapResponseNokogiri
    # Parses an XML string into structured data.
    def initialize(content)
      @content = content
    end

    # Digests an XML DOM node into nested Ruby types.
    def parse
      document = Nokogiri.XML(@content)
      node = document % '//soapenv:Body'
      self.class.node_to_ruby node
    end

    private

    def self.node_to_ruby(node)
      # Convert text nodes into simple strings.
      children = (node.children || []).reject do |c|
        c.is_a?(Nokogiri::XML::Text) && c.to_s.strip.empty?
      end

      if node.is_a?(Nokogiri::XML::Text )
        return node.text
      end

      if children.first.is_a?(Nokogiri::XML::Text)
        return children.first.text
      end

      # Convert nodes with children into MethodHashes.
      elements = MethodHash.new

      # Add all the element's children to the hash.
      children.each do |e|
        next if e.is_a?(Nokogiri::XML::Text) && e.text.strip.empty?
        name = e.name.to_sym

        case elements[name]
          # The most common case: unique child element tags.
        when NilClass then elements[name] = node_to_ruby(e)

          # Non-unique child elements become arrays:

          # We've already created the array: just
          # add the element.
        when Array then elements[name] << node_to_ruby(e)

          # We haven't created the array yet: do so,
          # then put the existing element in, followed
          # by the new one.
        else
          elements[name] = [elements[name]]
          elements[name] << node_to_ruby(e)
        end
      end

      return elements.empty? ? nil : elements
    end
  end
end
