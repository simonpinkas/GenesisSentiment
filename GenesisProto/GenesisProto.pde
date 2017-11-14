JSONObject json;
JSONObject sentence;
ArrayList<Verse> verses = new ArrayList<Verse>();

void setup() {
  size(1280, 800);
  colorMode(HSB);
  json = loadJSONObject("Genesis.json");
  JSONArray sentences = json.getJSONArray("sentences_tone");

  for (int i = 0; i < sentences.size(); i++) {
    sentence = sentences.getJSONObject(i);
    int sentenceID = sentence.getInt("sentence_id");
    String sentenceText = sentence.getString("text");
    JSONArray sentenceTones = sentence.getJSONArray("tones");
    verses.add(new Verse(sentenceID, sentenceText, sentenceTones));
    if (i == (sentences.size() - 1)) {
      println("done");
    }
  }
  
  for (Verse v : verses) {
    int x = v.id*10;
    int y = 0;
    int rowcount = 0;
    if (v.id*10 > width) {
      rowcount = v.id*10/width;
    }
    if (x > width) {
      y = rowcount*50;
      x = v.id*10-(width*rowcount);
    }
    println(y);
    v.display(x, y);
  }
}