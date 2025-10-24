# Russia Buriat language model documentation

All doc-comment documentation in one large file.

---

## src-cg3-disambiguator.cg3.md 

This is the Eastern Mari disambiguation file. It chooses
the correct morphological analyses in any given sentence context.

The file first defines sentence delimiters and tags and sets.
Thereafter come the rules, each rule is listed below.

TODO: adapt it to BURYAAD

## Sentence delimiters

The delimiters are: "<.>" "<!>" "<?>" "<...>" "<¶>" sent

The **Tags** section lists all the tags inherited from the fst, and defines them for
use in the syntactic analysis.
The tags are documented in the root.lexc file, and here only listed for reference.

The next section, **Sets**, contains sets defined
on the basis of the tags listed here, those set names are not visible in the output.

### Tags

#### Beginning and end of sentence

BOS
EOS

#### Clause boundary

#### Parts of speech tags

N
V
A
Adv
CC
CS
Interj
Pron
Num
Pcle
Clt
Po

WORD is the set of all POS

#### Verbal tense and mood tags
Prs
Prt1
Prt2
Fut
Imprt
Ind
Cond
Des

#### Other verbal tags
Act
ConNeg
FutPrc
Ger
Inf
Nec
Neg
NegPrc
Pass
PrfPrc

Verbal person-number tags
Sg1
Sg2
Sg3
Pl1
Pl2
Pl3

#### Numeral tags

Sg
Pl

#### Case tags

Nom
Gen
Abl
Dat
Com
Cns
Acc
Ins
Ine
Ill
Cmpr (case)

#### Other nominal tags

Pers
Refl
Rel
Interr
Recipr
Dem
ABBR

#### Adjective comparison tags

Pos (?)
Superl
Comp

#### Possessive suffix tags

PxSg1
PxSg2
PxSg3
PxPl1
PxPl2
PxPl3

#### Numeral tags

Card
Coll
Ord
Temp (?)

#### Punctuation marks

CLB
PUCT
LEFT
RIGHT
COMMA

#### Derivation tags
Der/MWN
Der/sa

#### Particles
Qst
Foc

#### Tags for internal testing
CmpTest
Err

### Sets

* **CASE** = all cases
* **OBLCASE** = All cases except Nom
* **VFIN** = All moods

## Rule section

### Early, contextless rules

### Phrase internal rules

### Verb disambituation rules

#### Participles

Plural verbforms
* **BolonBusad** and others gives plural

ConMod

* * *

<small>This (part of) documentation was generated from [src/cg3/disambiguator.cg3](https://github.com/giellalt/lang-bxr/blob/main/src/cg3/disambiguator.cg3)</small>

---

## src-cg3-functions.cg3.md 



* Sets for POS sub-categories

* Sets for Semantic tags

* Sets for Morphosyntactic properties

* Sets for verbs

- V is all readings with a V tag in them, REAL-V should
be the ones without an N tag following the V.  
The REAL-V set thus awaits a fix to the preprocess V ... N bug.

* The set COPULAS is for predicative constructions

* NP sets defined according to their morphosyntactic features

* The PRE-NP-HEAD family of sets

These sets model noun phrases (NPs). The idea is to first define whatever can
occur in front of the head of the NP, and thereafter negate that with the
expression **WORD - premodifiers**.

The set **NOT-NPMOD** is used to find barriers between NPs.
Typical usage: ... (*1 N BARRIER NPT-NPMOD) ...
meaning: Scan to the first noun, ignoring anything that can be
part of the noun phrase of that noun (i.e., "scan to the next NP head")

* Miscellaneous sets

* Border sets and their complements

* Syntactic sets

These were the set types.

### HABITIVE MAPPING

* **hab1** 

* **hab2** 

* **hab3** (<hab> @ADVL>) for hab-actor and hab-case; if leat to the right, and Nom to the right of leat. Lots of restrictions.

* **habNomLeft** 

* **hab4** 	

* **hab6** 

* **hab7** 

* **hab8** This is not HAB
* **hab5**  This is not HAB

* **habDain** (<hab> @ADVL>) for (Pron Dem Pl Loc) if leat followed by Nom to the right

* **habGen** (<hab> @<ADVL) hab for Gen; if Gen is located in the end of the sentence and Nom is sentence initial

* **spred<obj** (@SPRED<OBJ) for Acc; the object of an SPRPED. Not to be mistaken with OPRED. If SPRED is to the left, and copulas is to the left of it. Nom or Hab are found sentence initially.

* **Hab<spred** (@<SPRED) for Nom; if copulas, goallut or jápmit is FMAINV and habitive or human Loc is found to the left. OR: if Ill or @Pron< followed by HAB are found to the left.

* **Hab>Advlcase<spred** (<ext> @<SUBJ) for Nom; it allows adverbials with Ill/Loc/Com/Ess to be found inbetween HAB and <ext>.

* **Nom>Advlcase<spred** (<ext> @<SUBJ) for Nom; it allows adverbials with Ill/Loc/Com/Ess to be found inbetween Nom and <ext> @<SUBJ.

* **<spred** (<ext> @<SUBJ) for Nom; if copulas to the left, and some kind of adverb, N Loc, time related word or Po to the left of it. OR: if Ill or @Pron< to the left, followed by copulas and the before mentioned to the left of copulas. 

* **<spred** (<ext> @<SUBJ) for Nom, but not for Pers. To the left boahtit or heaŋgát as MAINV, and futher to the left is some kind of place related word, or time related word

* **<spredQst1** (<ext> @<SUBJ) for Nom in a typically question sentence; if A) Hab, some kind of place word, Po or Nom to the left, and Qst followed by copulas to the left. B) same as a, only the Qst-pcle is attached to copulas. C) Qst to the left, with copulas to its left, but not if two Nom:s are found somewhere to the right. D) copulas to the left, and BOS to the left. E) Loc or Ill to the left, and Loc or Hab to the left of this, Qst and copulas to the left. F) Num @>N to the left, Hab, some kind of place word, Po or Nom to the left, and Qst followed by copulas to the left. NOTE) for all these rules; human, Loc or Sem/Plc not allowed to the right.

