class Verse {
  int id;
  String text;
  ArrayList<Tone> tones = new ArrayList<Tone>();

  Verse(int tID, String tText, JSONArray tTones) {
    id = tID;
    text = tText;
    for (int i = 0; i < tTones.size(); i++) {
      JSONObject tone = tTones.getJSONObject(i);
      String toneText = tone.getString("tone_id");
      float toneScore = tone.getFloat("score");
      tones.add(new Tone(toneText, toneScore));
    }
  }

  void display(int x, int y) {
    if (tones.size() == 0) {
    fill(255);
  }
    if (tones.size() == 1) {
      for (Tone t : tones) {
        fill(t.getToneColor());
        
      } }
      else if (tones.size() == 2) {
        color c1 = tones.get(0).getToneColor();
        color c2 = tones.get(1).getToneColor();
        fill(lerpColor(c1,c2,.50));
      }
      
      noStroke();
      rect(x, y, 10, 50);
    }
  
}