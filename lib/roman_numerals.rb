ROMAN_NUMERALS = {
  :I => 1,
  :V => 5,
  :X => 10,
  :L => 50,
  :C => 100,
  :D => 500,
  :M => 1000,
}

INVALID_FORMULATIONS = {
  :I => 4,
  :V => 2,
  :X => 4,
  :L => 2,
  :C => 4,
  :D => 2,
  :M => 4,
}

def split_numerals(string)
  string.chars
end

def convert_numerals(array)
  output = array.collect do |item|
    ROMAN_NUMERALS[item.to_sym]
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
  invalid_formulation?(string)
  string
end

def invalid_characters?(string)
  string.match(/A|B|E|F|G|H|J|K|N|O|P|Q|R|S|T|U|W|Y|Z|\s|\d|\W/)
end

def invalid_formulation?(string)
  fail "Invalid numeral formulation." if INVALID_FORMULATIONS.any? { |numeral, times| string.match(/#{numeral}{#{times}}/) }
end
