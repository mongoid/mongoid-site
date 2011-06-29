require 'sinatra'
require 'haml'   
require 'sass'
require "rdiscount"               
require 'haml-coderay'
require 'sinatra/content_for2'
require 'sinatra/static_assets'   

Haml::Filters::CodeRay.encoder_options = { :css => :class }

get '/?' do              
  if request.xhr?
    haml :"docs/introduction.html", :layout => false
  else    
    haml :"docs/introduction.html", :layout => :'docs_layout'
  end
end           

get '/docs/?' do
  if request.xhr?
    haml :"docs/introduction.html", :layout => false
  else                       
    haml :"docs/introduction.html", :layout => :'docs_layout'
  end               
end

get '/contributors' do
  if request.xhr?
    haml :"/contributors", :layout=>false
  else                   
    haml :"/contributors"
  end
end       

get '/stories' do
  if request.xhr?    
    haml :"/stories", :layout=>false
  else              
    haml :"/stories"
  end
end       

get '/docs/*' do       
  if request.xhr?
    body(haml(:"docs/#{params[:splat].join('/')}.html", :layout => false))    
  else
    haml :"docs/#{params[:splat].join('/')}.html", :layout => :'docs_layout'
  end  
end          

get '/stylesheet.css' do
  sass :"scss/stylesheet"
end       

get '/coderay.css' do
  css :"scss/coderay"
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