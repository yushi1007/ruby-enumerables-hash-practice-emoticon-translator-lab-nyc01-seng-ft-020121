# require modules here

def load_library
  # code goes here
 emoticons = YAML.load_file(file_path)
  new_hash = {"get_meaning" => {}, "get_emoticon" => {}}
  emoticons.each do |key, value|
    new_hash["get_emoticon"][value[0]] = emoticons[key][1]
    new_hash["get_meaning"][value[1]] = key
  end
  new_hash
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