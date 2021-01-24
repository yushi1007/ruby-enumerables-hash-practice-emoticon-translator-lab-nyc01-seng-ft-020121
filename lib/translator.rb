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
  emoticon_lib = load_library(emoticon_file)
  japanese_emoticon = emoticon_lib['get_emoticon'][emoticon]
  japanese_emoticon ? japanese_emoticon : 'Sorry, that emoticon was not found'
end	end

def get_english_meaning
  # code goes here
  emoticon_lib = load_library(emoticon_file)
  english_meaning = emoticon_lib['get_meaning'][emoticon]
  english_meaning ? english_meaning : 'Sorry, that emoticon was not found'
end	