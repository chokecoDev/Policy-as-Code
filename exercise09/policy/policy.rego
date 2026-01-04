package main
import rego.v1

is_pod if {
  input.kind = "Pod"
} 

name_resource := input.metadata.name

deny_image_latest  contains msg if {
	is_pod

  container := input.spec.containers[_]
  image := container.image
  name := container.name
  
  endswith(image, ":latest")
  
  msg := sprintf("Está prohibido usar imágenes con latest. Pod: %v, Contenedor: %v, Imagen: %v", [name_resource, container.name, image])
}

deny_privileged contains msg if {
  is_pod
  
  input.spec.containers[_].securityContext.privileged

  msg := sprintf("Está prohibido usar contenedores privilegiados. Pod: %v, Contenedor: %v, Imagen: %v", [name_resource, container.name, image])
}