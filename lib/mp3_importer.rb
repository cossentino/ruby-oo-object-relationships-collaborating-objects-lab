
require 'pry'
class MP3Importer

    attr_accessor :path

    def initialize(path)
        @path = path
    end

    def files
        d = Dir.new(self.path)
        mp3_files = d.children #.each {|file| file.slice! ".mp3"}
    end
    
    def import
        files.each {|file| Song.new_by_filename(file)}
    end
            
end


test = MP3Importer.new("./spec/fixtures/mp3s")
test.files