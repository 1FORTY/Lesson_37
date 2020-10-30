f = File.open 'file.txt', 'r'

  @hh = {}

  def add_to_hash word
    word.downcase!

    cnt = @hh[word].to_i
    cnt += 1

    @hh[word] = cnt
  end

  f.each_line do |line|
    arr = line.split(/\s|\n|\.|\,|\-|\\|\"/) # \s - space, | - or, \n - new line
    
    arr2 = []
    for item in arr
      arr2 << item if item.length > 0
    end


    arr2.each { |word| add_to_hash word }
  end

f.close

@hh.each do |k, v|
  puts "Key: #{k}, Value: #{v}"
end
