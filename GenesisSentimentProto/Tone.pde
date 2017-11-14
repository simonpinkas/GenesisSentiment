class Tone {
  String name;
  float score;

  Tone(String tName, float tScore) {
    name = tName;
    score = tScore;
  }

  color getToneColor() {
    float c1 = 0;
    float c2;
    float c3;
    switch(name) {
      case("joy"):
      c1 = 0;
      break;
      case("confident"): 
      c1 = 50;
      break;
      case("analytical"):
      c1 = 100;
      break;
      case("fear"):
      c1 = 150;
      break;
      case("sadness"):
      c1 = 200;
      break;
      case("anger"):
      c1 = 250;
      break;
    }
    color toneColor = color(c1, 125, score*255);

    return toneColor;
  }
}