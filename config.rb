# Automatic sitemaps
# activate :slickmap

# Automatic image dimension calculations
# activate :automatic_image_sizes

# Helpers
helpers do

  def link_to_active(text, href, options = nil)
    if "/#{request.path}" == href
      if options
        class_options = options[:class] || ""
        class_options += " active"
        options[:class] = class_options
      else
        options = { class: "active" }
      end
    end
    link_to(text, href, options)
  end

  def render_title
    sections = request.path.split("/").map(&:capitalize)
    "Mongoid #{sections.second}: #{sections[2, sections.length].join(" - ")}"
  end

  def render_subsection?(section)
    request.path.include?(section)
  end
end

Haml::Filters::CodeRay.encoder_options = { :css => :class }

configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Shrink/smush PNG/JPEGs on build
  # activate :smush_pngs

  # Enable cache buster
  # activate :cache_buster

  # Generate ugly/obfuscated HTML from Haml
  # activate :ugly_haml

  # Or use a different image path
  # set :http_path, "/Content/images/"
end
