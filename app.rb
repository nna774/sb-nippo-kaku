require 'sinatra/base'

class SBNippoKaku < Sinatra::Base
  get '/' do
    'nippo kakou!(/redirect/:project_name/:strftime)'
  end

  get '/redirect/:project_name/*' do
    format = params[:splat].join('/')
    redirect "https://scrapbox.io/#{params[:project_name]}/#{Time.now.strftime(format)}", 302
  end
end
