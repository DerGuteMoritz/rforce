require 'rforce/soap_response_nokogiri'


module RForce
  # always use Nokogiri because the other ones seem to be broken
  SoapResponse = RForce::SoapResponseNokogiri
end
