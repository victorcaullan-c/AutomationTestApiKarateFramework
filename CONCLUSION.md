# Conclusiones del Proyecto

## Visión General

Este proyecto implementa un framework de pruebas automáticas para APIs REST, utilizando como base el framework **Karate** (mediante la dependencia `karate-junit5`) en entorno Java 17, gestionado a través de **Maven**. El objetivo central ha sido validar la robustez, seguridad y funcionalidad de los servicios expuestos por la API bajo prueba.

## Alcance y Tipos de Prueba

Las pruebas desarrolladas incluyen:

- **Solicitudes GET**  
  Se automatizó la consulta de recursos mediante el método GET, verificando que los endpoints devolvieran respuestas correctas y completas, incluyendo códigos de estado, cabeceras y cuerpos de respuesta.

- **Solicitudes POST**  
  Se realizaron pruebas para la creación/envío de información a la API a través del método POST, validando tanto el almacenamiento adecuado de la información como la respuesta acorde a lo esperado (status codes, mensajes, estructura, etc.).

- **Validaciones de Response**  
  En cada prueba se aplicaron aserciones para:
    - Verificar que el código de respuesta HTTP fuera el correcto (por ejemplo, 200, 201).
    - Corroborar que el contenido del cuerpo de la respuesta (response body) cumpliera con el esquema y valores esperados.
    - Validar la presencia y valor de campos obligatorios o mensajes de error en casos negativos.

- **Autorización mediante Token**  
  Para los endpoints protegidos:
    - Se implementó primero la obtención de un token de autenticación (por ejemplo, JWT o Bearer) mediante el flujo correspondiente.
    - Se realizo una solicitud que requería autenticación donde se incluyero el token en la cabecera `Authorization`.
    - Se validó que los endpoints protegidos respondieran correctamente cuando la autorización era válida y que rechazaran el acceso ante credenciales inválidas o tokens ausentes.

## Herramientas y Tecnologías Utilizadas

- **Lenguaje:** Java 17
- **Framework de pruebas:** Karate (karate-junit5, versión 1.4.1)
- **Gestión de dependencias/compilación:** Maven 3.9.9
- **Plugin para pruebas:** Maven Surefire Plugin (3.2.5)
- **Codificación:** UTF-8

## Beneficios y Aprendizajes

- Se logró una automatización eficiente y repetible, permitiendo detectar errores rápidamente y asegurar los criterios de aceptación desde etapas tempranas del ciclo de vida de desarrollo.
- El uso de Karate permitió adoptar un enfoque BDD simple y altamente expresivo para definir los casos de prueba.
- El manejo de tokens garantiza que las pruebas simulan escenarios reales de autorización/seguridad.
- La separación de configuración y datos de prueba facilita la escalabilidad y el mantenimiento del proyecto.

