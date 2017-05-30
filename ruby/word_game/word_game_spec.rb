require_relative 'word_game'

describe Game do
  it "changes word char to -" do
    word1 = Game.new("unicorn")
    expect(word1.guess_checker("a")).to eq "try again, dumbdumb"
  end


end

