module Nanoc3::Filters
  class SyntaxColorize < Nanoc3::Filter
    identifiers :syntax_colorize
    def run(content, params={})
      require 'rubygems'
      require 'coderay'
      require 'nokogiri'
      doc = Nokogiri::HTML(content)
      doc.css('pre').each do |e|
        e.css("code").each do |e|
          code = e.inner_text
          e.inner_html = ::CodeRay.scan(code, "ruby").html(params)
        end
        e.css("code[@class*=language-]").each do |e|
          code = e.inner_text
          lang = /language-([a-z0-9\-_]+)/.match(e['class'])[1]
          e.inner_html = ::CodeRay.scan(code, lang).html(params)
        end
      end
      doc.to_s
    end
  end
end

