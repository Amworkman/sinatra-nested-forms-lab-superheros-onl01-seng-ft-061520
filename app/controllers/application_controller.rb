require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
     
        get '/' do
            erb :super_hero
        end

        post '/teams' do
            @teams = SuperTeam.new(params[:team])
        
            #binding.pry
             params[:team][:hero].each do |details|
                SuperHero.new(details)
             end

            @heroes = SuperHero.all

            erb :team
        end



end
