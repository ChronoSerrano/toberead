#!/usr/bin/env ruby

require 'titleize'
require 'erb'
require_relative 'characteristics'
require_relative 'decks'


prompts = Deck.new("prompts")
answers = Deck.new("answers")

puts [prompts.shuffle, answers.shuffle].join(": ")