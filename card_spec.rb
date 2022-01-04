# This is about Card rspec test

class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

describe 'Card' do
  let(:card) { Card.new('Ace', 'Spade') } # let method id lazy loading, every time call the method it will loaded in memory

  it 'has a rank and that rank can change' do
    # card = Card.new("Ace", "Spade")
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end

  it 'has a suit' do
    # card = Card.new("Ace", "Spade")
    expect(card.suit).to eq('Spade')
  end
end
