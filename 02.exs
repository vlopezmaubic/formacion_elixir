# Matcheo de patrones
l = ["a", "b", "c", "d"]
# El operador = no es asignación, sino matcheo
[lh | lt] = l
IO.inspect lh
IO.inspect lt
# El resultado es el mismo que:
# IO.puts hd l
# IO.puts tl l

# El matcheo combina comprobaciones y nombrado de variables
# Los átomos son útiles para matchear
t = {:ok, "Resultado"}
# t = {:error, "Ha ocurrido un error"}
{:ok, res} = t
IO.puts res

# Muchas funciones devuelven tuplas con átomos
{:ok, _content} = File.read("data.txt")
# Se pueden probar varios patrones en un match usando case
case File.read("data2.txt") do
  {:ok, content} -> IO.puts content
  {:error, err} ->
    IO.puts("Ha ocurrido un error:")
    IO.puts(err)
end
# Si no queremos controlar el error, mejor usar la función con !
IO.puts File.read!("data.txt")
