# require modules here
require "yaml"
def load_library
  # code goes here
  emoticon_lib = {'get_meaning' => {}, 'get_emoticon' => {}}

  emoticons.each do |meaning, value|
    english = value[0]
    japanese = value[1]
    emoticon_lib['get_meaning'][japanese] = meaning
    emoticon_lib['get_emoticon'][english] = japanese
  end
  emoticon_lib
end	end

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