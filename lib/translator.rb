# require modules here

def load_library
  # code goes here
    emoticons = YAML.load_file(path)
	  emoticon_hash = Hash.new
	  
emoticon_hash["get_emoticon"] = Hash.new
emoticon_hash["get_meaning"] = Hash.new

emoticons.each do |english_word, emoticon_set|
    emoticon_hash["get_emoticon"][emoticon_set.first] = emoticon_set.last
    emoticon_hash["get_meaning"][emoticon_set.last] = english_word
  end
  p emoticon_hash
  emoticon_hash
end
end

def get_japanese_emoticon
  # code goes here
    emoticon_hash = load_library(path)
  result = emoticon_hash["get_emoticon"][emoticon]
  if result == nil
    result = "Sorry, that emoticon was not found" 
  end
  result
end

def get_english_meaning
  # code goes here
  emoticon_hash = load_library(path)
  result = emoticon_hash["get_meaning"][emoticon]
  if result == nil
    result = "Sorry, that emoticon was not found" 
  end
  result
end 	