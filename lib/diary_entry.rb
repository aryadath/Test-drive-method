class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @chunk = []
    @array_of_contents = @contents.split
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    @contents.split.length
  end

  def reading_time(wpm) 
     @contents.split.length / wpm
    # wpm is an integer representing the number of words the
                        # user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.
  end

  def reading_chunk(wpm, minutes) 
    # create vairbale for array with split words word_in_contents = @contents.split
    #hOW many words can the reader read
    # puts "array before passing is #{word_in_contents}"
    number_of_words = wpm * minutes
    # puts "number of words to be passed is #{number_of_words}"
    @chunk = @array_of_contents.shift(number_of_words)
    # puts "array after passing is #{word_in_contents}"
    # puts "chunk is #{chunk}"
    @array_of_contents = @contents.split if @array_of_contents.empty?
    @chunk.join(' ') 
    
  end
  def reading_chunk(wpm, minutes) 
    number_of_words = wpm * minutes
    @chunk = @array_of_contents.shift(number_of_words)
    @array_of_contents = @contents.split if @array_of_contents.empty?
    @chunk.join(' ') 
  end
    
    # `wpm` is an integer representing the number
                                  # of words the user can read per minute
                                  # `minutes` is an integer representing the
                                  # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
end

diary_entry = DiaryEntry.new('title',"one two three four five six seven eight nine ten un deux trois quatre cinq six sept huit neuf dix ")
p diary_entry.reading_chunk(9,1)
p diary_entry.reading_chunk(9,1)
p diary_entry.reading_chunk(9,1)
p diary_entry.reading_chunk(9,1)