# require modules here
require "yaml"

def load_library(path)
  library = YAML.load_file(path)
  
  library.each do |name, array|
    library[name] = {
      english: array[0],
      japanese: array[1]
    }
  end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning(path, emoticon)
  load_library(path)
end