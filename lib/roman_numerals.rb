def split_numerals(string)
  string.chars
end

def convert_numerals(array)
  output = array.collect do |item|
    case item
      when "I" then 1
      when "V" then 5
      when "X" then 10
    end
  end
  output
end

def add_numbers(array)
  array.reduce(:+)
end

def roman_numerals(string)
  validate(string)
  array = split_numerals(string)
  converted_numbers = convert_numerals(array)
  add_numbers(converted_numbers)
end

def validate(string)
  fail 'Invalid characters present' if invalid_characters?(string)
  fail "Invalid numeral formulation" if invalid_formulation?(string)
  string
end

def invalid_characters?(string)
  string.match(/A|B|E|F|G|H|J|K|N|O|P|Q|R|S|T|U|W|Y|Z|\s|\d|\W/)
end

def invalid_formulation?(string)
  string.match(/IIII/)
end
