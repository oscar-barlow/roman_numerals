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

  it 'returns 56 when given LVI' do
    expect(roman_numerals("LVI")).to eq 56
  end

  it 'returns 100 when given C' do
    expect(roman_numerals("C")).to eq 100
  end

  it 'returns 500 when given D' do
    expect(roman_numerals("D")).to eq 500
  end

  it 'returns 1000 when given M' do
    expect(roman_numerals("M")).to eq 1000
  end

  describe 'error handling' do

    it 'returns an error if you give it a non-roman numeral' do
      message = "Invalid characters present"
      expect { roman_numerals("P") }.to raise_error(RuntimeError, message)
    end

    it 'returns an error if you give it >3 Is in a row' do
      message = "Invalid numeral formulation."
      expect{ roman_numerals("IIII") }.to raise_error(RuntimeError, message)
    end

    it 'returns an error if you give it >3 Xs in a row' do
      message = "Invalid numeral formulation."
      expect{ roman_numerals("XXXX") }.to raise_error(RuntimeError, message)
    end

    it 'returns an error if you give it >1 Vs in a row' do
      message = "Invalid numeral formulation."
      expect{ roman_numerals("VV") }.to raise_error(RuntimeError, message)
    end

    it 'returns an error if you give it >1 Ls in a row' do
      message = "Invalid numeral formulation."
      expect{ roman_numerals("LL") }.to raise_error(RuntimeError, message)
    end

    it 'returns an error if you give it >3 Cs in a row' do
      message = "Invalid numeral formulation."
      expect{ roman_numerals("CCCC") }.to raise_error(RuntimeError, message)
    end

    it 'returns an error if you give it >1 Ds in a row' do
      message = "Invalid numeral formulation."
      expect{ roman_numerals("DD") }.to raise_error(RuntimeError, message)
    end

    it "returns an error if you give it >3 Ms in a row" do
      message = "Invalid numeral formulation."
      expect { roman_numerals("MMMM") }.to raise_error(RuntimeError, message)
    end

    # it raises an error if I is subtracted from LDCM
    # it raises an error if X is subtracted from DM
    # it raises an error if you try and subtract V/L/D from anything

  end

end
