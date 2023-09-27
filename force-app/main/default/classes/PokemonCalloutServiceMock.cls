@isTest
public class PokemonCalloutServiceMock implements HttpCalloutMock {
  public HttpResponse respond(HttpRequest request) {
    HttpResponse response = new HttpResponse();

    String pokeName = '"ditto"';
    String moves = '["transform"]';
    String abilities = '["limber", "imposter"]';
    String body = '{' +
      '"pokeName":' + pokeName + ',' +
      '"moves":' + moves + ',' +
      '"abilities":' + abilities +
    '}';

    response.setHeader('Content-Type', 'application/json');
    response.setStatusCode(200);
    response.setBody(body);

    return response;
  }
}
