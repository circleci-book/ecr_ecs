require 'open-uri'
require 'nokogiri'

def test_html(url)
  charset = 'utf-8'
  html = open(url) { |f| f.read }
  doc = Nokogiri::HTML.parse(html, nil, charset)

  h1_text = doc.css('h1').first.inner_text
  alt_tag = doc.css('img').first['alt']

  if h1_text != alt_tag
    raise "Test failed: #{h1_text} and #{alt_tag} should match but they don't!"
  end
end

url = ARGV[0]
test_html(url)
