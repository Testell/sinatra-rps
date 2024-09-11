require "sinatra"
require "sinatra/reloader"

get("/") do
    erb(:home)
end

get("/rock") do
  computer_move = rand(1..3)

  @result = case computer_move
           when 1
             "They played rock. We tied."
           when 2
             "They played paper. We lost."
           else
             "They played scissors. We won."
           end


  erb(:rock)
end

get("/paper") do

  computer_move = rand(1..3)

  @result = case computer_move
           when 1
             "They played rock. We won."
           when 2
             "They played paper. We tied."
           else
             "They played scissors. We lost."
           end

  erb(:paper)
end

get("/scissors") do

  computer_move = rand(1..3)

  @result = case computer_move
           when 1
             "They played rock. We lost."
           when 2
             "They played paper. We won."
           else
             "They played scissors. We tied."
           end

  erb(:scissors)
end
