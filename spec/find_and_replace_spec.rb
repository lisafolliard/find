require('rspec')
require('find_and_replace')

describe('String#find_and_replace') do

  it('takes a single word string and replaces it with a designated string') do
    expect("onion".find_and_replace("onion","ham")).to(eq("ham"))
  end

end
