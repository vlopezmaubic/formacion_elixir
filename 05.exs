# Procesos
IO.inspect ["Process", self()]
# Los procesos se crean con spawn, aunque
# rara vez hay que hacerlo a mano
pid = spawn_link fn ->
  # Este código no se ejecuta en el proceso padre, sino en el hijo
  Process.sleep(2000)
  IO.inspect ["Child", self()]
  #raise "Error!"
  # Todos los procesos tiene una bandeja de mensajes
  receive do
    {:ok, msg, pid2} ->
      IO.puts "Received message: " <> msg
      send pid2, "Hello"
  end
end

Process.sleep 1000

# Podemos usar el pid de un proceso para operar sobre él
IO.puts Process.alive?(pid)
send pid, {:ok, "Test", self()}

Process.sleep 3000

receive do
  msg -> IO.puts "Received message from child: " <> msg
end

IO.puts "End"
