/*************************************
Theory for Max
chords.js

Node script for retrieving chord info.

To-Do: Fix error messages, add description, READ CHORDS REALTIME

Max Ardito (2018)
**************************************/

/*Node Dependencies*/
const Max = require('max-api');
const Tonal = require('tonal');
const Chord = require('tonal-chord');
const Note = require('tonal-note');

/*Welcome post*/
Max.post("Dependencies successfully loaded");

/*====================================*/



/*
MESSAGE_TYPES.BANG

INPUT: Bang
OUTPUT: List of all possible chord structures. Prepend a root
to one of the chord structures to make a standard chord name to
be used as input for the other functions in this script
(e.g. Am, BM7, F7#9, E7sus4b9, etc.)
*/

Max.addHandler(
 Max.MESSAGE_TYPES.BANG, () => {
	Max.outlet(Chord.names());
});



/*
getChordPitchs(chordName);

INPUT: Standard chord name
OUTPUT: List of all pitches within chord
*/

Max.addHandler(
	"getChordPitches", (chordName) => {
		if(Chord.exists(chordName)){
			Max.outlet(Chord.notes(chordName));
	  } else {
			Max.post("Error: Invalid Chord Name");
		}
});



/*
getChordIntervals(chordName);

INPUT: Standard chord name
OUTPUT: List of all intervals within chord
*/

Max.addHandler(
"getChordIntervals", (chordName) => {
	if(Chord.exists(chordName)){
		Max.outlet(Chord.intervals(chordName));
	} else {
		Max.post("Error: Invalid Chord Name");
	}
});



/*
getChordInfo(chordName);

INPUT: Standard chord name
OUTPUT: Info about chord in dictionary format
*/

Max.addHandler(
"getChordInfo", (chordName) => {
	if(Chord.exists(chordName)){
		Max.outlet(Chord.props(chordName));
	} else {
		Max.post("Error: Invalid Chord Name");
	}
});



/*
getSubsets(chordName);

INPUT: Standard chord name
OUTPUT: List of all chord names that are subsets of the input
*/

Max.addHandler(
"getSubsets", (chordName) => {
	if(Chord.exists(chordName)){
		Max.outlet(Chord.subsets(chordName));
	} else {
		Max.post("Error: Invalid Chord Name");
	}
});



/*
getSupersets(chordName);

INPUT: Standard chord name
OUTPUT: List of all chord names that are supersets of the input
*/

Max.addHandler(
"getSupersets", (chordName) => {
	if(Chord.exists(chordName)){
		Max.outlet(Chord.supersets(chordName));
	} else {
		Max.post("Error: Invalid Chord Name");
	}
});


/*
getMIDI(chordName);

INPUT: Standard chord name
OUTPUT: List of MIDI values in ascending order
consisting of simple intervals in octave range 4
*/

Max.addHandler(
"getMIDI", (chordName) => {
	if(Chord.exists(chordName)){
		let chordPitches = Chord.notes(chordName);
		let octave = 4;
		for(var i = 0; i < chordPitches.length; i++){
			chordPitches[i] = Note.midi(chordPitches[i] + octave.toString());
			if(chordPitches[i] < chordPitches[i - 1]){
				chordPitches[i] += 12;
				octave++;
			}
		}
		Max.outlet(chordPitches);
	} else {
		Max.post("Error: Invalid Chord Name");
	}
});


/*
readMIDI(midi)

INPUT: List of MIDI notes
OUTPUT: Standard chord name
*/


/*Max.addHandler(
	TO-DO
});*/
