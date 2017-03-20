defmodule FileReaderTest do
  use ExUnit.Case

  test "Passing a file should return a string" do
    file = Path.join("#{:code.priv_dir(:elixir_tweet)}", "sample_tweets.txt")
    str = ElixirTweet.FileReader.get_strings_to_tweet(file)

    assert str != nil
  end

  test "It never returns a string longer than 140 characters" do
    file = Path.join("#{:code.priv_dir(:elixir_tweet)}", "too_long.txt")
    str = ElixirTweet.FileReader.get_strings_to_tweet(file)

    assert str == "This tweet is below 140 characters."
  end
end
