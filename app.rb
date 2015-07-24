require 'bundler'
Bundler.require()


get '/' do
  json_index
end

def json_index
  {:name => 'Kate Shirley', :message => 'Welcome to my movie database! Navigate to /legally_blonde , /mean_girls , or /ten_things '}.to_json
end


def movie(name, release_year, description)
  {:name => name.to_s, :release_year => release_year.to_s, :description => description.to_s}.to_json
end

get '/legally_blonde' do
  movie('Legally Blonde', 2002, 'IMO, the only good lawyer movie. I also consider it real-world poetic justice that the actor that played Warner never did anything else.')
end

get '/mean_girls' do
  movie('Mean Girls', 2005, 'The only good thing Lindsay Lohan has done with her life.')

end

get '/ten_things' do
  movie('10 Things I Hate About You', 1999, 'The first movie that ever made me feel old.')
end
