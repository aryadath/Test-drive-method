class Playlist
  def initialize
    @tracks = []
  end

  def add(track)
    @tracks << track
  end

  def list
    return @tracks
  end

  def list_format
    track_number = 1
    result_list = []
    for track in @tracks
        result_list << "#{track_number}.#{track}"
        track_number += 1
    end
    return result_list
  end
end