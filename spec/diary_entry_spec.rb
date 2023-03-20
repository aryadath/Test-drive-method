require 'diary_entry'

RSpec.describe DiaryEntry do
  it 'takes into context title and contents' do
    diary_entry = DiaryEntry.new('the_title', 'the_contents')
    expect("#{diary_entry.title}, #{diary_entry.contents}").to eq "the_title, the_contents"
  end

  it 'takes into context title and contents' do
    diary_entry = DiaryEntry.new('show', 'sock')
    expect("#{diary_entry.title}, #{diary_entry.contents}").to eq "show, sock"
  end # to check efficiency of code

  describe '#count_words' do
    it 'counts the words and returns an an integer' do
      diary_entry =  DiaryEntry.new('the_title', 'insert some text')
      expect(diary_entry.count_words).to eq 3
    end
  end 

  describe '#count_words' do
    it 'counts the words and returns an an integer' do
      diary_entry =  DiaryEntry.new('the_title', 'i am coding today')
      expect(diary_entry.count_words).to eq 4
    end
  end 

  describe "#reading_time" do
    it 'calculate the words user can read per minute' do
      diary_entry = DiaryEntry.new('the_title', 'i am coding today')
      expect(diary_entry.reading_time(1)).to eq 4
    end
  end

  describe "#reading_time" do
    it 'calculate the words user can read per minute' do
      diary_entry = DiaryEntry.new('the_title', 'i am coding every single day')
      expect(diary_entry.reading_time(1)).to eq 6
    end
  end

  describe "#reading_chunk" do
    it 'gives the user a chunk with a given nuber of tume they should read it it in, 1st reading' do
      diary_entry = DiaryEntry.new('the title',("one two three four five six seven eight nine ten un deux trois quatre cinq six sept huit neuf dix ") * 1)
      expect(diary_entry.reading_chunk(2,1)).to eq 'one two'
    end
  end

  describe "#reading_chunk" do
    it 'gives the user a chunk with a given nuber of time they should read it it in' do
      diary_entry = DiaryEntry.new('the title',("one two three four five six seven eight nine ten un deux trois quatre cinq six sept huit neuf dix ") * 1)
      diary_entry.reading_chunk(2,1)
      expect(diary_entry.reading_chunk(2,1)).to eq 'three four'
    end
  end

  describe "#reading_chunk" do
    it 'restart from beginning' do
      diary_entry = DiaryEntry.new('the title',("one two three four five six seven eight nine ten un deux trois quatre cinq six sept huit neuf dix ") * 1)
      diary_entry.reading_chunk(8,2)
      diary_entry.reading_chunk(8,2)
      expect(diary_entry.reading_chunk(8,2)).to eq 'one two three four five six seven eight nine ten un deux trois quatre cinq six'
      
    end
  end
end