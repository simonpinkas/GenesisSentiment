JSONObject json;
JSONObject sentence;
ArrayList<Verse> verses = new ArrayList<Verse>();
PrintWriter output;

void setup() {
  size(1280, 800);
  colorMode(HSB);
  json = loadJSONObject("Genesis.json");
  JSONArray sentences = json.getJSONArray("sentences_tone");
  output = createWriter("anger.txt"); 
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
  int subIndex = 0;
  for (int i = 0; i < verses.size(); i++) {

    //REFORMAT JSON FOR API USE

    //get joy

    //if (verses.get(i).isJoy == true) {
    //  subIndex++;
    //  int displayedIndex = subIndex - 1;
    //  String instance = "{ \"sentence_id\": " + displayedIndex + ", \"text\": \"" + verses.get(i).text + "\"},";
    //  output.println(instance);
    //}

    //get sadness

    //if (verses.get(i).isSadness == true) {
    //  subIndex++;
    //  int displayedIndex = subIndex - 1;
    //  String instance = "{ \"sentence_id\": " + displayedIndex + ", \"text\": \"" + verses.get(i).text + "\"},";
    //  output.println(instance);
    //}

    //get anger

    //if (verses.get(i).isAnger == true) {
    //  subIndex++;
    //  int displayedIndex = subIndex - 1;
    //  String instance = "{ \"sentence_id\": " + displayedIndex + ", \"text\": \"" + verses.get(i).text + "\"},";
    //  println(instance);
    //}

    //getFear

    //if (verses.get(i).isFear == true) {
    //  subIndex++;
    //  int displayedIndex = subIndex - 1;
    //  String instance = "{ \"sentence_id\": " + displayedIndex + ", \"text\": \"" + verses.get(i).text + "\"},";
    //  output.println(instance);
    //}

    int x = verses.get(i).id*10;
    int y = 0;
    int rowcount = 0;
    if (verses.get(i).id*10 > width) {
      rowcount = verses.get(i).id*10/width;
    }
    if (x > width) {
      y = rowcount*50;
      x = verses.get(i).id*10-(width*rowcount);
    }
    verses.get(i).display(x, y);
  }
}

void keyPressed() {
  output.flush();  // Writes the remaining data to the file
  output.close();  // Finishes the file
  exit();  // Stops the program
}