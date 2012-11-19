require File.expand_path(File.join(File.dirname(__FILE__), '..', 'test_helper.rb'))

class TestFetchTrailersWithExpansionEnabled < Test::Unit::TestCase

  def setup
    register_api_url_stubs
  end
  
  test "find with expanison enabled should return trailers" do
    movie = TmdbMovie.find(:id => 187)
    assert_not_nil movie.trailers
    assert_equal movie.trailers[0].source, 'SUXWAEX2jlg'
  end
end
