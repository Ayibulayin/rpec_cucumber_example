# This is about Array Assertion

RSpec.describe Array do
  it 'should not contain any elements on init' do
    expect(subject.length).to eq(0)
    subject.push('apple')
    expect(subject.length).to eq(1)
  end
end