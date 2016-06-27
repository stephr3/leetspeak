# ================================FrontEnd==========================================
require('sinatra')
# require('sinatra-contrib')

get('/') do
  erb(:form)
end

get('/result') do
  @sentence = params.fetch('sentence').leetspeak
  erb(:result)
end
# ================================BackEnd===========================================
class String
  define_method(:leetspeak) do
    words_array = self.split()
    words_array.each_index() do |i|
      letters_array = words_array[i].split('')
      letters_array.each_index() do |idx|
        if letters_array[idx].==('e') || letters_array[idx].==('E')
          letters_array[idx] = '3'
        elsif letters_array[idx].==('o') || letters_array[idx].==('O')
          letters_array[idx] = '0'
        elsif letters_array[idx].==('I')
          letters_array[idx] = '1'
        elsif idx.!=(0) && (letters_array[idx].==('s') || letters_array[idx].==('S'))
          letters_array[idx] = 'z'
        end
      end
      words_array[i] = letters_array.join()
    end
    words_array.join(' ')
  end
end
