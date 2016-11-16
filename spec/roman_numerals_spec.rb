require 'roman_numerals'

describe "Roman Numerals" do

  it 'returns 1 when given I' do
    expect(roman_numerals("I")).to eq 1
  end

  it 'returns 5 when given V' do
    expect(roman_numerals("V")).to eq 5
  end

  it 'returns 2 when given II' do
    expect(roman_numerals("II")).to eq 2
  end

  it 'returns 10 when given X' do
    expect(roman_numerals("X")).to eq 10
  end

  it 'returns 6 when given VI' do
    expect(roman_numerals("VI")).to eq 6
  end

  it 'returns 50 when given L' do
    expect(roman_numerals("L")).to eq 50
  end

  describe 'error handling' do

    it 'returns an error if you give it a non-roman numeral' do
      message = "Invalid characters present"
      expect { roman_numerals("P") }.to raise_error(RuntimeError, message)
    end

    it 'returns an error if you give it >3 Is in a row' do
      message = "Invalid numeral formulation: too many consecutive Is"
      expect{ roman_numerals("IIII") }.to raise_error(RuntimeError, message)
    end

    it 'returns an error if you give it >3 Xs in a row' do
      message = "Invalid numeral formulation: too many consecutive Xs"
      expect{ roman_numerals("XXXX") }.to raise_error(RuntimeError, message)
    end

    it 'returns an error if you give it >1 Vs in a row' do
      message = "Invalid numeral formulation: too many consecutive Vs"
      expect{ roman_numerals("VV") }.to raise_error(RuntimeError, message)
    end

    # it raises an error if I/X/C/M come 3 times in a row
    # it raises an error if V/L/D are repeated
    # it raises an error if I is subtracted from LDCM
    # it raises an error if X is subtracted from DM
    # it raises an error if you try and subtract V/L/D from anything

  end

end
