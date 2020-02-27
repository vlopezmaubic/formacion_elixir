# Programación funcional y pipes
require Integer

# Las funciones de alto orden reciben funciones anónimas
IO.inspect Enum.map([1, 2, 3, 4, 5], fn n -> n*100 end)

# Se puede usar el operador pipe para simplificar una serie de operaciones
# El valor resultante de una función se pasa como primer argumento a la siguiente
0..100
  |> Enum.map(fn n -> n*n end)
  |> Enum.filter(&(Integer.is_even/1))
  |> Enum.take(10)
  |> Enum.each(&(IO.puts/1))
