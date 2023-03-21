require 'playlist'

RSpec.describe Playlist do
  it "created the object and adds the first track" do
    my_songs = Playlist.new
    my_songs.add('running man')
    result = my_songs.list
    expect(result).to eq ['running man']
  end
  it "created the object and adds two tracks" do
    my_songs = Playlist.new
    my_songs.add('running man')
    my_songs.add('all along the watch tower')
    result = my_songs.list
    expect(result).to eq ['running man', 'all along the watch tower']
  end
  it "created the object and adds two tracks and returns a formatted list" do
    my_songs = Playlist.new
    my_songs.add('running man')
    my_songs.add('all along the watch tower')
    result = my_songs.list_format
    expect(result).to eq ['1.running man', '2.all along the watch tower']
  end
end