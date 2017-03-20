defmodule FileReaderTest do
  use ExUnit.Case

  test "Passing a file should return a string" do
    file = Path.join("#{:code.priv_dir(:elixir_tweet)}", "sample_tweets.txt")
    str = ElixirTweet.FileReader.get_strings_to_tweet(file)

    assert str != nil
  end
end
