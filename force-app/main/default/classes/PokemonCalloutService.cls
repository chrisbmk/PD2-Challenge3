public class PokemonCalloutService {
  public static HttpResponse makePostCallout() {
    // Assuming authentication to the endpoint has been established the following is given
    String endPoint = 'https://myOrgInstance.my.salesforce.com/services/apexrest/Pokemon__c/';
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

  public static HttpResponse makeGetCallout() {
    // Assuming authentication to the endpoint has been established the following is given
    String endPoint = 'https://myOrgInstance.my.salesforce.com/services/apexrest/Pokemon__c/';

    Http http = new Http();
    HttpRequest request = new HttpRequest();

    request.setEndpoint(endpoint);
    request.setMethod('GET');

    HttpResponse response = http.send(request);

    return response;
  }
}
