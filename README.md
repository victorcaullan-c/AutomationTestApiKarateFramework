# Proyecto de Automatización Test Api Karate Framework

Este proyecto implementa automatización de pruebas sobre api´s de uso QA.

---

## Tecnologías Utilizadas

- **Java 17**
- **Maven 3.9.9**


## Dependencias

| Grupo              | Artefacto         | Versión | Alcance |
|--------------------|-------------------|---------|---------|
| com.intuit.karate  | karate-junit5     | 1.4.1   | test    |



## Plugins de compilación

| Plugin                 | Versión  |
|------------------------|----------|
| maven-surefire-plugin  | 3.2.5    |

---
## Descripción de carpetas

- **reports/**  
  Carpeta destinada a almacenar los reportes generados tras la ejecución de las pruebas automatizadas.

- **src/test/java/runners/**  
  Ubicación donde se definio la clase Runner, responsable de ejecutar los archivos de pruebas (`.feature`) utilizando el framework Karate y JUnit5.

- **src/test/resources/features/**  
  Aquí se encuentran los archivos `.feature` que describen los escenarios de prueba en lenguaje BDD (Gherkin) para Karate.

- **src/test/resources/data/**  
  Aquí se encuentra el archivo `usuarios.json` donde se almacenan los usuarios, que se utilizan para su registro en `fakestoreapi.com/auth/login`.

- **src/test/resources/**  
  Aquí se encuentra el archivo `karate-config.json` donde se ubicados las api´s de prueba.

---
## Ejecuciones de test
1. Para las ejecuciones se agrego una clase 'RunnerTest', donde se ejecutara por @Tag asignados por escenario en el feature.

## Reporte Karate Framework
1. La generacion de reportes de Karate Framework, se ubica en la ruta 'reports/karate-reports', definido al realizar la ejecucion desde el 'RunnerTest'.


## Detalles adicionales

- Codificación: UTF-8
- Compilación: Java 17
