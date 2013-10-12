json.array!(@zom_nouns) do |zom_noun|
  json.extract! zom_noun, :zom_noun
  json.url zom_noun_url(zom_noun, format: :json)
end