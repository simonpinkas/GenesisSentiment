# The Sentimental Verses
An emotionally filterable book of Genesis, based on IBM Watson Tone Analyser's interpretation of the scripture. The prototype (in the _GenesisProto_ folder) made with [Processing](http://processing.org) assigns a color block to each verse, corresponding to the tones and the likelihood of accuracy detected by Watson. The  tones are _joy_, _sadness_, _anger_, _analytical_, _confident_, _tentative_ and _fear_. 

The actual deliverable (in the _GenesisProd_ folder), uses [P5*js](https://p5js.org) It displays each verse with an emoji indicator and filters at the top. I use a subset of emotions here, omiting ~~analytical~~, ~~confident~~ and ~~tentative~~.

It is often said that religions are whatever people want them to be. This website allows them to go a bit further by filtering-out passages that might not fit the tone that resonates most with them at a given moment.

This quick and dirty project was made for the Creative Coding Lab course at HEAD Media Design, Geneva.