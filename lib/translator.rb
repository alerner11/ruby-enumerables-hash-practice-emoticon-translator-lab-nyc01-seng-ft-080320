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
  organized_library = load_library(path)
  
  organized_library.each do |name, language|
    organized_library[name].each do |language, representation|
      if emoticon == representation
        return name
      end
    end
  end
end