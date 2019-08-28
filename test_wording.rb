require 'minitest/autorun'

class TestLinks < Minitest::Test
  
  def test_alex
    posts = "../blog/content/post/*.md"
    puts `alex #{posts}`
  end
end