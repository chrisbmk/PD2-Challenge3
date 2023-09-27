@isTest
private class PokemonCalloutServiceTest {
  @isTest
  static void testPostCallout() {
    Test.setMock(HttpCalloutMock.class, new PokemonCalloutServiceMock());

    HttpResponse response = PokemonCalloutService.makePostCallout();

    String pokeName = '"ditto"';
    String moves = '["transform"]';
    String abilities = '["limber", "imposter"]';
    String expBody = '{' +
      '"pokeName":' + pokeName + ',' +
      '"moves":' + moves + ',' +
      '"abilities":' + abilities +
    '}';

    String actBody = response.getBody();
    Integer actStatusCode = response.getStatusCode();
    String contentType = response.getHeader('Content-Type');

    System.assertEquals(expBody, actBody);
    System.assertEquals(200, actStatusCode);
    System.assert(contentType == 'application/json');
  }  

  @isTest
  static void testGetCallout() {
    Test.setMock(HttpCalloutMock.class, new PokemonCalloutServiceMock());

    HttpResponse response = PokemonCalloutService.makeGetCallout();

    Map<String, Object> resObj = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
    List<Object> abilities = (List<Object>) resObj.get('abilities');
    String contentType = response.getHeader('Content-Type');

    System.assertEquals(200, response.getStatusCode());
    System.assertEquals(2, abilities.size());
    System.assert(contentType == 'application/json');
  }
}
