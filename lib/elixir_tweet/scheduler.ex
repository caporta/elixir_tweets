defmodule ElixirTweet.Scheduler do
  def schedule_file(schedule, file) do
    Quantum.add_job(schedule, fn ->
      IO.puts ElixirTweet.FileReader.get_strings_to_tweet(file)
    end)
  end
end
