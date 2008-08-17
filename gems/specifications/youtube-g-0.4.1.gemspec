Gem::Specification.new do |s|
  s.name = %q{youtube-g}
  s.version = "0.4.1"

  s.required_rubygems_version = nil if s.respond_to? :required_rubygems_version=
  s.authors = ["Shane Vitarana", "Walter Korman"]
  s.cert_chain = nil
  s.date = %q{2008-02-10}
  s.description = %q{youtube-g is a pure Ruby client for the YouTube GData API. It provides an easy way to access the latest YouTube video search results from your own programs. In comparison with the earlier Youtube search interfaces, this new API and library offers much-improved flexibility around executing complex search queries to obtain well-targeted video search results.  More detail on the underlying source Google-provided API is available at:  http://code.google.com/apis/youtube/overview.html  == FEATURES/PROBLEMS:  * Aims to be in parity with Google's YouTube GData API.  Core functionality is currently present -- work is in progress to fill in the rest.  == SYNOPSIS:  Create a client:  require 'rubygems' require 'youtube_g' client = YouTubeG::Client.new  Basic queries:  client.videos_by(:query => "penguin") client.videos_by(:tags => ['tiger', 'leopard']) client.videos_by(:categories => [:news, :sports]) client.videos_by(:categories => [:news, :sports], :tags => ['soccer', 'football']) client.videos_by(:user => 'liz')  Standard feeds:  client.videos_by(:most_viewed) client.videos_by(:top_rated, :time => :today)  Advanced queries (with boolean operators OR (either), AND (include), NOT (exclude)):  client.videos_by(:categories => { :either => [:news, :sports], :exclude => [:comedy] }, :tags => { :include => ['football'], :exclude => ['soccer'] })}
  s.email = %q{shanev@gmail.com}
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt", "TODO.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.txt", "Rakefile", "TODO.txt", "lib/youtube_g.rb", "lib/youtube_g/client.rb", "lib/youtube_g/logger.rb", "lib/youtube_g/model/author.rb", "lib/youtube_g/model/category.rb", "lib/youtube_g/model/contact.rb", "lib/youtube_g/model/content.rb", "lib/youtube_g/model/playlist.rb", "lib/youtube_g/model/rating.rb", "lib/youtube_g/model/thumbnail.rb", "lib/youtube_g/model/user.rb", "lib/youtube_g/model/video.rb", "lib/youtube_g/parser.rb", "lib/youtube_g/record.rb", "lib/youtube_g/request/video_search.rb", "lib/youtube_g/response/video_search.rb", "test/test_client.rb", "test/test_video.rb", "test/test_video_search.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://rubyforge.org/projects/youtube-g/}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new("> 0.0.0")
  s.rubyforge_project = %q{youtube-g}
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{Ruby client for the YouTube GData API}
  s.test_files = ["test/test_client.rb", "test/test_video.rb", "test/test_video_search.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 1

    if current_version >= 3 then
      s.add_runtime_dependency(%q<hoe>, [">= 1.5.0"])
    else
      s.add_dependency(%q<hoe>, [">= 1.5.0"])
    end
  else
    s.add_dependency(%q<hoe>, [">= 1.5.0"])
  end
end