* **<spredQst2** (@<SPRED) for Nom; in a typically question sentence; differs from <spredQst1 by not beeing as restricted to the right. Though you are not allowed to be Pers or human.

* **Nom<spredQst** (@<SPRED) for Nom; in a typically question sentence. Differs from <spredQst2 by letting Nom be found between SPRED and copulas

* **<spred** (@<SPRED) for A Nom or N Nom if; the subject Nom is on the same side of copulas as you: on the right side of copulas

* **<spredVeara** (@<SPRED) for veara + Nom; if genitive immediately to the right, and intransitive mainverb to the right of genitive

* **leftCop<spred** (@<SPRED) for Nom; if copulas is the main verb to the left, and there is no Ess found to the left of cop (note that Loc is allowed between target and cop). OR: if you are Coll or Sem/Group with copulas to your left. 

* **<spredLocEXPERIMENT** (@<SPRED) for material Loc; if you are to the right of copulas, and the Nom to the left of copulas is not a hab-actor

* **NumTime** (@<SPRED) for A Nom

* **<spredSg** (@<SPRED) for Sg Nom	

* **<spredPg** (@<SPRED) for Pl Nom	

* **<spred** (@<SPRED) for Nom; if copulas to the left, and Nom or sentence boundary to the left of copulas. First one to the right is EOS.

* **<spred** (@<SPRED) for N Ess

* **spredEss>** (@SPRED>) for N Ess; if copulas to the right of you, and if an NP with nom-case first one to your left.

* **HABSpredSg>** (@SPRED>) for Nom; if habitive first one to the left, followed by copulas.

* **GalleSpred>** (@SPRED>) for Num Nom; if sentence initial

* **spredSgMII>** (@SPRED>)

* **r492>** (@SPRED>) for Interr Gen; consisting only of negations. You are not allowed to be MII. You are not allowed to have an adjective or noun to yor right. You are not allowed to have a verb to your right; the exception beeing an aux.

* **AdjSpredSg>** (@SPRED>) for A Sg Nom; if copulas to the right, but not if A or @<SPRED are found to the right of copulas

* **SpredSg>Hab** (@SPRED>) for Nom; if you are sentence initial, copulas is located to the right, and there is a habitive to the right of copulas

* **Spred>SubjInf** (@SPRED>) for Nom; if copulas to the right, and the subject of copulas is an Inf to the right

* **spredCoord** (@<SPRED) coordination for Nom; only if there already is a SPRED to the left of CNP. Not if there is some kind of comparison involved.

* **subj>Sgnr1** (@SUBJ>) for Nom Sg, including Indef Nom if; VFIN + Sg3 or Pl3 to the right (VFIN not allowed to the left) 

* **subj>Du** (@SUBJ>) for dual nominatives, including Coll Nom. VFIN + Du3 to the right. 
* **subj>Pl** (@SUBJ>) for plural nominatives, including Coll and Sem/Group. VFIN + Pl3 to the right.

* **subj>Pl** (@SUBJ>) for plural nominatives

* **subj>Sgnr2** (@SUBJ>) for Nom Sg; if VFIN + Sg3 to the right.

* **<subjSg** (@<SUBJ) for Nom Sg; if VFIN Sg3 or Du2 to the left (no HAB allowed to the left).

* **f<advl** (@-F<ADVL) for infinite adverbials

* **f<advl** (@-F<ADVL) for infinite adverbials

* **s-boundary=advl>** (@ADVL>) for ADVL that resemble s-booundaries. Mainverb to the right.

* **-fobj>** (@-FOBJ>) for Acc 

* **-fobj>** (@-FOBJ>) for Acc

* **advl>mainV** (@ADVL>) if; finite mainverb not found to the left, but the finite mainverb is found to the right.

* **<advl** (@<ADVL) if; finite mainverb found to the left. Not if a comma is found immediately to the left and a finite mainverb is located somewhere to the right of this comma.

* **<advlPoPr** (@<ADVL) if mainverb to the left.
* **advlPoPr>** (@<ADVL) if mainverb to the right.

* **advlEss>** (@<ADVL) for weather and time Ess, if FMAINV to the left.

* **advl>inbetween** (@ADVL>) for Adv; if inbetween two sentenceboundaries where no mainverb is present.

* **comma<advlEOS** (@<ADVL) if; comma found to the left and the finite mainverb to the left of comma. To the right is the end of the sentence.

* **advlBOS>** (@ADVL>) if; you are N Ill and found sentnece initially. First one to your right is a clause.

* **<advlPoEOS** (@<ADVL) for Po; if you are found at the very end of a sentence. A mainverb is needed to the right though.

* **cleanupILL<advl** (@<ADVL) for N Ill if; there are no boundarysymbols to your left, if you arent already @N< OR @APP-N<, and no mainverb is to yor left.

* **<opredAAcc** (@<OPRED) for A Acc; if an other accusative to the left, and a transtive verb to the left of it. OR: if a transitive verb to the left, and an accusative to the left of it.

#### sma object

* **<advlEss** (@<ADVL) for ESS-ADVL if; FMAINV to the left
* **<spredEss** (@<SPRED) for N Ess if; FMAINV to the left is intransitive or bargat

### SUBJ MAPPING - leftovers

### OBJ MAPPING - leftovers

### HNOUN MAPPING

* * *

