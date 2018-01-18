"use strict"

var sketch = function (p) {
  var genesis;
  var container;
  var isLoaded;

  p.preload = function () {
    isLoaded = false;
    var genesisPath = 'https://simonpinkas.github.io/The-Sentimental-Verses/www/data/genesis.json';
    genesis = p.loadJSON(genesisPath);
  }

  p.setup = function () {
    p.noCanvas();
    createVerses();
  }

  var createVerses = function () {
    for (var i = 0; i < genesis.sentences_tone.length; i++) {
      var hasTone = false;
      var genesisDiv = p.createP(genesis.sentences_tone[i].text);
      genesisDiv.addClass("verse");
      if (genesis.sentences_tone[i].tones.length > 0) {
        genesisDiv.addClass(genesis.sentences_tone[i].tones[0].tone_id);
        genesisDiv.attribute("data-category", genesis.sentences_tone[i].tones[0].tone_id);
      } else {
        genesisDiv.addClass("neutral");
        genesisDiv.attribute("data-category", "neutral");
      }
      genesisDiv.attribute("chapter", genesis.sentences_tone[i].text.substr(8, 2).replace(':', ''));
    }
    isLoaded = true;
  }

};
