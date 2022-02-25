class StatsFile
  attr_reader :countWord, :hashLength

  def initialize(path)
    stringFromFile = IO.read(path)
    arrayWord = stringFromFile.split(/[^[-a-zA-Zа-яА-ЯёЁ]]+/)
    arrayWord.delete('-')
    @countWord = arrayWord.length

    @hashLength = Hash.new
    @hashLength.default = 0
    arrayWord.each do |word|
      n = word.length
      @hashLength[n] += 1
    end
  end

  def printCountWord
    puts "Общее кол-во слов: #{countWord}"
  end

  def printFrequency
    @hashLength.each do |key, value|
      puts "Частота слов длиной #{key}: #{(value.fdiv countWord).round(3)}"
    end
  end
end
