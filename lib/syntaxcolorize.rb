module Nanoc3::Filters
  class SyntaxColorize < Nanoc3::Filter
    identifiers :syntax_colorize
    def run(content, params={})
      require 'rubygems'
      require 'nokogiri'
      require 'coderay'
      doc = Nokogiri::HTML(content)
      doc.css('pre').each do |scan|
        scan.css("code").each do |data|
          data.inner_html = codify(data.inner_text, :ruby)
        end
        scan.css("code[@class*=language-]").each do |data|
          lang = /language-([a-z0-9\-_]+)/.match(data['class'])[1]
          data.inner_html = codify(data.inner_text, lang)
        end
      end
      doc.to_s
    end

    def codify(str, lang)
      %{#{::CodeRay.scan(str, lang).html}}
    end

  end
end

