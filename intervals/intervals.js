/*************************************
Theory for Max

Node script for retrieving interval info

NOT DONE

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
be used as input for the other functions in this script
(e.g. AP5, Bm3, FM7, Em2, etc.)
*/


/*
getIntervalPitchs(intervalName);

INPUT: Standard interval
OUTPUT: List pitches within interval
*/


/*
getIntervalInfo(intervalName);

INPUT: Standard interval name
OUTPUT: Info about interval in dictionary format
*/


/*
invert(intervalName);

INPUT: Standard interval
OUTPUT: List consisting of {intervalName, intervalPitches}
*/


/*
getSemitones(intervalName);

INPUT: Standard interval
OUTPUT: Size of interval in semitones
*/

/*
simplify(intervalName);

INPUT: Standard interval
OUTPUT: Get simplified version of interval
*/

/*
getMIDI(intervalName);

INPUT: Standard interval name
OUTPUT: Converts pitch list to a list of MIDI values in
ascending order consisting of simple intervals in octave range 4
*/
