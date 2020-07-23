require 'bundler'
Bundler.require
$:.unshift File.expand_path("./../lib/app", __FILE__)

require 'board'
require 'board_case'
require 'player'
require 'game'

def play_again
  puts "Voulez-vous faire une autre partie? Si c'est le cas, tape oui"
  print "> "
  answer = gets.chomp
  if answer == "oui"
    return true
  else return false
  end 
end 

def perform
  Game.new.perform
  puts ""
  while play_again == true
    Game.new.perform
  end
  puts ""
  puts "Merci d'avoir joué !"
end 

perform

