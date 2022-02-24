require "test/unit"
require_relative 'stats_file'

# class MyTest < Test::Unit::TestCase
class MyTest
  def self.start
    self.test1
  end

  def self.test1
    stats = StatsFile.new("testText.txt")
    if(stats.hashLength[1] != 1 || stats.hashLength[2] != 1 || stats.hashLength[3] != 2 || stats.countWord != 4)
      abort "Ошибка при тестировании 1"
    end
  end

  def self.test2
    stats = StatsFile.new("testText2.txt")
    if(stats.countWord != 0)
      abort "Ошибка при тестировании 2"
    end
  end

  def self.test3
    stats = StatsFile.new("testText3.txt")
    if(stats.hashLength[1] !=1 || stats.countWord != 1)
      abort "Ошибка при тестировании 3"
    end
  end
end