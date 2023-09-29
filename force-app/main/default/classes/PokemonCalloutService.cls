public class PokemonCalloutService {
  public static HttpResponse makePostCallout() {
    // Endpoint is stored in a Named Credential
    // An Auth Provider to the Org containing the PokemonManager Service was used
    String endPoint = 'callout:PokemonManager';
    String pokeName = '"ditto"';
    String moves = '["transform"]';
    String abilities = '["limber", "imposter"]';
    String body = '{' +
      '"pokeName":' + pokeName + ',' +
      '"moves":' + moves + ',' +
      '"abilities":' + abilities +
    '}';

    Http http = new Http();
    HttpRequest request = new HttpRequest();

    request.setEndpoint(endPoint);
    request.setMethod('POST');
    request.setHeader('Content-Type', 'application/json');
    request.setBody(body);

    return http.send(request);
  }

  public static HttpResponse makeGetCallout(String pokemonId) {
    // Endpoint is stored in a Named Credential
    // An Auth Provider to the Org containing the PokemonManager Service was used
    String endPoint = 'callout:PokemonManager/' + pokemonId;

    Http http = new Http();
    HttpRequest request = new HttpRequest();

    request.setEndpoint(endpoint);
    request.setMethod('GET');

    HttpResponse response = http.send(request);

    return response;
  }
}
