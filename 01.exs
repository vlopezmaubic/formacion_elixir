# Tipos de dato básicos
n = 7                         # Entero
d = 2.5                       # Decimal
s = "String"                  # Cadena de texto
b = false                     # Booleano
a = :atom                     # Átomo
f = fn n1, n2 -> n1 + n2 end  # Función anónima
# Colecciones (inmutables)
l = [1, 2, true, "7.5"]       # Lista
t = {:ok, 5}                  # Tupla

# Las funciones se dividen en nombradas y anónimas
# Las funciones nombradas pertenecen siempre a un módulo
IO.puts(s <> "s")
# Las funciones nombradas se pueden invocar sin paréntesis
IO.puts is_integer d
# Todas las funciones se identifican por su aridad
IO.puts is_function f, 2
# Las funciones anónimas se invocan con .
IO.puts f.(n, d)
