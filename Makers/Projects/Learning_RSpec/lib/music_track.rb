class Musictracker

    def initialize
        @list_tracks = []
    end

    def add(track)
        @list_tracks.include?(track) ? false : @list_tracks.push(track) 
    end


    def report
        return @list_tracks
    end
end