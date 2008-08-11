require 'youtube_g'
class Gimme < Application
  cache_page :index
  
  def index
    client = YouTubeG::Client.new
    @videos = client.videos_by(:max_results => 40, :query => "zz top gimme all your lov").videos
    render
  end
  
end
