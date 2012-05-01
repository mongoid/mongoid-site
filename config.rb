Haml::Filters::CodeRay.encoder_options = { :css => :class }

page "/mongoid/*", layout: "mongoid"
page "/origin/*", layout: "origin"
page "/moped/*", layout: "moped"

# We've revamped the entire set URL structure from the previous, so setup
# the 301 redirects below.

page "/docs.html" do
  redirect "/mongoid/docs/installation.html", 301
end

page "/docs/installation.html" do
  redirect "/mongoid/docs/installation.html", 301
end

page "/docs/installation/*" do
  redirect "/mongoid/docs/installation.html", 301
end

page "/docs/documents.html" do
  redirect "/mongoid/docs/documents.html", 301
end

page "/docs/documents/*" do
  redirect "/mongoid/docs/documents.html", 301
end

page "/docs/persistence.html" do
  redirect "/mongoid/docs/persistence.html", 301
end

page "/docs/persistence/*" do
  redirect "/mongoid/docs/persistence.html", 301
end

page "/docs/querying.html" do
  redirect "/mongoid/docs/querying.html", 301
end

page "/docs/querying/*" do
  redirect "/mongoid/docs/querying.html", 301
end

page "/docs/relations.html" do
  redirect "/mongoid/docs/relations.html", 301
end

page "/docs/relations/*" do
  redirect "/mongoid/docs/relations.html", 301
end

page "/docs/identity_map.html" do
  redirect "/mongoid/docs/identity_map.html", 301
end

page "/docs/callbacks.html" do
  redirect "/mongoid/docs/callbacks.html", 301
end

page "/docs/callbacks/*" do
  redirect "/mongoid/docs/callbacks.html", 301
end

page "/docs/validation.html" do
  redirect "/mongoid/docs/validation.html", 301
end

page "/docs/indexing.html" do
  redirect "/mongoid/docs/indexing.html", 301
end

page "/docs/extras.html" do
  redirect "/mongoid/docs/extras.html", 301
end

page "/docs/rails.html" do
  redirect "/mongoid/docs/rails.html", 301
end

page "/docs/rails/*" do
  redirect "/mongoid/docs/rails.html", 301
end

page "/docs/extensions.html" do
  redirect "/mongoid/index.html", 301
end

page "/docs/upgrading.html" do
  redirect "/mongoid/docs/upgrading.html", 301
end

page "/docs/contributing.html" do
  redirect "/mongoid/docs/contributing.html", 301
end

page "/performance.html" do
  redirect "/mongoid/docs/performance.html", 301
end

page "/credits.html" do
  redirect "/mongoid/links.html", 301
end

page "/links.html" do
  redirect "/mongoid/links.html", 301
end

configure :build do
  activate :minify_css
  activate :minify_javascript
end
