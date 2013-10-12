json.array!(@noun_phrases) do |noun_phrase|
  json.extract! noun_phrase, :noun_phrase
  json.url noun_phrase_url(noun_phrase, format: :json)
end