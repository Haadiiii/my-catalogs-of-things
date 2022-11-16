require_relative '../item'

class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(on_spotify, publish_date)
    @on_spotify = on_spotify
    super(publish_date)
  end

  def can_be_archived?
    true if super && @on_spotify == 'true'
  end
end