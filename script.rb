File.open("public/eng_common_words.txt", "r").each_line do |line|
  data = line.strip
  EngWord.create :word => data
end
