require 'io/console'

module FileLiterator
  def self.read_text_file(filename)
    file_object = File.new(filename)
    lines = file_object.readlines
    lines = lines.delete_if {|index| index == "\n"}
    result = []
    i = 0
    while i < lines.length
      result << [lines[i].chomp, lines[i+1].chomp]
      i += 2
    end
   result
  end
end

FileLiterator.read_text_file('otter_flashcard_data.txt')
