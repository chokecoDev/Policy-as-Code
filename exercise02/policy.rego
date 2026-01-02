# 2️⃣ Uso de data
# Objetivo: leer datos estáticos
# Dado un archivo users.json con:
#   una lista de usuarios admins
# Crea una regla que:
#   Permita acceso solo si input.user está en data.admins

package play

allow if {
  input.user == data.admins[_]
}