require 'spec_helper.rb'

describe 'pig_latin' do
  it 'xyx' do
    expect(PigLatin.check_conditions('apple')).to eq('appleway')
    expect(PigLatin.check_conditions('glove')).to eq('oveglay')
    expect(PigLatin.check_conditions('yellow')).to eq('ellowyay')
    expect(PigLatin.check_conditions('rhythm')).to eq('ythmrhay')
    expect(PigLatin.check_conditions('shrimp')).to eq('impshray')
  end
end
