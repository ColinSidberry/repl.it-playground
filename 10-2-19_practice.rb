def min_umbrellas(weather)
  rain = ["rainy","thunderstorms"]
  umbrellas = 0
  
  weather.each.with_index do |condition,i|
    if rain.include?(condition)
      umbrellas += 1
      
      if (rain.include?(weather[i-1])) && (i != 0)
        umbrellas -= 1
      end
    end
    p umbrellas
  end
  return umbrellas
end
# rain = ["rainy","thunderstorms"]
# p rain.include?(rain[0-1])
#p min_umbrellas(["cloudy"])#, 0, "wrong answer for one value in weather array")
p min_umbrellas(["rainy", "rainy", "rainy", "rainy"])#, 1, "wrong answer for always rainy.")
#p min_umbrellas(["overcast", "rainy", "clear", "thunderstorms"])#, 2

# string = "/+1-541-754-3010 156 Alphand_St. <J Steeve>\n"

# p string.split("+1-541-754-3010"+ " ")


# def find_outlier(integers)
#  odd_count = 0
#  even_count = 0
 
#  #is the majority odd or even
#  (0...3).each do |i|
#     if integers[i] % 2 != 0
#      odd_count += 1
#     else
#       even_count += 1
#     end  
#  end 
 
#  #search for the outlier
#  integers.each do |num|
#     if (odd_count > even_count) && (num % 2 != 1)
#      return num
#     elsif (even_count > odd_count) && (num % 2 != 0)
#       return num
#     end
#   end 
# end

# p find_outlier([0, 1, 2])#, 1)
# p find_outlier([1, 2, 3])#, 2)
# p find_outlier([2,6,8,10,3])#, 3)

#loop through
#if ele not in a-z or 0-9 return false
#if you get through everything without meeting that condition return true
# def alphanumeric?(string)
#   alpha = ("a".."z").to_a
#   number = (1..9).to_a
#   if string == ""
#     return false
#   end
#   string.each_char do |ele|
#     if (!alpha.include?(ele.downcase)) && (!number.include?(ele.to_i))
#       return false
#     end
#   end 
#   return true
# end

# # p alphanumeric?("")
# p alphanumeric?("hello world_")
# p alphanumeric?("HELLOworld123")

# def alphabetized(s)
#   alphabet = ("a".."z").to_a
#   string = ""

#   alphabet.each do |alpha|
#     s.each_char do |char|
#       if alpha == char.downcase
#         string += char
#       end
#     end
#   end
#   return string
# end

# def alphabetized(s)
#   if s == nil
#     return ""
#   end
#   #removing spaces
#   s = s.split(" ").join("")
#   alpha = ("a".."z").to_a
#   string = []
#   string_i = []

#   j = 0
#   while string.length < s.length

#     s.each_char.with_index do |char,i|
#       if string[j] == nil
#         lowest = alpha.index(char.downcase)
#       else
#         lowest = alpha.index(string[j].downcase)
#       end  
#       curr = alpha.index(char.downcase)
#       if !string_i.include?(i)
#         if string[j] == nil
#           string[j] = char
#           string_i[j] = i
#         elsif (lowest > curr) #&& (!string_i.include?(i))
#           string[j] = char
#           string_i[j] = i
#         end
#   #       elsif (lowest == curr) && (i > 0)
#       end
#     end
#     j += 1
#   end
#   return string.join("")
# end

# p alphabetized("The Holy Bible") # "BbeehHilloTy"

# def wave(str)
#   array = []
#   str.each_char.with_index do |char,i|
#     if char != "" && i == 0
#       array << char.upcase + str[i+1..-1]
#     elsif char != "" && (i < str.length-1)
#       array << str[0...i] + char.upcase + str[i+1..-1]
#     elsif char != "" && i == str.length-1
#       array << str[0...i] + char.upcase
#     end
#   end
#   return array
# end

# ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
# p wave("hello")

#bumpy hash 
#smooth hash
# def color_probability(color, texture)
#   smooth = {"red" => 1.0, "yellow" => 1.0, "green" => 1.0}
#   bumpy = {"red" => 4.0, "yellow" => 2.0, "green" => 1.0}
#   if texture == "bumpy"
#     return (bumpy[color]/bumpy.values.sum).round(2)
#   elsif texture == "smooth"
#     return (smooth[color]/bumpy.values.sum).round(2)
#   end
#   # p "#{texture}"
#   # p bumpy[color]
#   #return texture[color]/texture.values.sum
# end

# p color_probability("red", "bumpy")


# def speak_num (string_num)
#   #create an array of unique nums
#   said_string = ""
#   count = 0
#   string_num.each_char.with_index do |num_char,i|
#     count += 1
#     if num_char != string_num[i+1]
#       said_string += count.to_s + num_char
#       count = 0
#     end
#   end
#   return said_string
# end

# p speak_num("1112231")

# def rps_bot(string) 
#   frequency = Hash.new(0)
#   counter_moves = ""
#   moves = ["r","p","s"]

#   string.each_char.with_index do |char,i|
#     if i != 0
#       #checking for a tie
#       values = frequency.values.sort.reverse
#       if values[0] == values[1]
#         counter_moves += "?"
#         frequency[char] += 1
#         next
#       end
      
#       #find the max value in our hash and play counter move
#       max = values.max
#       max_key = frequency.key(max)
#       cm_index = (moves.index(max_key) + 1) % 3
#       counter_moves += moves[cm_index]
#     else
#       counter_moves += "?"
#     end
#     frequency[char] += 1
#   end
#   return counter_moves
# end

# p rps_bot('ppp')
# p rps_bot('rrrr') #=> “?ppp”
# p rps_bot('srrr') #=> “?r?p”
# p rps_bot('rprs') #=> “?p?p”
# p rps_bot('psrpsr') #=> “?s??s?”
# p rps_bot('rpsssprrr') #=> “?p??rrrr?”
