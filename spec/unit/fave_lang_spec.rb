require_relative '../../lib/fave_lang'

describe FaveLang do
  it "returns nil for an empty array"  do
    FaveLang.for_repos([]).should be_nil
  end

  it "returns nil if all repos have nil language" do
    FaveLang.for_repos([
      {language: nil},
      {language: nil}
    ]).should be_nil
  end

  it "returns 'ruby' for a single repo that's ruby" do
    FaveLang.for_repos([{language: 'ruby'}]).should eq('ruby')
  end

  it "returns ..."
end