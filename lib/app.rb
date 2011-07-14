require 'sinatra'
require 'haml'   
require 'sass'
require "rdiscount"               
require 'haml-coderay'
require 'sinatra/content_for2'
require 'sinatra/static_assets'   

Haml::Filters::CodeRay.encoder_options = { :css => :class }
       
["/", "/docs/?", '/docs/mongoid'].each do |path|
  get path do
    if request.xhr?
      haml :"docs/mongoid.html", :layout => false
    else
      haml :"docs/mongoid.html"   
    end
  end                
end

get '/docs/contributors' do
  if request.xhr?
    haml :"/docs/contributors.html", :layout=>false
  else                   
    haml :"/docs/contributors.html"
  end
end       

get '/stories' do
  if request.xhr?    
    haml :"/stories", :layout =>:'simple_doc_layout'
  else              
    haml :"/stories", :layout => :'docs_layout'
  end
end      

get '/docs/*' do
  if request.xhr?
    haml :"docs/#{params[:splat].join('/')}.html", :layout =>:'simple_doc_layout'    
  else
    haml :"docs/#{params[:splat].join('/')}.html", :layout => :'docs_layout'
  end  
end          

get '/:id.css' do
  sass :"scss/#{params[:id]}"
end 

module Haml
  module Helpers
    def partial(template, *args)
      template_array = template.to_s.split('/')
      template = template_array[0..-2].join('/') + "/_#{template_array[-1]}"
      options = args.last.is_a?(Hash) ? args.pop : {}
      options.merge!(:layout => false)
      if collection = options.delete(:collection) then
        collection.inject([]) do |buffer, member|
          buffer << haml(:"#{template}", options.merge(:layout =>
          false, :locals => {template_array[-1].to_sym => member}))
        end.join("\n")
      else
        haml(:"#{template}", options)
      end
    end
  end
end