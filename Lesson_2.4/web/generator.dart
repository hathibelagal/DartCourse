import 'dart:html' as html;
import 'dart:math' as math;

void main() {
  html.querySelector("#generate_button").onClick.listen((event) {
    html.InputElement element = html.querySelector("#nchars") as html
        .InputElement;
    int nchars = int.parse(element.value);

    List<String> validCharacters = "abcdefghijklmnopqrstuvwxyz0123456789-=()"
                                   .split("");

    math.Random random = new math.Random();

    String randomPassword = "";

    for(int i=0;i<nchars;i++) {
      int randomInteger = random.nextInt(validCharacters.length);
      String randomCharacter = validCharacters.elementAt(randomInteger);
      randomPassword += randomCharacter;
    }

    html.querySelector("#generated_password").text = randomPassword;
  });
}