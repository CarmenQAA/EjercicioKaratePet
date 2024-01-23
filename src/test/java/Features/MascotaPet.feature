Feature: Prueba API Tienda de mascotas
  Background: defino url
  Given url 'https://petstore.swagger.io/v2/'
   * configure ssl = true

  @Post
  Scenario: AgregarMascota
    Given path 'pet'
    And header Content-Type = "application/json"
    And request
    """{
    "id": 0,
    "category": {
    "id": 0,
    "name": "string"
    },
    "name": "doggie",
    "photoUrls": [
    "string"
    ],
    "tags": [
    {
    "id": 0,
    "name": "string"
    }
    ],
    "status": "available"
    }
  """
    When method post
    Then status 200
    * print response


  @GetId
  Scenario: Consultar Mascota por ID
    Given path 'pet/9223372036854772768'
    When method get
    Then status 200
    * print response


  @Put
  Scenario: Modificar Mascota
    Given path 'pet'
    And header Content-Type = "application/json"
    And request
    """{
      "id": 0,
      "category": {
        "id": 0,
        "name": "string"
      },
      "name": "Labrador",
      "photoUrls": [
        "string"
      ],
      "tags": [
        {
          "id": 0,
          "name": "string"
        }
      ],
      "status": "sold"
    }
  """
    When method post
    Then status 200
    * print response

  @GetEstatus
  Scenario: Consultar Mascota por status
    Given path 'pet/findByStatus'
    And params {status:'sold'}
    When method get
    Then status 200
    * print response


