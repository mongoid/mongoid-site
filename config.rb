# encoding: utf-8
Encoding.default_external = "utf-8"

Haml::Filters::CodeRay.encoder_options = { :css => :class }
Haml::Template.options[:encoding] = "utf-8"

page "/en/mongoid/*", layout: "en/layouts/mongoid"
page "/en/origin/*", layout: "en/layouts/origin"
page "/en/moped/*", layout: "en/layouts/moped"

page "/zh-cn/mongoid/*", layout: "zh-cn/layouts/mongoid"
page "/zh-cn/origin/*", layout: "zh-cn/layouts/origin"
page "/zh-cn/moped/*", layout: "zh-cn/layouts/moped"

page "/zh-cn~/mongoid/*", layout: "zh-cn~/layouts/mongoid"
page "/zh-cn~/origin/*", layout: "zh-cn~/layouts/origin"
page "/zh-cn~/moped/*", layout: "zh-cn~/layouts/moped"

# We've revamped the entire set URL structure from the previous, so setup
# the 301 redirects below.

page "/" do
  redirect "/en/mongoid/index.html", 301
end

page "/index.html" do
  redirect "/en/mongoid/index.html", 301
end

page "/docs.html" do
  redirect "/en/mongoid/docs/installation.html", 301
end

page "/docs/installation.html" do
  redirect "/en/mongoid/docs/installation.html", 301
end

page "/docs/installation/*" do
  redirect "/en/mongoid/docs/installation.html", 301
end

page "/docs/documents.html" do
  redirect "/en/mongoid/docs/documents.html", 301
end

page "/docs/documents/*" do
  redirect "/en/mongoid/docs/documents.html", 301
end

page "/docs/persistence.html" do
  redirect "/en/mongoid/docs/persistence.html", 301
end

page "/docs/persistence/*" do
  redirect "/en/mongoid/docs/persistence.html", 301
end

page "/docs/querying.html" do
  redirect "/en/mongoid/docs/querying.html", 301
end

page "/docs/querying/*" do
  redirect "/en/mongoid/docs/querying.html", 301
end

page "/docs/relations.html" do
  redirect "/en/mongoid/docs/relations.html", 301
end

page "/docs/relations/*" do
  redirect "/en/mongoid/docs/relations.html", 301
end

page "/docs/identity_map.html" do
  redirect "/en/mongoid/docs/identity_map.html", 301
end

page "/docs/callbacks.html" do
  redirect "/en/mongoid/docs/callbacks.html", 301
end

page "/docs/callbacks/*" do
  redirect "/en/mongoid/docs/callbacks.html", 301
end

page "/docs/validation.html" do
  redirect "/en/mongoid/docs/validation.html", 301
end

page "/docs/indexing.html" do
  redirect "/en/mongoid/docs/indexing.html", 301
end

page "/docs/extras.html" do
  redirect "/en/mongoid/docs/extras.html", 301
end

page "/docs/rails.html" do
  redirect "/en/mongoid/docs/rails.html", 301
end

page "/docs/rails/*" do
  redirect "/en/mongoid/docs/rails.html", 301
end

page "/docs/extensions.html" do
  redirect "/en/mongoid/index.html", 301
end

page "/docs/upgrading.html" do
  redirect "/en/mongoid/docs/upgrading.html", 301
end

page "/docs/contributing.html" do
  redirect "/en/mongoid/docs/contributing.html", 301
end

page "/performance.html" do
  redirect "/en/mongoid/docs/performance.html", 301
end

page "/credits.html" do
  redirect "/en/mongoid/links.html", 301
end

page "/links.html" do
  redirect "/en/mongoid/links.html", 301
end

configure :build do
  activate :minify_css
  activate :smusher
end

ignore "/en/layouts/mongoid.haml"
ignore "/en/layouts/moped.haml"
ignore "/en/layouts/origin.haml"
ignore "/zh-cn/layouts/mongoid.haml"
ignore "/zh-cn/layouts/moped.haml"
ignore "/zh-cn/layouts/origin.haml"
ignore "/zh-cn~/layouts/mongoid.haml"
ignore "/zh-cn~/layouts/moped.haml"
ignore "/zh-cn~/layouts/origin.haml"
