package policy

deny contains msg if {
  container := input.containers[_]

  image := container.image
  name := container.name
  
  endswith(image, ":latest")
  
  msg := sprintf("Está prohibido usar imágenes con latest. El contenedor %v está usando la imagen: %v",[name, image])
}