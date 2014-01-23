require_relative "../../lib/fave_lang"

describe "Favourite language" do
  # it "given an array of repositories, returns the user's favourite language"
  it "takes a data as an array and tallies up languages used by the user and checks for the maximum count" do
    repos = [
      { id: 1,
        language: "ruby"},
      {id: 2,
        language: "javascript"},
      { id: 3,
        language: "ruby"}
    ]

    fave_lang = FaveLang.for_repos(repos)
    expect(fave_lang).to eq('ruby')
  end
end