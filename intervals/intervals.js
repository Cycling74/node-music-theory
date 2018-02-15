/*************************************
Theory for Max

Node script for retrieving interval info

To-Do: Fix error messages, add description,
Add error check for root name, add compatability for
compound intervals, add readMidi() function

Max Ardito (2018)
**************************************/

/*Node Dependencies*/
const Max = require('max-api');
const Tonal = require('tonal');
const Interval = require('tonal-interval');
const Note = require('tonal-note');


/*Welcome post*/
Max.post("Dependencies successfully loaded");

/*====================================*/


/*
MESSAGE_TYPES.BANG

INPUT: Bang
OUTPUT: List of all possible intervals within an octave. Prepend a root
to one of the intervals to make a standard interval name to
be used as input for the other functions in this script. Currently compound
intervals are not supported.
(e.g. AP5, Bm3, FM7, Em2, etc.)
*/

Max.addHandler(
 Max.MESSAGE_TYPES.BANG, () => {
	Max.outlet(Interval.names());
});


/*
getIntervalPitches(intervalName);

INPUT: Standard interval
OUTPUT: List pitches within interval
*/

Max.addHandler(
"getIntervalPitches", (intervalRoot, interval) => {
	if(Interval.names().includes(interval)){
		let semitones = Interval.semitones(interval);
		let topNote = Note.chroma(intervalRoot) + semitones;
		topNote = Note.fromMidi(topNote)
		//Remove MIDI octave number
		if(topNote.slice(-1) == "0"){
			topNote = topNote.substring(0, topNote.length - 1);
		} else if (topNote.slice(-1) == "1"){
			topNote = topNote.substring(0, topNote.length - 2);
		}
		//If unison interval, topNote is identical to root
		if(semitones == 0){
			topNote = intervalRoot;
		}
		Max.outlet(intervalRoot + " " + topNote);
	} else {
		Max.post("Error: Invalid interval Name");
	}
});


/*
getIntervalInfo(intervalName);

INPUT: Interval name without root
OUTPUT: Info about interval in dictionary format
*/

Max.addHandler(
"getIntervalInfo", (interval) => {
	if(Interval.names().includes(interval)){
		Max.outlet(Interval.props(interval));
	} else {
		Max.post("Error: Invalid interval Name");
	}
});


/*
invert(intervalName);

INPUT: Standard interval
OUTPUT: List consisting of {intervalName, intervalPitches}
*/

Max.addHandler(
"invert", (intervalRoot, interval) => {
	if(Interval.names().includes(interval)){
		let semitones = Interval.semitones(interval);
		let topNote = Note.chroma(intervalRoot) + semitones;
		let newTop = intervalRoot
		intervalRoot = Note.fromMidi(topNote);
		//Remove MIDI octave number
		if(intervalRoot.slice(-1) == "0"){
			intervalRoot = intervalRoot.substring(0, intervalRoot.length - 1);
		} else if (intervalRoot.slice(-1) == "1"){
			intervalRoot = intervalRoot.substring(0, intervalRoot.length - 2);
		}
		Max.outlet(Interval.invert(interval) + " " + intervalRoot + " " + newTop);
	} else {
		Max.post("Error: Invalid interval Name");
	}
});


/*
getSemitones(intervalName);

INPUT: Standard interval
OUTPUT: Size of interval in semitones
*/

Max.addHandler(
"getSemitones", (intervalRoot, interval) => {
	if(Interval.names().includes(interval)){
		Max.outlet(Interval.semitones(interval));
	} else {
		Max.post("Error: Invalid interval Name");
	}
});



/*
getMIDI(intervalName);

INPUT: Standard interval name
OUTPUT: Converts pitch list to a list of MIDI values in
ascending order consisting of simple intervals in octave range 4
*/

Max.addHandler(
"getMIDI", (intervalRoot, interval) => {
	if(Interval.names().includes(interval)){
		let semitones = Interval.semitones(interval);
		let octave = 4;
		intervalRoot = Note.midi(intervalRoot + octave.toString());
		let topNote = intervalRoot;
		if(interval == "8P"){
			topNote += 12;
		} else {
			topNote += semitones;
		}
		Max.outlet(intervalRoot + " " + topNote);
	} else {
		Max.post("Error: Invalid interval Name");
	}
});
