#!/usr/bin/env ruby

require 'titleize'
require 'erb'
require 'yaml'
require_relative File.join('lib','properties')
require_relative File.join('lib','decks')


prompts, answers = [Deck.new("prompts"), Deck.new("answers")]
puts [prompts.shuffle, answers.shuffle].join(": ")