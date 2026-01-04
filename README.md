# Learning - Policy as Code

Este repositorio contiene ejercicios prácticos para aprender **Policy as Code** usando **Open Policy Agent (OPA)**.

## Requisitos

- OPA instalado (CLI)
- PowerShell o una terminal equivalente

Puedes verificar la instalación de OPA con:

```powershell
opa version
```

## Estructura del repositorio

Cada carpeta contiene una política en Rego y uno o más archivos JSON de datos/entrada.

## Cómo ejecutar los ejercicios

Sitúate en la carpeta del ejercicio y ejecuta:

```powershell
cd exercise01
opa fmt -w policy.rego
opa eval -d .\policy.rego -i .\input.json "data.play" --format pretty
```

Para el ejercicio 2, donde además hay datos estáticos (`users.json`):

```powershell
cd exercise02
opa fmt -w policy.rego
opa eval -d .\policy.rego -d .\users.json -i .\input.json "data.play.allow" --format pretty
```

A partir del ejercicio 9, se usa **conftest**:

```powershell
cd exercise09
conftest test pod.yaml
```

### Flags principales usados

- `-d`: carga políticas y datos (rego/json/yaml) como `data.*`.
- `-i`: carga el documento de entrada como `input`.

## Objetivo

El objetivo de estos ejercicios es practicar:

- Definición de reglas en Rego.
- Uso de `input` y `data`.
- Evaluación de políticas con `opa eval`.

Siéntete libre de modificar las políticas y los archivos JSON para experimentar con distintos escenarios.