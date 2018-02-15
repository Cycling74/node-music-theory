/*************************************
Theory for Max
scale.js

Node script for retrieving scale info.

To-Do: Fix error messages, add description,
Add error check for root name, add readMidi() function

Max Ardito (2018)
**************************************/

/*Node Dependencies*/
const Max = require('max-api');
const Tonal = require('tonal');
const Scale = require('tonal-scale');
const Note = require('tonal-note');


/*Welcome post*/
Max.post("Dependencies successfully loaded");

/*====================================*/


/*
MESSAGE_TYPES.BANG

INPUT: Bang
OUTPUT: List of all possible scales. Scale roots
are read as separate input variables in functions.
*/

Max.addHandler(
 Max.MESSAGE_TYPES.BANG, () => {
	Max.outlet(Scale.names());
});

/*
getChords(scaleName);

INPUT: Scale name
OUTPUT: List of chords found within scale
*/

Max.addHandler(
	"getScaleChords", (scaleRoot, scale) => {
		if(Scale.exists(scale)){
			Max.outlet(Scale.chords(scale));
	  } else {
			Max.post("Error: Invalid Scale Name");
		}
});


/*
getIntervals(scaleName);

INPUT: Scale name
OUTPUT: List of intervals found within scale
*/

Max.addHandler(
	"getScaleIntervals", (scaleRoot, scale) => {
		if(Scale.exists(scale)){
			Max.outlet(Scale.intervals(scale));
	  } else {
			Max.post("Error: Invalid Scale Name");
		}
});


/*
getScalePitches(scaleName);

INPUT: Scale name
OUTPUT: List of pitches within scale
*/

Max.addHandler(
	"getScalePitches", (scaleRoot, scale) => {
		if(Scale.exists(scale)){
			Max.outlet(Scale.notes(scaleRoot, scale));
	  } else {
			Max.post("Error: Invalid Scale Name");
		}
});

/*
getScaleInfo(chordName);

INPUT: Scale name without tonic
OUTPUT: Info about scale in dictionary format
*/

Max.addHandler(
"getScaleInfo", (scale) => {
	if(Scale.exists(scale)){
		Max.outlet(Scale.props(scale));
	} else {
		Max.post("Error: Invalid Scale Name");
	}
});

/*
getSubsets(chordName);

INPUT: Standard scale name
OUTPUT: List of all scale names that are subsets of the input
*/

Max.addHandler(
"getSubsets", (scaleRoot, scale) => {
	if(!Scale.exists(scale)){
		Max.post("Error: Invalid Scale Name");
	} else if (Scale.subsets(scale).length == 0){
		Max.outlet("No subsets");
	} else {
		Max.outlet(Scale.subsets(scale));
	}
});



/*
getSupersets(scaleName);

INPUT: Standard scale name
OUTPUT: List of all scale names that are supersets of the input
*/

Max.addHandler(
"getSupersets", (scaleRoot, scale) => {
	if(!Scale.exists(scale)){
		Max.post("Error: Invalid Scale Name");
	} else if (Scale.supersets(scale).length == 0){
		Max.outlet("No supersets");
	} else {
		Max.outlet(Scale.supersets(scale));
	}
});

/*
getMIDI(intervalName);

INPUT: Standard interval name
OUTPUT: Converts pitch list to a list of MIDI values in
ascending order consisting of in octave range 4
*/

Max.addHandler(
"getMIDI", (scaleRoot, scale) => {
	if(Scale.exists(scale)){
		let scalePitches = Scale.notes(scaleRoot, scale);
		let octave = 4;
		for(var i = 0; i < scalePitches.length; i++){
			scalePitches[i] = Note.midi(scalePitches[i] + octave.toString());
			if(scalePitches[i] <= scalePitches[i - 1]){
				scalePitches[i] += 12;
				octave++;
			}
		}
		Max.outlet(scalePitches);
	} else {
		Max.post("Error: Invalid Scale Name");
	}
});

/*
readMIDI(midi)

INPUT: List of MIDI notes
OUTPUT: Standard scale name
*/


/*Max.addHandler(
	TO-DO
});*/
