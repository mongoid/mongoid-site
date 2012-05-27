# encoding: utf-8
Encoding.default_external = "utf-8"

Haml::Filters::CodeRay.encoder_options = { :css => :class }
Haml::Template.options[:encoding] = "utf-8"

page "/en/mongoid/*", layout: "en/layouts/mongoid"
page "/en/origin/*", layout: "en/layouts/origin"
page "/en/moped/*", layout: "en/layouts/moped"

configure :build do
  activate :minify_css
end

ignore "/en/layouts/mongoid.haml"
ignore "/en/layouts/moped.haml"
ignore "/en/layouts/origin.haml"
ignore "/zh-cn/layouts/mongoid.haml"
ignore "/zh-cn/layouts/moped.haml"
ignore "/zh-cn/layouts/origin.haml"
