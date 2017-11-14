"use strict"

var sketch = function (p) {
    var genesis;
    var container;

    p.preload = function () {
        var genesisPath = '../data/genesis.json';
        genesis = p.loadJSON(genesisPath);

    }

    p.setup = function () {
        p.noCanvas();
        for (var i = 0; i < genesis.sentences_tone.length; i++) {
            var hasTone = false;
            var genesisP = p.createP(genesis.sentences_tone[i].text);
            
            if(genesis.sentences_tone[i].tones.length > 0) {
               hasTone = true;
            } else {
                hasTone = false;
            }
            if(hasTone == true) {
                genesisP.addClass("hasTone");
            }
        }
    }
    
    

};

new p5(sketch, window.document.getElementById('container'));