# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".

def compress_str(str)
  new_str = ""
  i = 0
  while i < str.length
    char = str[i]
    count = 0
    while str[i] == char
      i += 1
      count += 1
    end
    new_str += (count > 1)? count.to_s + char : char
  end
  new_str
end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
