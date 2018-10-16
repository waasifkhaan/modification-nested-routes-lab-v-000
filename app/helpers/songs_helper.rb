module SongsHelper

  def artist_id_field(song)
    if song.artist.nil?
      select_tag "song[artist_id]", options_from_collection_for_select(Artitst.all, :id, :name)
    else
      hidden_field_tag "song[artist_id]", sont.artist_id
    end
  end

end
