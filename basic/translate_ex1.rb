require 'uri'
require 'net/http'
require 'json'

api_key = ENV['API_KEY']
uri_string = 'https://translation.googleapis.com/language/translate/v2?key='+api_key
puts uri_string

text_to_translate = %Q{
LE BIEN PUBLIC
les dépêches
Pour Obama,
la moutarde
est
de Dijon
ATELINE
}

body_request = {
    "q" => text_to_translate,
    "target" => "en"}.to_json
req_uri = URI(uri_string)

res = Net::HTTP.post req_uri, body_request, "Content-Type" => "application/json"
puts res.body
response_data = JSON.parse(res.body)
puts response_data["data"]["translations"][0]["translatedText"]