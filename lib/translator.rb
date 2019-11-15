require 'pry'
require "yaml"# require modules here

def load_library(file_path)
  # code goes here
  emotes = YAML.load_file(file_path)
  result = {"get_meaning" => {}, "get_emoticon" => {}}
  emotes.each do |meaning, emoticons|
     
    result["get_meaning"][emoticons[1]] = meaning 
    result["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  return result
end

def get_japanese_emoticon(file_path = nil, emoticon)
  # code goes here
  
  emotes = YAML.load_file(file_path)
  if emotes.include?(emoticon)
    return emotes["get_emoticon"][emoticon]
  end
end

def get_english_meaning
  # code goes here
end