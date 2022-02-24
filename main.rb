require_relative 'stats_file'
require_relative 'test'

MyTest.start

stats = StatsFile.new("text.txt")
stats.printCountWord
stats.printFrequency