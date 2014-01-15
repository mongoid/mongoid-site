def write_redirect(page)
  %{<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
  <head>
    <meta content="0; url=#{page}" http-equiv="Refresh"/>
  </head>
</html>}
end

MAPPINGS = {
  "/docs.html" => "/en/mongoid/docs/installation.html",
  "/docs/installation.html" => "/en/mongoid/docs/installation.html",
  "/docs/installation/configuration.html" => "/en/mongoid/docs/installation.html",
  "/docs/installation/languages.html" => "/en/mongoid/docs/installation.html",
  "/docs/installation/replication.html" => "/en/mongoid/docs/installation.html",
  "/docs/documents.html" => "/en/mongoid/docs/documents.html",
  "/docs/documents/fields.html" => "/en/mongoid/docs/documents.html",
  "/docs/documents/dynamic.html" => "/en/mongoid/docs/documents.html",
  "/docs/documents/localized.html" => "/en/mongoid/docs/documents.html",
  "/docs/documents/access.html" => "/en/mongoid/docs/documents.html",
  "/docs/documents/dirty.html" => "/en/mongoid/docs/documents.html",
  "/docs/documents/inheritance.html" => "/en/mongoid/docs/documents.html",
  "/docs/persistence.html" => "/en/mongoid/docs/persistence.html",
  "/docs/persistence/standard.html" => "/en/mongoid/docs/persistence.html",
  "/docs/persistence/atomic.html" => "/en/mongoid/docs/persistence.html",
  "/docs/persistence/safe_mode.html" => "/en/mongoid/docs/persistence.html",
  "/docs/querying.html" => "/en/mongoid/docs/querying.html",
  "/docs/querying/criteria.html" => "/en/mongoid/docs/querying.html",
  "/docs/querying/modification.html" => "/en/mongoid/docs/querying.html",
  "/docs/querying/finders.html" => "/en/mongoid/docs/querying.html",
  "/docs/querying/scopes.html" => "/en/mongoid/docs/querying.html",
  "/docs/relations.html" => "/en/mongoid/docs/relations.html",
  "/docs/relations/embedded.html" => "/en/mongoid/docs/relations.html",
  "/docs/relations/embedded/1-n.html" => "/en/mongoid/docs/relations.html",
  "/docs/relations/embedded/1-1.html" => "/en/mongoid/docs/relations.html",
  "/docs/relations/referenced.html" => "/en/mongoid/docs/relations.html",
  "/docs/relations/referenced/1-n.html" => "/en/mongoid/docs/relations.html",
  "/docs/relations/referenced/1-1.html" => "/en/mongoid/docs/relations.html",
  "/docs/relations/referenced/n-n.html" => "/en/mongoid/docs/relations.html",
  "/docs/relations/metadata.html" => "/en/mongoid/docs/relations.html",
  "/docs/relations/validations.html" => "/en/mongoid/docs/relations.html",
  "/docs/relations/nested_attributes.html" => "/en/mongoid/docs/relations.html",
  "/docs/identity_map.html" => "/en/mongoid/docs/identity_map.html",
  "/docs/callbacks.html" => "/en/mongoid/docs/callbacks.html",
  "/docs/validation.html" => "/en/mongoid/docs/validation.html",
  "/docs/indexing.html" => "/en/mongoid/docs/indexing.html",
  "/docs/extras.html" => "/en/mongoid/docs/extras.html",
  "/docs/rails.html" => "/en/mongoid/docs/rails.html",
  "/docs/rails/multi_parameter_attributes.html" => "/en/mongoid/docs/rails.html",
  "/docs/rails/rake.html" => "/en/mongoid/docs/rails.html",
  "/docs/rails/railties.html" => "/en/mongoid/docs/rails.html",
  "/docs/extensions.html" => "/en/mongoid/index.html",
  "/docs/upgrading.html" => "/en/mongoid/docs/upgrading.html",
  "/docs/contributing.html" => "/en/mongoid/docs/contributing.html",
  "/performance.html" => "/en/mongoid/docs/performance.html",
  "/credits.html" => "/en/mongoid/links.html",
  "/links.html" => "/en/mongoid/links.html"
}

task :generate do
  system "bundle exec middleman build"

  puts "Generating 301 meta redirects."

  folders = ['docs', 'docs/installation', 'docs/documents', 'docs/persistence', 'docs/querying',
    'docs/relations', 'docs/relations/embedded', 'docs/relations/referenced', 'docs/rails']

  folders.each do |dir|
    Dir.mkdir("build/#{dir}") unless Dir.exists?("build/#{dir}")
  end

  MAPPINGS.each_pair do |old, new|
    File.open("build#{old}", "w") do |file|
      puts "Writing build#{old}"
      file.write(write_redirect(new))
    end
  end
end

task :default => :generate
