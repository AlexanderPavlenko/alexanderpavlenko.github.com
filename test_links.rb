require 'minitest/autorun'
require 'net/http'
require 'uri'
require 'pp'

class TestLinks < Minitest::Test
  
  def links
    @links ||= begin
      @pages = Dir[File.expand_path('../master/**/*.html', __dir__)]
      @pages.flat_map do |page|
        URI.extract(File.read(page))
      end.uniq.select do |link|
        link =~ %r{^https?://.+}
      end.sort.map do |link|
        URI.parse(link)
      end
    end
  end

  def test_each_link_returns_200
    results = Hash.new { |h, k| h[k] = [] }
    links.each do |link|
      puts "Testing: #{link}"
      response = Net::HTTP.start(link.host, link.port, use_ssl: link.scheme == 'https') do |http|
        http.get link.request_uri, 'User-Agent' => 'Mozilla/5.0 (X11; Linux i686; rv:64.0) Gecko/20100101 Firefox/64.0'
      end
      results[response.code] << link
    rescue => ex
      results[ex] << link
    end
    pp results
  end
end