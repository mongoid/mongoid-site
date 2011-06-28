require 'sinatra'
require 'haml'   
require "rdiscount"
require 'haml-coderay'

get '/' do
  haml :index
end           

get '/docs' do           
  haml :"docs/index.html", :layout => :'docs/layout'
end       

get '/docs/:id' do
  haml :"docs/#{params[:id]}.html"
end