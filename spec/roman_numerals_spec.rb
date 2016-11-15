require 'roman_numerals'

describe RomanNumerals do
  subject(:romannumerals) {described_class.new}

  it 'returns 1 when given I' do
    expect(subject.convert("I")).to eq 1
  end

  it 'returns 5 when given V' do
    expect(subject.convert("V")).to eq 5
  end


  describe 'error handling' do

    # it raises an error if I/X/C/M come 3 times in a row
    # it raises an error if V/L/D are repeated
    # it raises an error if I is subtracted from LDCM
    # it raises an error if X is subtracted from DM
    # it raises an error if you try and subtract V/L/D from anything

  end


end
