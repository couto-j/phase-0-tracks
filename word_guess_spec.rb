require_relative 'word_guess'

describe Game do
	let(:game) { Game.new('apple')}


  it "guesses the secret word correctly" do
    expect(game.secret_word('apple')).to be true
  end

  it "if the guess is non letter" do
    expect(game.good_guess?('1')).to be false 
  end

  it "how many guesses left if you guess the wrong letter" do
    expect(game.limited_guess('k')).to eq(4)
  end
end