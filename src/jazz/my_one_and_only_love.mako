<%page args="part"/>
% if part=='Vars':
<%
	attributes['doChords']=True
	attributes['doVoice']=True
	attributes['doLyrics']=True
	attributes['render']="Fake"

	attributes['title']="My One And Only Love"
	attributes['style']="Jazz"
	# this is from the fake book
	attributes['composer']="Guy Wood"
	# this is from the fake book
	attributes['poet']="Robert Mellin"
	# this is from the fake book
	attributes['piece']="Slowly"
	# this is from the fake book
	attributes['copyright']="1952, 1953 SHERWIN MUSIC PUBLISHING CORP."
	# this is from the fake book
	attributes['copyrightextra']="Renewed 1980, 1981 WAROCK CORP."
	attributes['typesetter']="Mark Veltzer <mark@veltzer.net>"
	attributes['location']="fb:266"

	attributes['completion']="5"
	attributes['uuid']="ac777f1c-0bf0-11e3-9fd3-782bcbdd3b7a"
	attributes['structure']="AABA"

	attributes['idyoutuberemark']="Coltrane!"
	attributes['idyoutube']="ecrE80rnjhw"
	attributes['idyoutuberemark']="Sting in the leaving Las-Vegas version"
	attributes['idyoutube']="lEkJoMNFPEA"
	attributes['lyricsurl']="http://www.lyricsfreak.com/l/louis+armstrong/my+one+and+only+love_20268115.html"
%>
% endif

% if part=='Doc':
	DONE:
	- put in the location in the fake book.
	- filled in meta data from the fake book.
	- put in the tunes structure.
	- filled in the fake book chords.
	- filled in the fake book lyrics.
	- filled in the fake book tune.
	- heard that the fake book tune sounds well.
	- checked the fake book chords.
	- checked the fake book tune.
	- checked the fake book lyrics.
	TODO:
	- added youtube performances.
	- added a lyrics url.
% endif

% if part=='ChordsFake':
\chordmode {
	\startChords
	\startSong

	\repeat volta 2 {
		\myMark "A"
		\startPart
		c2 a:m7 | d:m7 g4:9 gis:dim7 | a:m a:m7/g f2:maj7 | b:m7.5- e4:m7 a:7.9- | \myEndLine
		d:m7 d:m7/c b:m7.5- e:7 | a2:m7 ees:9 | d:m7 g4:7 g:7/f | e:m a:7.9- d:m7 g:9 | \myEndLine
		\endPart

		\myMark "A"
		\startPart
		c2 a:m7 | d:m7 g4:9 gis:dim7 | a:m a:m7/g f2:maj7 | b:m7.5- e4:m7 a:7.9- | \myEndLine
		d:m7 c:m7 b:m7.5- e:7 | a2:m7 ees:9 | d:m7 g4:7 g:7.9- | c2 fis4:m7.5- b:7 | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		e2:m6 cis:m7.5- | fis:m7 b:7 | e2:m6 cis:m7.5- | fis:m7 b:7 | \myEndLine
		e:m e:m/dis | e:m/d e:m/cis | d:m7 aes:7.11+ | d:m7 g:7.9- | \myEndLine
		\endPart

		\myMark "A"
		\startPart
		c2 a:m7 | d:m7 g4:9 gis:dim7 | a:m a:m7/g f2:maj7 | b:m7.5- e4:m7 a:7.9- | \myEndLine
		d:m7 c:m7 b:m7.5- e:7 | a2:m7 ees:9 | a:m7 g4:7.5+ des:9 |
	} \alternative {
		{
			c2 d4:m7 g:7.5+ | %% \myEndLine
		}
		{
			aes4:maj7 des:maj7 des:6 c:6.9 | \myEndLine
		}
	}
	\endPart

	\endSong
	\endChords
}
% endif

% if part=='VoiceFake':
\relative c' {
	\set Staff.timeSignatureFraction=#'(2 . 2)
	\time 4/4
	\key c \major
	%% http://veltzer.net/blog/blog/2010/08/14/musical-tempo-table/
	\tempo "Moderato" 4 = 100

	\repeat volta 2 {
		%% A part
		r8 g a8. c16 d8 e b' g | a4 d b~ \times 2/3 { b8 g f } |
		e4 c' a~ \times 2/3 { a8 f e } | d4 b' g2 |
		r8 a g f e8. d16 g8. e16 | c8 a4.~ a2 |
		r8 f' g a g4 d | g1 |

		%% A part
		r8 g, a8. c16 d8 e b' g | a4 d b~ \times 2/3 { b8 g f } |
		e4 c' a~ \times 2/3 { a8 f e } | d4 b' g2 |
		r8 a g f e8. d16 g8. e16 | c8 a4.~ a2 |
		r8 f' g a g4 e | c2. r8 b |

		%% B part
		b'4~ \times 2/3 { b8 a g } b4~ \times 2/3 { b8 a g } | b,8 b4.~ b4 r8 b |
		b'4~ \times 2/3 { b8 a g } b4~ \times 2/3 { b8 a g } | b,2. r8 b |
		e4~ \times 2/3 { e8 fis g } e4. b8 | e4~ \times 2/3 { e8 fis g } e2 |
		\times 2/3 { d4 d d } \times 2/3 { f! d f } | d1 |

		%% A part
		r8 g, a8. c16 d8 e b' g | a4 d b~ \times 2/3 { b8 g f } |
		e4 c' a~ \times 2/3 { a8 f e } | d4 b' g2 |
		r8 a g f e8. d16 g8. e16 | c8 a4.~ a2 |
		r8 f' g f aes4 b |
	} \alternative {
		{
			c2. r4 |
		}
		{
			c1 |
		}
	}
}
% endif

% if part=='LyricsFake':
\lyricmode {
	%% A part
	The ver -- y thought of you makes my heart sing __
	like an A -- pril breeze __ on the wings of spring.
	And you ap -- pear in all your splen -- dor, __
	My One And On -- ly Love.

	%% A part
	The shad -- own fall and spread their mys -- tic charms __
	in the hush of night __ while you're in my arms.
	I feel your lips so warm and ten -- der, __
	My One And On -- ly Love.

	%% B part
	The touch __ of your hand __ is like heav -- en, __
	a heav -- __ en that I've __ nev -- er known.
	The blush __ on your cheek when -- ev -- __ er I speak
	tell me that you are my own.

	%% A part
	You fill my ea -- ger heart with such de -- sire. __
	Ev -- r'y kiss you give __ sets my soul on fire.
	I give my -- self in sweet sur -- ren -- der, __
	My One And On -- ly Love.

	Love.
}
% endif
