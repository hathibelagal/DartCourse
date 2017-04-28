import 'dart:html' as html;
import 'dart:convert' as convert;
import 'dart:async';

class APOD {
  String title;
  String url;
  String explanation;
  String copyright;

  final String ENDPOINT = "https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY";

  Future initialize() async {
    String response = await html.HttpRequest.getString(ENDPOINT);

    Map<String, String> details = convert.JSON.decode(response);

    title = details["title"];
    url = details["url"];
    explanation = details["explanation"];

    if(details.containsKey("copyright")) {
      copyright = details["copyright"];
    } else {
      copyright = "In public domain";
    }
  }
}

void main() {
  html.querySelector("#fetch_button").onClick.listen((e) async {
    APOD apod = new APOD();
    await apod.initialize();

    html.querySelector("#apod_title").text = apod.title;
    html.querySelector("#apod_explanation").text = apod.explanation;
    html.querySelector("#apod_copyright").text = apod.copyright;

    (html.querySelector("#apod") as html.ImageElement).src = apod.url;
  });
}