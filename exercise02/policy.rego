package play

allow if {
  input.user == data.admins[_]
}