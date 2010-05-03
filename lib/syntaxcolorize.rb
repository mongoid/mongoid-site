module Nanoc3::Filters
  class SyntaxColorize < Nanoc3::Filter
    identifiers :syntax_colorize
    def run(content, params={})
      require 'rubygems'
      require 'coderay'
      require 'nokogiri'
      doc = Nokogiri::HTML(content)
      doc.css('pre code[@class*=language-]').each do |e|
        # Get text and language
        code = e.inner_text
        lang = /language-([a-z0-9\-_]+)/.match(e['class'])[1]
        # Process
        e.inner_html = ::CodeRay.scan(code, lang).html(params)
      end
      doc.to_s
    end
  end
end