<small>This (part of) documentation was generated from [src/cg3/functions.cg3](https://github.com/giellalt/lang-bxr/blob/main/src/cg3/functions.cg3)</small>

---

## src-fst-morphology-affixes-adjectives.lexc.md 


## Buryaad adjective morphology

just adding the +A tag.

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/adjectives.lexc](https://github.com/giellalt/lang-bxr/blob/main/src/fst/morphology/affixes/adjectives.lexc)</small>

---

## src-fst-morphology-affixes-nouns.lexc.md 

## Buryaad noun affixes

We have two lexica, n1 and n2, 
n1 with -нар plural and V-initial Gen, Ins, and
n2 with -ууд plural and г-initial Gen, Ins

The noun classes

* **LEXICON nx ** unclassified nouns, to n2 for now

* **LEXICON n1 ** with Gen -IIN, and -нар- suffix for oblique cases

* **LEXICON n2 ** with Gen -GAj and -ууд suffič for oblique cases

The class-specific case morphology (Gen, Ins)
* **LEXICON case1 ** Gen, Ins for n1 nouns, and pointing to common cases

* **LEXICON case2 ** Gen, Ins for n2 nouns, and pointing to common cases

* **LEXICON case3 ** case3 are numerals, for now pointing to case2

The morphology common to the different stem classes

* **LEXICON commoncase  ** common treatment of Nom, Dat, Acc, Abl, Com for all nouns

* **LEXICON Poss ** for Px, common for all nouns

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/nouns.lexc](https://github.com/giellalt/lang-bxr/blob/main/src/fst/morphology/affixes/nouns.lexc)</small>

---

## src-fst-morphology-affixes-propernouns.lexc.md 

## Buryaad proper noun morphology

This file add +N+Prop and points to the noun case morphology

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/propernouns.lexc](https://github.com/giellalt/lang-bxr/blob/main/src/fst/morphology/affixes/propernouns.lexc)</small>

---

## src-fst-morphology-affixes-symbols.lexc.md 


## Symbol affixes

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/symbols.lexc](https://github.com/giellalt/lang-bxr/blob/main/src/fst/morphology/affixes/symbols.lexc)</small>

---

## src-fst-morphology-affixes-verbs.lexc.md 

## Buryaad verb affixes

This is the file for Buryaad verb morphology. The documentation
shortly explains the rationale behind each continuation lexicon.

### The verb classes

#### Auxiliary verbs

No auxiliary verbs for now.

#### Ordinary verbs

v1 the default verb category, v2 stem in long vowel or ditphtong, 
v3 stem in и
The difference comes for the non-indicative forms, thus
all verb types point to the same finite_indicative.

* LEXICON v1t  the transitive v1 verbs (add +TV and go on)

* LEXICON v1i  the intransitive v1 verbs (add +IV and go on)

* LEXICON v1  the v1 verbs not yet classified for transitivity

* LEXICON v2t  the transitive v2 verbs (add +TV and go on)

* LEXICON v2i  the intransitive v2 verbs (add +IV and go on)

* **LEXICON v2 ** stem in long vowel or diphthong

* LEXICON v3t  the transitive v3 verbs (add +TV and go on)

* LEXICON v3i  the intransitive v3 verbs (add +IV and go on)

* **LEXICON v3 ** stem in и

### Verb morphology
We see the contlexes as two layers: The first layer to divide
the different stem types into different suffix lexica, and
the one for these suffixes.

#### Layer one: Dividing v1, v2, v3 into suffix lexica

* **LEXICON v1lex ** the common v1 morphology

* **LEXICON v2lex ** the common v2 morphology

#### Layer two: The suffix lexica themselves.

* **LEXICON persprd  ** for suffixes: б, ш, ...

* **LEXICON persprd2  ** for suffixes: би, ши, ...

* **LEXICON imperative   ** for imperative suffixes (Sg2, Pl2)

* **LEXICON voluntative   ** for suffixes: яа, 0, ...

* **LEXICON optative   ** for suffixes: -һууб, ...

* **LEXICON presc  ** for suffixes: -арайгтыт, ...

* **LEXICON participles   ** giving 11 different participle tags: +FutPrc, +ImpPrc, ...

* **LEXICON ptc   ** either stop or go to persprd suff

* **LEXICON ptc2   ** either stop or go to persprd2 suff

* **LEXICON converbs   ** listing 12 converb suffixes: -н, -жа, ...

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/verbs.lexc](https://github.com/giellalt/lang-bxr/blob/main/src/fst/morphology/affixes/verbs.lexc)</small>

---

## src-fst-morphology-clitics.lexc.md 



### Buryaad clitics

This file contains the clitic lexicon K, pointing (via clitics) to ENDLEX

* **LEXICON K  ** , in principle containing clitics, but no one so far, and pointing to ENDLEX

* **LEXICON ENDLEX ** is the lexicon adding ^END, for technical reasons.

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/clitics.lexc](https://github.com/giellalt/lang-bxr/blob/main/src/fst/morphology/clitics.lexc)</small>

---

## src-fst-morphology-phonology.twolc.md 

## Buryaad morphophonology

This file documents the [phonology.twolc file](http://github.com/giellalt/lang-bxr/blob/main/src/fst/phonology.twolc) 

This file expresses Buryaad morphophonological alternation, from abstract underlying forms.

## Alphabet

This is a list of all symbols in use.

* А Б В Г Д Е Ё Ж З И Й К Л М Н О    
  Ө П Р С Т У Ү Ф Х Һ Ц Ч Ш Щ Ь Ы     
  Ъ Э Ю Я							   = Capital letters
* а б в г д е ё ж з и й к л м н о    
  ө п р с т у ү ф х һ ц ч ш щ ь ы   
  ъ э ю я							   = Small letters
* %{A%}:а %{A%}:о %{A%}:э			   = archivowel A
* %{A%}:я %{A%}:ё %{A%}:е			   = archivowel A
* %{U%}:у %{U%}:ү  				   = archivowel U
* %{Ө%}:а %{Ө%}:о %{Ө%}:э %{Ө%}:ө	   = archivowel Ө 
* %{I%}:и %{I%}:ы %{I%}:0			   = archivowel I
* %{Y%}:и %{Y%}:0               = archivowel Y, kept after Cns, deleted after Vow
* %{D%}:т %{D%}:д					   = arciconsonant D

* %> 		         = suffix border
* а2:а я2:я        = invariant а/я in loanwords
* м2:м        = м to be deleted for PxSg1
* %^END:0	         = auxiliary end symbol to fix xerox bug

## Sets

Some of the symbols are bundled together in sets

* RealVow =  А Е Ё И О Ө У Ү Ы Э Ю Я			   
             а е ё и о ө у ү ы э ю я ;		   
* ArchiVow = а2 %{A%} %{U%} %{Ө%} %{I%} %{Y%} ;  
* RealCns =  Б В Г Д Ж З Й К Л М Н П Р С Т	   
             Ф Х Һ Ц Ч Ш Щ Ь Ъ				   
             б в г д ж з й к л м н п р с т	   
             ф х һ ц ч ш щ ь ъ ;				   
* ArchiCns = %{D%} ;							   

* Vow = RealVow ArchiVow ;   
* Cns = RealCns ArchiCns ;   
* Sgm = Vow Cns ;			   

## Rules

Here come all the rules (marked with RULE:), and test cases.

### Vowel harmony
#### Vowel harmony for short vowels

* RULE:  **Vowel harmony A:а** gives a after stems with a or juu

* *басаган>г{A}й*
* *басаган>0ай*

* *бари>х{A}л{A}{A}р*
* *бари>халаар*

* RULE:  **Vowel harmony A:я** gives я after stems with a or juu

* *хара>х{A}й{A}{A}*
* *хара>ха0яа*
* *бари>х{A}й{A}{A}*
* *бари>ха0яа*

* RULE:  **Vowel harmony A:o** gives o after stems with o or jo

* *самолёт>{D}{A}^END*
* *самолёд>то0*

* RULE:  **Vowel harmony A:э** gives e after e etc

* *басаган>г{A}й*
* *басаган>0ай*

* *бэелэ>х{A}^END*
* *бэел0>хэ0*

* *автоматизировалэ>х{A}*
* *автоматизировал0>хэ*

* RULE:  **Vowel harmony A:ё** gives ё after stems with o or jo

* *самолёт>{D}{A}^END*
* *самолёд>то0*

* RULE:  **Vowel harmony A:е** gives е after e etc and preceeding 

* RULE:  **Vowel harmony й:0** deletes й in front of A

* RULE:  **Vowel harmony U:у** gives a after stems with a or juu

* RULE:  **Vowel harmony U:ү** gives e after e etc

#### Vowel harmony for long vowels

* RULE:  **Vowel harmony ӨӨ:аa** gives aa after a

* *анг>һ{Ө}{Ө}^END*
* *анг>һаа0*

* *аха>һ{Ө}{Ө}^END*
* *аха>һаа0*

* RULE:  **Vowel harmony ӨӨ:оо** gives oo after o

* RULE:  **Vowel harmony ӨӨ:ээ** gives ee after e

* RULE:  **Vowel harmony ӨӨ:өө** gives ø after ø

#### Realisation of I as ы and и

* RULE:  **{I}{I} to ы in Gen/Acc and Poss 1** gives y for the first I

* RULE:  **{I}{I} to ы in Gen/Acc and Poss 2** deletes the second I

* *Байгал>{I}{I}нь^END*
* *Байгал>ы0нь0*

* *аба>{I}{I}нь^END*
* *аба>00нь0*

* *аба>{I}{I}е^END*
* *аб0>ы0е0*

* RULE:  **{I}{I} to ии in Gen/Acc and Poss** changes both I to i

* *морин>{I}{I}нь^END*
* *морин>иинь0*

### Other vowel rules
#### Vowel deletion rules

* RULE:  **Final stem vowel deletion before ые and ын** 

* *аха>{A}{A}р^END*
* *ах0>аар0*

* RULE:  **Deletion of и in word-final иие and Deletion SHV and Vowel harmony и:0** 

* *бари>{A}{A}*
* *бар0>яа*

* *һургуули>{I}{I}н^END*
* *һургуул0>иин0*

* RULE:  **Deletion of ы in -ые for aj and VV stems** 

* RULE:  **Deletion of Y in predicative particle -b for vowel stem** 

* *би>б{Y}^END*
* *би>б00*

#### Vowel change rules

* RULE:  **Y to i in predicative particle -bi for consonant stem** 

* *тэдэнэр>б{Y}^END*
* *тэдэнэр>би0*

### Consonant rules
#### Consonant change rules

* RULE:  **D to t suffix initially for VC stems** 

* *сэсэг>{D}{A}^END*
* *сэсэг>тэ0*

* RULE:  **D to d after n i l  ** 

* RULE:  **Final consonant ptd voicing to bdg in loanwords** 

* *самолёт>{A}й^END*
* *самолёд>ой0*

#### Consonant deletion rules

* RULE:  **Deletion of possessive м2 for consonant stems** 

* RULE:  **Deletion of n before m in possessive and before gAAr** 

* *һанаан>{I}{I}е^END*
* *һанаа0>ы0е0*

* RULE:  **Deletion of g in word-final ng and before gaj and haa** 

* *анг>{D}{A}^END*
* *ан0>да0*

* *анг>һ{Ө}{Ө}^END*
* *анг>һаа0*

* *ури>н{A}>б*
* *ури>на>б*

* *амила>х{A}^END*
* *амил0>ха0*

* *боли>х{A}^END*
* *боли>хо0*

* *дохи>х{A}^END*
* *дохи>хо0*

* *зори>х{A}^END*
* *зори>хо0*

* *орхи>х{A}^END*
* *орхи>хо0*

* *долгил>х{A}^END*
* *долгил>хо0*

* *хушажархи>х{A}^END*
* *хушажархи>ха0*

* *орило>х{A}^END*
* *орил0>хо0*

* *доһоло>х{A}^END*
* *доһол0>хо0*

* *гэршэлэ>х{A}^END*
* *гэршэл0>хэ0*

* *һуу>х{A}й{A}{A}*
* *һуу>ха0яа*

* *т* `е` (Eng. с т р а б о т а е т)
* *в* `т` (Eng. е с т е о ш и б к а)

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/phonology.twolc](https://github.com/giellalt/lang-bxr/blob/main/src/fst/morphology/phonology.twolc)</small>

---

## src-fst-morphology-root.lexc.md 


## Buryaad morphological analyser                      !
INTRODUCTION TO MORPHOLOGICAL ANALYSER OF BURYAAD.

## Definitions for Multichar_Symbols

* +N	      Noun 
* +V	      Verb
* +A	      Adjective
* +Adv      Adverb
* +Pcle      Particles (Probably adverbs, look into this)
* +CC	      Conjunction
* +CS	      Subjunction
* +Interj   Interjection
* +Pron     Pronoun
* +Prop     Propernoun
* +Num      Numaral
* +Det      Determiner (Demonstrative?)
* +Po      Postposition
* +Symbol = independent symbols in the text stream, like £, €, ©

* +Prs     Present
* +Fut     Future
* +Prt     Preterite
* +Prf     Perfect
* +Ind     Indicative
* +Imp     Imperative
* +Cond    Conditional
* +Opt     Optative
* +Vol     Voluntative
* +Dur     Durative
* +Term     Terminative
* +Conf     Conf

* +Sg1     first person singular
* +Sg2     second person singular
* +Sg3     third person singular
* +Pl1     first person plural
* +Pl2     second person plural
* +Pl3     third person plural

* +Inf     Infinitive
* +Pos     Positive
* +Neg     Negative

* +TV     Transitive
* +IV      Intransitive

* +Sg      Singular
* +Pl      Plural

* +Nom     Nominative
* +Acc     Accusative
* +Gen     Genitive
* +Abl     Ablative
* +Dat     Dative
* +Ins     Instrumental
* +Com     Comitative
* +Ord     Ordinal
* +Presc    Prescriptive mood

* +AgPrc   
* +AgConstPrc   
* +DualPrc      
* +FutPrc	      
* +HabPrc	      
* +ImpfPrc      
* +PassPrc      
* +PrfPrc       
* +PotPrc	      
* +PrsPrc	      
* +ResPrc	      

* +ConMod    
* +ConImpf    
* +ConPrf    
* +ConCond    
* +ConConc    
* +ConTerm    
* +ConCntmp    
* +ConAbtmp    
* +ConFin    
* +ConIntnt    
* +ConSucc    
* +ConCmp    

* +PxSg1   first person singular possessive
* +PxSg2   second person singular possessive
* +PxSg3   third person singular possessive
* +PxPl1   first person plural possessive
* +PxPl2   second person plural possessive
* +PxPl3   third person plural possessive
* +Px3   third person plural possessive

## Semantic tags
* +Sem/Mal    

## Other tags
To be properly organised

* %{A%}   letter class 
* %{D%}   letter class 
* %{G%}   letter class 
* %{I%}   letter class 
* %{J%}   letter class 
* %{U%}   letter class 
* %{V%}   letter class 
* %{Ө%}   letter class 
* %{Y%}   kept after Cns, deleted after Vow

* а2 я2 м2  these are а and я in Russian loanwords that do not weaken to ых

* %^END   we do the mhr trick to harmonise twolc and lexc

### Usage tags

* +Use/NG   Do not generate 

### Symbols that need to be escaped on the lower side (towards twolc):
* **»7**:  Literal »
* **«7**:  Literal «
```
 %[%>%]  - Literal >
 %[%<%]  - Literal <
```

### Flag diacritics
We have manually optimised the structure of our lexicon using following
flag diacritics to restrict morhpological combinatorics - only allow compounds
with verbs if the verb is further derived into a noun again:
|  @P.NeedNoun.ON@ | (Dis)allow compounds with verbs unless nominalised
|  @D.NeedNoun.ON@ | (Dis)allow compounds with verbs unless nominalised
|  @C.NeedNoun@ | (Dis)allow compounds with verbs unless nominalised

For languages that allow compounding, the following flag diacritics are needed
to control position-based compounding restrictions for nominals. Their use is
handled automatically if combined with +CmpN/xxx tags. If not used, they will
do no harm.
|  @P.CmpFrst.FALSE@ | Require that words tagged as such only appear first
|  @D.CmpPref.TRUE@ | Block such words from entering ENDLEX
|  @P.CmpPref.FALSE@ | Block these words from making further compounds
|  @D.CmpLast.TRUE@ | Block such words from entering R
|  @D.CmpNone.TRUE@ | Combines with the next tag to prohibit compounding
|  @U.CmpNone.FALSE@ | Combines with the prev tag to prohibit compounding
|  @P.CmpOnly.TRUE@ | Sets a flag to indicate that the word has passed R
|  @D.CmpOnly.FALSE@ | Disallow words coming directly from root.

Use the following flag diacritics to control downcasing of derived proper
nouns (e.g. Finnish Pariisi -> pariisilainen). See e.g. North Sámi for how to use
these flags. There exists a ready-made regex that will do the actual down-casing
given the proper use of these flags.
|  @U.Cap.Obl@ | Allowing downcasing of derived names: deatnulasj.
|  @U.Cap.Opt@ | Allowing downcasing of derived names: deatnulasj.

Key lexicon

**LEXICON Root ** is where it all starts, with these lexica:

* Noun ;				   
* urj-Cyrl-ProperNouns ; 
* bxr-Propernouns ;	   
* Verb ;				   
* Adjective ;			   
* Adverb ;			   
* Subjunction ;		   
* Interjection ;		   
* Pronoun ;			   
* Propernoun ;			   
* Postposition ;		    
* Particles ;		    , these should rather be adverbs
* Punctuation ;		   
* Symbols     ;		   
* Conjunction ;		   
* Numeral ;		    
* Abbreviation ;		    

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/root.lexc](https://github.com/giellalt/lang-bxr/blob/main/src/fst/morphology/root.lexc)</small>

---

## src-fst-morphology-stems-adjectives.lexc.md 

## Buryaad adjectives

here there are some 500 adjectives from the Apertium source files.

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/adjectives.lexc](https://github.com/giellalt/lang-bxr/blob/main/src/fst/morphology/stems/adjectives.lexc)</small>

---

## src-fst-morphology-stems-adverbs.lexc.md 


## Buryaad adverbs

Here follows a lost of some 20 adverbs.

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/adverbs.lexc](https://github.com/giellalt/lang-bxr/blob/main/src/fst/morphology/stems/adverbs.lexc)</small>

---

## src-fst-morphology-stems-bxr-propernouns.lexc.md 


## Buryaad proper nouns

This file is still empty.

It will eventually contain Buryaad-specific names. General Russian
and international names will be taken from the urj-Cyrl file.

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/bxr-propernouns.lexc](https://github.com/giellalt/lang-bxr/blob/main/src/fst/morphology/stems/bxr-propernouns.lexc)</small>

---

## src-fst-morphology-stems-conjunctions.lexc.md 

## Buryaad conjunctions

This file is still empty.

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/conjunctions.lexc](https://github.com/giellalt/lang-bxr/blob/main/src/fst/morphology/stems/conjunctions.lexc)</small>

---

## src-fst-morphology-stems-interjections.lexc.md 

## Buryaad interjections

This file is still empty.

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/interjections.lexc](https://github.com/giellalt/lang-bxr/blob/main/src/fst/morphology/stems/interjections.lexc)</small>

---

## src-fst-morphology-stems-nouns.lexc.md 

## Buryaad noun stems

* **LEXICON Noun ** the lexicon itself

There are some names here, they should eventually
be moved to bxr-propernouns.lexc

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/nouns.lexc](https://github.com/giellalt/lang-bxr/blob/main/src/fst/morphology/stems/nouns.lexc)</small>

---

## src-fst-morphology-stems-numerals.lexc.md 



###  **LEXICON NUM-PREFIXES**
This lexicon contains a number of letters and other
symbols found in front of digits. Their continuation
lexicons should probably be changed as we restructure
the arabic numerals.

* **LEXICON ARABIC** arabic numerals

* **LEXICON ARABICLOOP**

* **LEXICON ARABICLOOPORD** ordinals

* **LEXICON ARABICDELIMITER**  blank + 3 delim, what does the lg counc prefer?

* **LEXICON ROMAN**  roman numerals

* **LEXICON ROM-THOUSAND**

* **LEXICON ROM-THOUSAND-TAG**

* **LEXICON ROM-HUNDRED**

* **LEXICON ROM-HUNDRED-TAG**

* **LEXICON ROM-TEN**

* **LEXICON ROM-TEN-TAG**

* **LEXICON ROM-ONE**

* **LEXICON ROM-ONE-TAG**

* **LEXICON ROM-SPLIT**

* **LEXICON 2ROMAN**

* **LEXICON 2ROM-THOUSAND**

* **LEXICON 2ROM-THOUSAND-TAG**

* **LEXICON 2ROM-HUNDRED**

* **LEXICON 2ROM-HUNDRED-TAG**

* **LEXICON 2ROM-TEN**

* **LEXICON 2ROM-TEN-TAG**

* **LEXICON 2ROM-ONE**

* **LEXICON 2ROM-ONE-TAG**

* **LEXICON ROMNUMTAG**

* **LEXICON ISOLATED-NUMEXP** some isolated numeral expressions

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/numerals.lexc](https://github.com/giellalt/lang-bxr/blob/main/src/fst/morphology/stems/numerals.lexc)</small>

---

## src-fst-morphology-stems-particles.lexc.md 


## Buryaad particles

Consider whether these are aeverbs.

* LEXICON pcle  
    - +Pcle: # ;  

* LEXICON Particles   

    - ааб pcle "" ;   
    - бшуу pcle "" ;   
    - бэ pcle "" ;   
    - бэзэ pcle "" ;   
    - бэлэй pcle "" ;   ...

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/particles.lexc](https://github.com/giellalt/lang-bxr/blob/main/src/fst/morphology/stems/particles.lexc)</small>

---

## src-fst-morphology-stems-postpositions.lexc.md 

## Buryaad postpositions

This file contains 40 postpositions

LEXICON pp  = These are the indeclieable ones , tag +Po

LEXICON Postposition   = The lexicon

* болон pp "until" ;   
* болотор pp "until" ;   
* гадна pp "besides" ;  ... 

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/postpositions.lexc](https://github.com/giellalt/lang-bxr/blob/main/src/fst/morphology/stems/postpositions.lexc)</small>

---

## src-fst-morphology-stems-pronouns.lexc.md 

## Buryaad pronouns

This file contains pronouns.

So far, the following pronouns are covered:

* **@CODE***

    - **@CODE***

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/pronouns.lexc](https://github.com/giellalt/lang-bxr/blob/main/src/fst/morphology/stems/pronouns.lexc)</small>

---

## src-fst-morphology-stems-propernouns.lexc.md 


## Propernouns

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/propernouns.lexc](https://github.com/giellalt/lang-bxr/blob/main/src/fst/morphology/stems/propernouns.lexc)</small>

---

## src-fst-morphology-stems-subjunctions.lexc.md 

## Buryaad subjunctions

This file is still empty.

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/subjunctions.lexc](https://github.com/giellalt/lang-bxr/blob/main/src/fst/morphology/stems/subjunctions.lexc)</small>

---

## src-fst-morphology-stems-verbs.lexc.md 

## Buryaad verbs

This file is almost empty, it contains ca 40 verbs of 3 types, v1, v2, v3:

* LEXICON Verb 

Verbs marked aux may perhaps be changed to v1, ...

It is unclear whether the distinction is morphologically relevant.

Also, some of the aux-es may have wrong baseform.
    - хүрэхэ:хүрэ v1 "reach" ; 
    - һууха:һуу v2 "sit" ; 

Here come the new verbs

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/verbs.lexc](https://github.com/giellalt/lang-bxr/blob/main/src/fst/morphology/stems/verbs.lexc)</small>

---

## src-fst-transcriptions-transcriptor-abbrevs2text.lexc.md 



We describe here how abbreviations are in Russia Buriat are read out, e.g.
for text-to-speech systems.

For example:

* s.:syntynyt # ;  
* os.:omaa% sukua # ;  
* v.:vuosi # ;  
* v.:vuonna # ;  
* esim.:esimerkki # ; 
* esim.:esimerkiksi # ; 

* * *

<small>This (part of) documentation was generated from [src/fst/transcriptions/transcriptor-abbrevs2text.lexc](https://github.com/giellalt/lang-bxr/blob/main/src/fst/transcriptions/transcriptor-abbrevs2text.lexc)</small>

---

## tools-grammarcheckers-grammarchecker.cg3.md 


[ L A N G U A G E ]  G R A M M A R   C H E C K E R

## DELIMITERS

## TAGS AND SETS

### Tags

This section lists all the tags inherited from the fst, and used as tags
in the syntactic analysis. The next section, **Sets**, contains sets defined
on the basis of the tags listed here, those set names are not visible in the output.

#### Beginning and end of sentence
BOS
EOS

#### Parts of speech tags

N
A
Adv
V
Pron
CS
CC
CC-CS
Po
Pr
Pcle
Num
Interj
ABBR
ACR
CLB
LEFT
RIGHT
WEB
PPUNCT
PUNCT

COMMA
¶

#### Tags for POS sub-categories

Pers
Dem
Interr
Indef
Recipr
Refl
Rel
Coll
NomAg
Prop
Allegro
Arab
Romertall

#### Tags for morphosyntactic properties

Nom
Acc
Gen
Ill
Loc
Com
Ess
Ess
Sg
Du
Pl
Cmp/SplitR
Cmp/SgNom Cmp/SgGen
Cmp/SgGen
PxSg1
PxSg2
PxSg3
PxDu1
PxDu2
PxDu3
PxPl1
PxPl2
PxPl3
Px

Comp
Superl
Attr
Ord
Qst
IV
TV
Prt
Prs
Ind
Pot
Cond
Imprt
ImprtII
Sg1
Sg2
Sg3
Du1
Du2
Du3
Pl1
Pl2
Pl3
Inf
ConNeg
Neg
PrfPrc
VGen
PrsPrc
Ger
Sup
Actio
VAbess

Err/Orth

#### Semantic tags

Sem/Act
Sem/Ani
Sem/Atr
Sem/Body
Sem/Clth
Sem/Domain
Sem/Feat-phys
Sem/Fem
Sem/Group
Sem/Lang
Sem/Mal
Sem/Measr
Sem/Money
Sem/Obj
Sem/Obj-el
Sem/Org
Sem/Perc-emo
Sem/Plc
Sem/Sign
Sem/State-sick
Sem/Sur
Sem/Time
Sem/Txt

HUMAN

PROP-ATTR
PROP-SUR

TIME-N-SET

####  Syntactic tags

@+FAUXV
@+FMAINV
@-FAUXV
@-FMAINV
@-FSUBJ>
@-F<OBJ
@-FOBJ>
@-FSPRED<OBJ
@-F<ADVL
@-FADVL>
@-F<SPRED
@-F<OPRED
@-FSPRED>
@-FOPRED>
@>ADVL
@ADVL<
@<ADVL
@ADVL>
@ADVL
@HAB>
@<HAB
@>N
@Interj
@N<
@>A
@P<
@>P
@HNOUN
@INTERJ
@>Num
@Pron<
@>Pron
@Num<
@OBJ
@<OBJ
@OBJ>
@OPRED
@<OPRED
@OPRED>
@PCLE
@COMP-CS<
@SPRED
@<SPRED
@SPRED>
@SUBJ
@<SUBJ
@SUBJ>
SUBJ
SPRED
OPRED
@PPRED
@APP
@APP-N<
@APP-Pron<
@APP>Pron
@APP-Num<
@APP-ADVL<
@VOC
@CVP
@CNP
OBJ
<OBJ
OBJ>
<OBJ-OTHERS
OBJ>-OTHERS
SYN-V
@X

### Sets containing sets of lists and tags

This part of the file lists a large number of sets based partly upon the tags defined above, and
partly upon lexemes drawn from the lexicon.
See the sourcefile itself to inspect the sets, what follows here is an overview of the set types.

#### Sets for Single-word sets

INITIAL

#### Sets for word or not

WORD
NOT-COMMA

#### Case sets

ADLVCASE

CASE-AGREEMENT
CASE

NOT-NOM
NOT-GEN
NOT-ACC

#### Verb sets

NOT-V

#### Sets for finiteness and mood

REAL-NEG

MOOD-V

NOT-PRFPRC

#### Sets for person

SG1-V
SG2-V
SG3-V
DU1-V
DU2-V
DU3-V
PL1-V
PL2-V
PL3-V

#### Pronoun sets

#### Adjectival sets and their complements

#### Adverbial sets and their complements

#### Sets of elements with common syntactic behaviour

#### NP sets defined according to their morphosyntactic features

#### The PRE-NP-HEAD family of sets

These sets model noun phrases (NPs). The idea is to first define whatever can
occur in front of the head of the NP, and thereafter negate that with the
expression **WORD - premodifiers**.

#### Border sets and their complements

#### Grammarchecker sets

* * *

<small>This (part of) documentation was generated from [tools/grammarcheckers/grammarchecker.cg3](https://github.com/giellalt/lang-bxr/blob/main/tools/grammarcheckers/grammarchecker.cg3)</small>

---

## tools-tokenisers-tokeniser-disamb-gt-desc.pmscript.md 

## Tokeniser for bxr

Usage:
```
$ make
$ echo "ja, ja" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "Juos gorreválggain lea (dárbbašlaš) deavdit gáibádusa boasttu olmmoš, man mielde lahtuid." | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "(gáfe) 'ja' ja 3. ja? ц jaja ukjend \"ukjend\"" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "márffibiillagáffe" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

Pmatch documentation:
<https://github.com/hfst/hfst/wiki/HfstPmatch>

Characters which have analyses in the lexicon, but can appear without spaces
before/after, that is, with no context conditions, and adjacent to words:
* Punct contains ASCII punctuation marks
* The symbol after m-dash is soft-hyphen `U+00AD`
* The symbol following {•} is byte-order-mark / zero-width no-break space
`U+FEFF`.

Whitespace contains ASCII white space and
the List contains some unicode white space characters
* En Quad U+2000 to Zero-Width Joiner U+200d'
* Narrow No-Break Space U+202F
* Medium Mathematical Space U+205F
* Word joiner U+2060

Apart from what's in our morphology, there are
1. unknown word-like forms, and
2. unmatched strings
We want to give 1) a match, but let 2) be treated specially by
`hfst-tokenise -a`
Unknowns are made of:
* lower-case ASCII
* upper-case ASCII
* select extended latin symbols
* extended cyrillic
ASCII digits
* select symbols
* Combining diacritics as individual symbols,
* various symbols from Private area (probably Microsoft),
so far:
* U+F0B7 for "x in box"

### Unknown handling
Unknowns are tagged ?? and treated specially with `hfst-tokenise`
hfst-tokenise --giella-cg will treat such empty analyses as unknowns, and
remove empty analyses from other readings. Empty readings are also
legal in CG, they get a default baseform equal to the wordform, but
no tag to check, so it's safer to let hfst-tokenise handle them.

Finally we mark as a token any sequence making up a:
* known word in context
* unknown (OOV) token in context
* sequence of word and punctuation
* URL in context

* * *

<small>This (part of) documentation was generated from [tools/tokenisers/tokeniser-disamb-gt-desc.pmscript](https://github.com/giellalt/lang-bxr/blob/main/tools/tokenisers/tokeniser-disamb-gt-desc.pmscript)</small>

---

## tools-tokenisers-tokeniser-gramcheck-gt-desc.pmscript.md 

## Grammar checker tokenisation for bxr

Requires a recent version of HFST (3.10.0 / git revision>=3aecdbc)
Then just:
```
$ make
$ echo "ja, ja" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

More usage examples:
```
$ echo "Juos gorreválggain lea (dárbbašlaš) deavdit gáibádusa boasttu olmmoš, man mielde lahtuid." | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "(gáfe) 'ja' ja 3. ja? ц jaja ukjend \"ukjend\"" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "márffibiillagáffe" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

Pmatch documentation:
<https://github.com/hfst/hfst/wiki/HfstPmatch>

Characters which have analyses in the lexicon, but can appear without spaces
before/after, that is, with no context conditions, and adjacent to words:
* Punct contains ASCII punctuation marks
* The symbol after m-dash is soft-hyphen `U+00AD`
* The symbol following {•} is byte-order-mark / zero-width no-break space
`U+FEFF`.

Whitespace contains ASCII white space and
the List contains some unicode white space characters
* En Quad U+2000 to Zero-Width Joiner U+200d'
* Narrow No-Break Space U+202F
* Medium Mathematical Space U+205F
* Word joiner U+2060

Apart from what's in our morphology, there are
1) unknown word-like forms, and
2) unmatched strings
We want to give 1) a match, but let 2) be treated specially by hfst-tokenise -a
* select extended latin symbols
* select symbols
* various symbols from Private area (probably Microsoft),
so far:
* U+F0B7 for "x in box"

TODO: Could use something like this, but built-in's don't include šžđčŋ:

Simply give an empty reading when something is unknown:
hfst-tokenise --giella-cg will treat such empty analyses as unknowns, and
remove empty analyses from other readings. Empty readings are also
legal in CG, they get a default baseform equal to the wordform, but
no tag to check, so it's safer to let hfst-tokenise handle them.

Finally we mark as a token any sequence making up a:
* known word in context
* unknown (OOV) token in context
* sequence of word and punctuation
* URL in context

* * *

<small>This (part of) documentation was generated from [tools/tokenisers/tokeniser-gramcheck-gt-desc.pmscript](https://github.com/giellalt/lang-bxr/blob/main/tools/tokenisers/tokeniser-gramcheck-gt-desc.pmscript)</small>

---

## tools-tokenisers-tokeniser-tts-cggt-desc.pmscript.md 

## TTS tokenisation for smj

Requires a recent version of HFST (3.10.0 / git revision>=3aecdbc)
Then just:
```sh
make
echo "ja, ja" \
| hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

More usage examples:
```sh
echo "Juos gorreválggain lea (dárbbašlaš) deavdit gáibádusa \
boasttu olmmoš, man mielde lahtuid." \
| hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
echo "(gáfe) 'ja' ja 3. ja? ц jaja ukjend \"ukjend\"" \
| hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
echo "márffibiillagáffe" \
| hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

Pmatch documentation:
<https://kitwiki.csc.fi/twiki/bin/view/KitWiki/HfstPmatch>

Characters which have analyses in the lexicon, but can appear without spaces
before/after, that is, with no context conditions, and adjacent to words:
* Punct contains ASCII punctuation marks
* The symbol after m-dash is soft-hyphen `U+00AD`
* The symbol following {•} is byte-order-mark / zero-width no-break space
`U+FEFF`.

Whitespace contains ASCII white space and
the List contains some unicode white space characters
* En Quad U+2000 to Zero-Width Joiner U+200d'
* Narrow No-Break Space U+202F
* Medium Mathematical Space U+205F
* Word joiner U+2060

Apart from what's in our morphology, there are
1) unknown word-like forms, and
2) unmatched strings
We want to give 1) a match, but let 2) be treated specially by hfst-tokenise -a
* select extended latin symbols
* select symbols
* various symbols from Private area (probably Microsoft),
so far:
* U+F0B7 for "x in box"

TODO: Could use something like this, but built-in's don't include šžđčŋ:

Simply give an empty reading when something is unknown:
hfst-tokenise --giella-cg will treat such empty analyses as unknowns, and
remove empty analyses from other readings. Empty readings are also
legal in CG, they get a default baseform equal to the wordform, but
no tag to check, so it's safer to let hfst-tokenise handle them.

Needs hfst-tokenise to output things differently depending on the tag they get

* * *

<small>This (part of) documentation was generated from [tools/tokenisers/tokeniser-tts-cggt-desc.pmscript](https://github.com/giellalt/lang-bxr/blob/main/tools/tokenisers/tokeniser-tts-cggt-desc.pmscript)</small>
