require 'savon'
require 'date'


# http://graphical.weather.gov/xml/
noaa_url = 'http://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl'
client = Savon.client(wsdl: noaa_url, follow_redirects: true)
# get the weather for Seattle: 47.609722, -122.333056

start_time = DateTime.now
end_time = start_time + 2  # add two days
xml_doc = client.call(:ndf_dgen, message: {latitude: 47.609722, 
                                           longitude: -122.333056, 
                                           product: 'glance', 
                                           startTime: start_time.strftime("%Y-%m-%dT%H:%M"), 
                                           endTime: end_time.strftime("%Y-%m-%dT%H:%M"), 
                                           Unit: 'm'}).body[:ndf_dgen_response][:dwml_out]
puts xml_doc