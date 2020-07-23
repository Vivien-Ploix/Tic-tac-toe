require 'bundler'
Bundler.require
$:.unshift File.expand_path("./../lib/app", __FILE__)

require 'board'
require 'board_case'
require 'player'
require 'game'



Game.new.perform