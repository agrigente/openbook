<%page args="part"/>
% if part=='Vars':
<%
	attributes['doChords']=True
	attributes['doVoice']=True
	attributes['doLyrics']=True
	attributes['doLyricsmore']=True
	attributes['render']="Real"

	# this is from the real book
	attributes['title']="Don't Blame Me"
	attributes['style']="Jazz"
	# this is from wikipedia
	attributes['composer']="Jimmy McHugh"
	# this is from wikipedia
	attributes['poet']="Dorothy Fields"
	# this is mine
	attributes['piece']="Swing"

	attributes['typesetter']="Mark Veltzer <mark@veltzer.net>"
	attributes['completion']="5"
	attributes['uuid']="d01b9fc8-e077-11e3-8a42-b3378bc59d8a"
	attributes['structure']="AABA"

	attributes['idyoutuberemark']="Nat King Cole"
	attributes['idyoutube']="CkqKURwl9m0"
	attributes['idyoutuberemark']="Monk in a monked version of the tune"
	attributes['idyoutube']="KshrtLXBdl8"
	attributes['lyricsurl']="http://www.sing365.com/music/lyric.nsf/Don%27t-Blame-Me-1958-version-lyrics-Nat-King-Cole/C27E88B65E6C613D48256AF1000ED478"
%>
% endif

% if part=='Doc':
	DONE:
	- added the real book epdf.
	- filled in the meta data.
	- added lyrics url.
	- put in the tunes structure (in the meta data and in the tune itself).
	- added the real book chords.
	- added the real book tune.
	- added the real book lyrics.
	- checked the real book chords.
	- checked the real book tune.
	- checked the real book lyrics.
	- checked that the tune sounds good (rythm wise and note wise).
	TODO:
	- add youtube performance.
	- add another version of this tune.
% endif

% if part=='ChordsReal':
\chordmode {
	\startChords
	\startSong

	\myMark "A"
	\startPart
	\repeat volta 2 {
		c2:6 f4:m7 bes:7 | e2:m7 a:7 | d:m7 g:7 | c:maj7 a:m7 | \myEndLine
		d:m7 g:7 | e:m7.5- a:7 |
	}
	\alternative {
		{
			d:m7 g:7 | c:6 d4:m7 g:7 | \myEndLineVoltaNotLast
		}
		{
			d2:m7 g:7 | c:6 g4:m7 c:7 | \myEndLine
		}
	}
	\endPart

	\myMark "B"
	\startPart
	f1 | e:7 | a1*2:m7 | \myEndLine
	d:7 | d2:m7 aes:7 | g1:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	c2 e:m7.5- | a1:7 | d2:m7 g:7 | c:maj7 a:m7 | \myEndLine
	d:m7 g:7 | e:m7.5- a:7 | d:m7 g:7 | c1:6 | \myEndLine
	\endPart

	\endSong
	\endChords
}
% endif

% if part=='VoiceReal':
\relative {
	\time 4/4
	\key c \major
	%% https://veltzer.net/blog/blog/2010/08/14/musical-tempo-table/
	\tempo "Allegro" 4 = 130

	%% part "A"
	\repeat volta 2 {
		g'2 bes | a2. g4 | \times 2/3 { f4 f f } e e | d2. c4 | \myEndLine
		\times 2/3 { f f f } e d | \times 2/3 { g g g } f e |
	}
	\alternative {
		{
			a2 b | g1 | \myEndLineVoltaNotLast
		}
		{
			a2 a | c1 | \myEndLine
		}
	}
	%% part "B"
	gis4 a gis a | ais b ais b | d2 c4 c~ | c1 | \myEndLine
	d2 c4 c~ | c2 \times 2/3 { d,4 fis b } | a2 aes | g1 | \myEndLine
	%% part "A"
	g2 bes | a2. g4 | \times 2/3 { f4 f f } e e | d2. c4 | \myEndLine
	\times 2/3 { f f f } e d | \times 2/3 { g g g } f e | a2 a | c2. r4 | \myEndLine
}
% endif

% if part=='LyricsReal':
%% these are lyrics from the internet adjusted for the real book
\lyricmode {
	%% part "A"
	Don't Blame Me
	For fal -- ling in love with you.
	I'm un -- der your spell
	But how can I help it?
	Don't Blame Me.
	_ _ _
	%% part "B"
	I can't help it
	If that dog -- gone moon a -- bove __
	Makes me want __
	Some -- one like you to love.
	%% part "A"
	Blame your kiss
	As sweet as a kiss can be,
	And blame all your charms
	That melt in my arms,
	But Don't Blame Me.
}
% endif

% if part=='LyricsmoreReal':
\lyricmode {
	%% part "A"
	Can't you see
	When you do the things you do
	If I can't con -- ceal
	The thrill that I'm fee -- ling,
	_ _ _ Don't Blame Me.
}
% endif
