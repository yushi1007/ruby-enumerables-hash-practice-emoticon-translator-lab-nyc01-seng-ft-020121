# require modules here
require "yaml"
require "pry"

def load_library
  # code goes here
 emoticons = YAML.load_file(file_path)

  new_hash = {
   'get_meaning' => {},
   'get_emoticon' => {}
 }

  emoticons.each do |keyvalue, emo|

    english = emo[0]
   japanese = emo[1]

   new_hash['get_meaning'][japanese] = keyvalue
   new_hash['get_emoticon'][english] = japanese

  end

  new_hash
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

def get_english_meaning(path, emoticons)
  # code goes here
 emoticons = load_library(file_path)

  message = "Sorry, that emoticon was not found"

  translation = emoticons["get_emoticon"]


  translation.each do |key, value|

    if key == emoticon
       return value

  end     
 end
 message
end	

