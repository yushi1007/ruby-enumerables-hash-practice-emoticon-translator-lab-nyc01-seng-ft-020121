# require modules here

require "yaml"
def load_library
  # code goes here
  emoticons = YAML.load_file(path)
  lookup = {}
  lookup[:get_meaning] = {}
  lookup[:get_emoticon] = {}

  emoticons.each do |word, pair|
    japanese = pair[1]
    american = pair[0]

    lookup[:get_meaning][japanese] = word
    lookup[:get_emoticon][american] = japanese
  end

  lookup
end	

def get_japanese_emoticon
  # code goes here
  lookup = load_library(path)
  if lookup[:get_emoticon][emoticon]
    return lookup[:get_emoticon][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end	

def get_english_meaning
  # code goes here
  lookup = load_library(path)
  if lookup[:get_meaning][emoticon]
    return lookup[:get_meaning][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end 