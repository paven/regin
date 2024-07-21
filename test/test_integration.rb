require 'minitest/autorun'
require 'minitest/focus'
require 'minitest/spec'
# require 'minitest-rails'
require 'nokogiri'
require 'ap'

class Tests < Minitest::Test
  # make sure we're not using files with .html, but instead index.html in a directory, for cloudfront support
  def test_urls
    assert File.exist?('_site/kosmologi/')
  end

#   code from the guide... that i save to see if i can learn from it.
#   # verify twitter cards (must use domain name etc)
#   def test_meta
#     doc = Nokogiri::HTML(IO.read('_site/2018/10/11/getting-feedback-from-a-kiba-etl-job/index.html'))
#     data = doc.search('meta[name^="twitter"]').inject({}) do |r, e|
#       r[e['name']] = e['content'] ; r
#     end
#     assert_equal 'summary_large_image', data['twitter:card']
#     assert_equal '@thibaut_barrere', data['twitter:site']
#     assert_equal 'Get feedback from Kiba ETL jobs', data['twitter:title']
#     assert data['twitter:description'].start_with?('Learn how to write Kiba jobs')
#     assert_match /\Ahttp:\/\/thibautbarrere\.com\/assets\/programmatic\-feedback\-/, data['twitter:image']
#   end
#
#   # ensure the sitemap uses the absolute domain name
#   def test_sitemap
#     doc = Nokogiri::XML(IO.read('_site/sitemap.xml'))
#     url = doc.xpath('/aws:urlset/aws:url/aws:loc', 'aws' => 'http://www.sitemaps.org/schemas/sitemap/0.9').last
#     assert_equal 'http://thibautbarrere.com/', url.text
#   end
#
#   # more full url checking
#   def test_tweet_buttons
#     expected_url = 'http://thibautbarrere.com/2018/10/11/ruby-kaigi-2018-etl/'
#
#     doc = Nokogiri::HTML(IO.read('_site/2018/10/11/ruby-kaigi-2018-etl/index.html'))
#     url = doc.search('.twitter-share-button').first['data-url']
#     assert_equal expected_url, url
#
#     url = doc.search('.tweet').first['href']
#     assert_equal "http://twitter.com/share?via=thibaut_barrere&url=#{expected_url}&text=Ruby Kaigi 2018 talk - Kiba ETL data pipelines", url
#   end
#
#   # I rarely visit the RSS hidden, so test it as well
#   def test_rss
#     doc = Nokogiri::XML(IO.read('_site/rss.xml'))
#     links = doc.xpath('/aws:feed/aws:link', 'aws' => 'http://www.w3.org/2005/Atom')
#     assert_equal 2, links.size
#     assert_equal({
#       'type' => 'application/atom+xml',
#       'href' => 'http://thibautbarrere.com/rss.xml',
#       'rel' => 'self'
#     }, links[0].to_h)
#     assert_equal({
#       'type' => 'text',
#       'href' => 'http://thibautbarrere.com/',
#       'rel' => 'alternate'
#     }, links[1].to_h)
#   end
#
#   def test_robots_txt
#     doc = IO.read('_site/robots.txt').strip
#     assert_equal 'Sitemap: http://thibautbarrere.com/sitemap.xml', doc
#   end


end
