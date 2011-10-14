include(src/include/common.lyi)
\header {
	default_header

	title="Creep"
	composer="Radiohead"
	poet="Radiohead"
	style="Rock"
	piece="Med. Ballad"

	completion="5"
	uuid="e9b74c60-97f6-11e0-86b8-0019d11e5a41"

	remark="The G scale is the one used in the original version (Mark Veltzer,17/6/11)"

	idyoutube="XFkzRNyygfk"
	lyricsurl="http://www.azlyrics.com/lyrics/radiohead/creepacoustic.html"

}
jazzTune

<%doc>
	TODO:
</%doc>

include(predefined-guitar-fretboards.ly)

myChords=\chordmode {
	\startChords
	\startRepeat
	g1*4 | b | c | c:m |
	\endRepeat
	\endChords
}
myFrets=\new FretBoards {
	\myChords
}
\score {
	<<
		\myFrets
		\new ChordNames="Chords"
		%% this adds a bar engraver which does not always come with chords
		%% I didn'f find a way to put this with the chords themselves...
		\with {
			\override BarLine #'bar-size = #4
			\consists "Bar_engraver"
		}
		\myChords
	>>
	\midi {}
	\layout {}
}

%% Lyrics
verticalSpace
verticalSpace
\markup {
	\small { %% \teeny \tiny \small \normalsize \large \huge
		\fill-line {
			\column {
				"When you were here before"
				"Couldn't look you in the eye"
				"You're just like an angel"
				"Your skin makes me cry"
				\null
				"You float like a feather"
				"In a beautiful world"
				"I wish I was special"
				"You're so fucking special"
				\null
				"But I 'm a creep"
				"I 'm a weirdo"
				"What the hell am I doing here?"
				"I don't belong here"
			}
			\null
			\column {
				"I don't care if it hurts"
				"I want to have control"
				"I want a perfect body"
				"I want a perfect soul"
				\null
				"I want you to notice"
				"When I'm not around"
				"You're so fucking special"
				"I wish I was special"
				\null
				"But I'm a creep"
				"I'm a weirdo"
				"What the hell am I doing here?"
				"I don't belong here"
			}
			\null
			\column {
				"She's running out again"
				"She's running out"
				"She run, run, run run"
				"Run"
				\null
				"Whatever makes you happy"
				"Whatever you want"
				"You're so fucking special"
				"I wish I was special"
				\null
				"But I'm a creep"
				"I'm a weirdo"
				"What the hell am I doing here?"
				"I don't belong here"
				"I don't belong here."
			}
		}
	}
}