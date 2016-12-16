require_relative '../file_io'

describe FileLiterator do

  it 'can parse a text file and output array' do
    expect(FileLiterator.read_text_file('otter_flashcard_data.txt')).to eq([["What is an otter's primary food source?", "fish"], ["True or false? Otters spend the majority of their time on land.", "true"], ["How many species of otters are there?", "13"], ["True of false? Otters are native to Australia.", "false"], ["True or false? Otters make and use tools.", "true"], ["In years, what is the average life span of an otter in the wild?", "10"]])
  end

end
