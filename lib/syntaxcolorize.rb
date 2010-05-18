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
          code = codify(data.inner_text, :ruby)
          data.inner_html = code
        end
        scan.css("code[@class*=language-]").each do |data|
          lang = /language-([a-z0-9\-_]+)/.match(data['class'])[1]
          code = codify(data.inner_text, lang)
          data.inner_html = code
        end
      end
      doc.to_s
    end

    def codify(str, lang)
      %{#{::CodeRay.scan(str, lang).html}}
    end

  end
end

