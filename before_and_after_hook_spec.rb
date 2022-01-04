# This is about 'before' and 'after' hooks

RSpec.describe 'before and after hooks' do
  before(:example) do
    puts 'Before example;'
  end
  after(:example) do
    puts 'After example'
  end
  it 'is just a example' do
    a = 4
    b = 5
    c = a + b
    expect(c).to eq(9)
  end
  it ('is another example') do
    expect(3 * 3).to eq(9)
  end

end