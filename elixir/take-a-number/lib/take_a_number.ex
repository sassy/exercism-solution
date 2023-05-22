defmodule TakeANumber do

  defp pid(sender_pid, number) do
    send(sender_pid, number)
    loop(number)
  end

  defp take_a_number(sender_pid, number) do 
    send(sender_pid, number + 1)
    loop(number + 1)
  end

  defp loop(number) do
    receive do
      {:report_state, sender_pid} -> pid(sender_pid, number)
      {:take_a_number, sender_pid} -> take_a_number(sender_pid, number)
      :stop -> nil
      _ -> loop(number)
    end
  end

  def start() do
    spawn(fn -> loop(0) end)
  end
end
