# More information from https://ai.google.dev/gemini-api/docs/api-overview#curl
require 'uri'
require 'net/http'
require 'json'
require 'base64'

api_key = "Enter your API KEY HERE"
uri_string = 'https://generativelanguage.googleapis.com/v1/models/gemini-1.5-flash:generateContent?key='+api_key
puts uri_string

image_data = File.read("path/to/image", mode: "rb")

encoded_image = Base64.strict_encode64(image_data) #No line feeds are added as compared to normal encode 
body_request = {
    contents: [
      {
        parts: [
          { text: "Enter your prompt here" },
          {
            inlineData: {
              mimeType: 'image/jpeg', #accepts both png and jpeg
              data: encoded_image
            }
          }
        ]
      }
    ]
  }.to_json

req_uri = URI(uri_string)
res = Net::HTTP.post req_uri, body_request, "Content-Type" => "application/json"
#puts res.body
response_data = JSON.parse(res.body)[]
puts response_data[contents]