# This is about overwriting let method

class Programminglanguage
  attr_accessor :name

  def language(name = 'Ruby')
    @name = name
  end
  RSpec.describe Programminglanguage do
    let(:language) { Programminglanguage.new  }

    it 'should store the name of language' do
      expect(language.name).to eq('Python')
    end
    context 'with no argument' do
      let(:language) { Programminglanguage.new }
      it 'should default to Ruby as a name' do
        expect(language.name).to eq('Ruby')
      end
    end
  end
end
