def split_numerals(string)
  string.chars
end

def convert_numerals(array)
  output = array.collect do |item|
    case item
      when "I" then 1
      when "V" then 5
      when "X" then 10
      when "L" then 50
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
  fail "Invalid numeral formulation: too many consecutive Is" if invalid_formulation?(string, "I", 4)
  fail "Invalid numeral formulation: too many consecutive Xs" if invalid_formulation?(string, "X", 4)
  fail "Invalid numeral formulation: too many consecutive Vs" if invalid_formulation?(string, "V", 2)
  fail "Invalid numeral formulation: too many consecutive Ls" if invalid_formulation?(string, "L", 2)
  string
end

def invalid_characters?(string)
  string.match(/A|B|E|F|G|H|J|K|N|O|P|Q|R|S|T|U|W|Y|Z|\s|\d|\W/)
end

def invalid_formulation?(string, letter, times)
  string.match(/#{letter}{#{times}}/)
end
