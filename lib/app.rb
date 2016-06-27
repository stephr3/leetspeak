class String
  define_method(:leetspeak) do
    words_array = self.split('')
    words_array.each_index() do |idx|
      if words_array[idx].==('e') || words_array[idx].==('E')
        words_array[idx] = '3'
      elsif words_array[idx].==('o') || words_array[idx].==('O')
        words_array[idx] = '0'
      elsif words_array[idx].==('I')
        words_array[idx] = '1'
      end
    end
    words_array.join()
  end
end
