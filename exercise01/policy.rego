# opa fmt -w policy.rego
# opa eval -d policy.rego -i input.json "data.example" --format pretty

# 1️⃣ Hello Rego
# Objetivo: reglas booleanas
# Crea una policy que:
#   Tenga un package llamado play
#   Devuelva true si input.message es "world"
#   Use default

package play

default v := false

v if input.message == "world"