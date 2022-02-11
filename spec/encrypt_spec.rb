#RSPEC
require_relative "../encrypt"

describe "#encrypt" do
  it 'should return an empty string when passed in an empty string' do
    returned_statement = encrypt("")
    expect(returned_statement).to eq("")
  end

  it 'should encrypt the given string' do
    returned_statement = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
    expect(returned_statement).to eq('QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD')
  end
end