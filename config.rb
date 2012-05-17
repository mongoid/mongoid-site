# encoding: utf-8
Haml::Filters::CodeRay.encoder_options = { :css => :class }

page "/zh-cn/mongoid/*", layout: "zh-cn/layouts/mongoid"
page "/zh-cn/origin/*", layout: "zh-cn/layouts/origin"
page "/zh-cn/moped/*", layout: "zh-cn/layouts/moped"

# We've revamped the entire set URL structure from the previous, so setup
# the 301 redirects below.

page "/" do
  redirect "/zh-cn/mongoid/index.html", 301
end

page "/index.html" do
  redirect "/zh-cn/mongoid/index.html", 301
end

page "/docs.html" do
  redirect "/zh-cn/mongoid/docs/installation.html", 301
end

page "/docs/installation.html" do
  redirect "/zh-cn/mongoid/docs/installation.html", 301
end

page "/docs/installation/*" do
  redirect "/zh-cn/mongoid/docs/installation.html", 301
end

page "/docs/documents.html" do
  redirect "/zh-cn/mongoid/docs/documents.html", 301
end

page "/docs/documents/*" do
  redirect "/zh-cn/mongoid/docs/documents.html", 301
end

page "/docs/persistence.html" do
  redirect "/zh-cn/mongoid/docs/persistence.html", 301
end

page "/docs/persistence/*" do
  redirect "/zh-cn/mongoid/docs/persistence.html", 301
end

page "/docs/querying.html" do
  redirect "/zh-cn/mongoid/docs/querying.html", 301
end

page "/docs/querying/*" do
  redirect "/zh-cn/mongoid/docs/querying.html", 301
end

page "/docs/relations.html" do
  redirect "/zh-cn/mongoid/docs/relations.html", 301
end

page "/docs/relations/*" do
  redirect "/zh-cn/mongoid/docs/relations.html", 301
end

page "/docs/identity_map.html" do
  redirect "/zh-cn/mongoid/docs/identity_map.html", 301
end

page "/docs/callbacks.html" do
  redirect "/zh-cn/mongoid/docs/callbacks.html", 301
end

page "/docs/callbacks/*" do
  redirect "/zh-cn/mongoid/docs/callbacks.html", 301
end

page "/docs/validation.html" do
  redirect "/zh-cn/mongoid/docs/validation.html", 301
end

page "/docs/indexing.html" do
  redirect "/zh-cn/mongoid/docs/indexing.html", 301
end

page "/docs/extras.html" do
  redirect "/zh-cn/mongoid/docs/extras.html", 301
end

page "/docs/rails.html" do
  redirect "/zh-cn/mongoid/docs/rails.html", 301
end

page "/docs/rails/*" do
  redirect "/zh-cn/mongoid/docs/rails.html", 301
end

page "/docs/extensions.html" do
  redirect "/zh-cn/mongoid/index.html", 301
end

page "/docs/upgrading.html" do
  redirect "/zh-cn/mongoid/docs/upgrading.html", 301
end

page "/docs/contributing.html" do
  redirect "/zh-cn/mongoid/docs/contributing.html", 301
end

page "/performance.html" do
  redirect "/zh-cn/mongoid/docs/performance.html", 301
end

page "/credits.html" do
  redirect "/zh-cn/mongoid/links.html", 301
end

page "/links.html" do
  redirect "/zh-cn/mongoid/links.html", 301
end

configure :build do
  activate :minify_css
end

ignore "/en/layouts/mongoid.haml"
ignore "/en/layouts/moped.haml"
ignore "/en/layouts/origin.haml"
