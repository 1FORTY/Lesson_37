f = File.open 'file.txt', 'r'

  hh = {}

  def add_to_hash word
    puts word
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
