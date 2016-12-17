require 'io/console'

module FileLiterator
  def self.read_text_file(filename)
    file_object = File.new(filename)

    # Get lines without blank lines
    lines = get_lines(file_object)

    # Combine each odd and even line into an array of two elements
    lines.each_with_index do |line, idx|
      lines[idx] = [line.chomp, lines[idx +1 ].chomp] if idx.even?
    end

    # Discard the even-numbered lines
    lines.select.each_with_index { |line, idx| idx.even? }
  end

  # OUTPUT: ARRAY of lines without blanks
  def self.get_lines(file_object)
    file_object.readlines.delete_if {|line| line == "\n"}
  end

end
