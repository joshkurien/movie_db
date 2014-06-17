require 'spec_helper'

describe Movie do
    
=begin      
    before(:each) do
        @movie= Movie.new(name: "wow")
    end
=end

  let(:movie){Movie.create(:name => "wow")}

  it "Creates movie" do
    skip
  end

  it "Associates a cast" do
    skip
  end

  it "Associates songs to movie" do
    skip
  end

  it "deletes movie" do
    skip
  end

  it "deletes songs from movie" do
    skip
  end

  it "deletes actors from movie" do
    skip
  end

  it "Searches for movies" do
    skip
  end

  it "Updates the movie" do
    skip
  end

  it "shows ratings" do
    skip
  end

  it "Searches movies" do
    skip
  end

  it "List movies with ratings" do
    skip
  end

end