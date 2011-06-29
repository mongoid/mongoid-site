require 'sinatra'
require 'haml'   
require 'sass'
require "rdiscount"
require 'haml-coderay'
require 'sinatra/content_for2'
require 'sinatra/static_assets'

get '/?' do
  haml :index
end           

get '/docs/?' do           
  haml :"docs/index.html", :layout => :'docs_layout'
end       

get '/docs/*/?' do
  haml :"docs/#{params[:splat].join('/')}.html", :layout => :'docs_layout'
end          

get '/stylesheet.css' do
  sass :"scss/stylesheet"
end       

get '/coderay.css' do
  css :"scss/coderay"
end