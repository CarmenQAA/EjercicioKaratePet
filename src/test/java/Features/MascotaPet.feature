@prueba
Feature: Prueba API Tienda de mascotas
  Background: defino url
  Given url 'https://petstore.swagger.io/v2/'
   * configure ssl = true

  @Post
  Scenario: AgregarMascota
    Given path 'pet'
    And header Content-Type = "application/json"
    And def datacrear = read('dataget.json')
    And request datacrear
    When method post
    Then status 200
    * print response
    And def responseid = response.id
    * def responseidString = responseid + ''
    * karate.write('responseId.txt', responseidString)
    * print responseidString

  @GetId
  Scenario: Consultar Mascota por ID
    * def responseidString = read('responseId.txt')
    Given path 'pet/9223372036854573173'
    When method get
    Then status 200
    * print response

  @Put
  Scenario Outline: Modificar Mascota
    Given path 'pet'
    And header Content-Type = "application/json"
    And def databuscar = read('data.json')
    And request databuscar
    When method post
    Then status 200
    * print response

    Examples:
    |Vname|Vstatus|
    |Pastor aleman |sold   |

  @GetEstatus
  Scenario Outline: Consultar Mascota por status
    Given path 'pet/findByStatus'
    #And params {status:'sold'}
    And def dataStatus = read('data.json')
    And params dataStatus
    When method get
    Then status 200
    * print response

    Examples:
    |vstatus|
    |sold   |


