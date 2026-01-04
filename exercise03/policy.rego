package policy

deny contains msg if {
  input.cpu > 2
  msg := sprintf("CPU máximo permitido: 2, CPU configurado: %v",[input.cpu])
}


deny contains msg if {
  input.memory > 1024
  msg := sprintf("Memoria máxima permitida: 1024, memoria configurada: %v",[input.memory])
}