require_relative 'word_game'

describe Game do
  it "changes word char to -" do
    word1 = Game.new("unicorn")
    expect(word1.word_hider).to eq "-------"
  end


end

