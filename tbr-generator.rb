#!/usr/bin/env ruby

require 'titleize'
require 'erb'
require_relative File.join('lib','characteristics')
require_relative File.join('lib','decks')


prompts, answers = [Deck.new("prompts"), Deck.new("answers")]
# answers = 

puts [prompts.shuffle, answers.shuffle].join(": ")