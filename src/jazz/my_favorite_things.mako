<%inherit file="/src/include/common.makoi"/>
<%
	attributes['jazzTune']=True
%>
\header {
	default_header

	title="My Favorite Things"
	composer="Richard Rodgers"
	poet="Oscar Hammerstein"
	style="Jazz"
	piece="Med Swing"

	completion="0"
	uuid="02c22208-a26f-11df-98fd-0019d11e5a41"
}

<%doc>
	TODO:
	- add lyrics.
	- check this whole sheet again.
	- add length to all note.
</%doc>

myChords=\chordmode {
	\mark "Intro"
	\repeat volta 4 { e2.:m7 | f2.:maj7.4+ }

	\mark "A"
	\repeat volta 2 {
		e2.:m7 | r2. | r2. | r2. |
		c2.:maj7 | r2. | r2. | r2. |
		a2.:m7 | d2.:7 | g2.:maj7 | c2.:maj7 | g2.:maj7 | c2.:maj7 | fis2.:m7.5- | b2.:7.9- |
	}
	\endPart

	\mark "B"
	e2.:m7 | r2. | r2. | r2. |
	a2.:maj7 | r2. | r2. | r2. |
	a2.:m7 | d2.:7 | g2.:maj7 | c2.:maj7 | g2.:maj7 | c2.:maj7 | fis2.:m7.5- | b2.:7.9- |
	\endPart

	\mark "C"
	e2.:m7 | r2. | fis2.:m7.5- | b2.:7.9- | e2.:m7 | e2.:m7/d | c2.:maj7 | r2. |
	c2.:maj7 | r2. | a2.:7 | r2. | g2.:maj7 | c2.:maj7 | a2.:m7 | d2.:7 |
	g2.:maj6 | c2.:maj7 | g2.:maj6 | r2. |
	\endPart

	\endSong
}

myVoice=\relative e' {
	\time 3/4
	\key g \major

	\repeat volta 4 { r2. | r2. }

	\repeat volta 2 {
		\repeat unfold 2
			{ e4 b'4 b4 | fis4 e4 e4 | b4 e4 e4 | fis4 e2 | }
		e4 b'4 a4 | e4 fis4 d4 | d4 a'4 g4 | c,2. |
		b4 c4 d4 | e4 fis4 g4 | a4 b4 a4 | dis,2. |
	}

	\repeat unfold 2 { e4 b'4 b4 | fis4 e4 e4 | b4 e4 e4 | fis4 e2 | }
	e4 b'4 a4 | e4 fis4 d4 | d4 a'4 g4 | c,2. |
	b4 c4 d4 | e4 fis4 g4 | a4 ais4 b4 | c2. |

	r4 b4 b4 | b2 e,4 | r4 a4 a4 | a2 dis,4 |
	r4 g4 g4 | g2 b,4 | e2.~ | e2 e4 |
	e4 fis4 e4 | fis4 e4 fis4 | g4 a4 g4 |
	a2 g4 | b4 c4 b4 | c2.~ | c2. | b2. |
	g2.~ | g2.~ | g2.~ | g4 r2 |
}

include(src/include/harmony_tune.lyi)