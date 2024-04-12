This is the Eastern Mari disambiguation file. It chooses
the correct morphological analyses in any given sentence context.

The file first defines sentence delimiters and tags and sets.
Thereafter come the rules, each rule is listed below.

TODO: adapt it to BURYAAD

# Sentence delimiters

The delimiters are: "<.>" "<!>" "<?>" "<...>" "<¶>" sent

The **Tags** section lists all the tags inherited from the fst, and defines them for
use in the syntactic analysis.
The tags are documented in the root.lexc file, and here only listed for reference.

The next section, **Sets**, contains sets defined
on the basis of the tags listed here, those set names are not visible in the output.

## Tags

### Beginning and end of sentence

BOS
EOS

### Clause boundary

### Parts of speech tags

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

### Verbal tense and mood tags
Prs
Prt1
Prt2
Fut
Imprt
Ind
Cond
Des

### Other verbal tags
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

### Numeral tags

Sg
Pl

### Case tags

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

### Other nominal tags

Pers
Refl
Rel
Interr
Recipr
Dem
ABBR

### Adjective comparison tags

Pos (?)
Superl
Comp

### Possessive suffix tags

PxSg1
PxSg2
PxSg3
PxPl1
PxPl2
PxPl3

### Numeral tags

Card
Coll
Ord
Temp (?)

### Punctuation marks

CLB
PUCT
LEFT
RIGHT
COMMA

### Derivation tags
Der/MWN
Der/sa

### Particles
Qst
Foc

### Tags for internal testing
CmpTest
Err

## Sets

* **CASE** = all cases
* **OBLCASE** = All cases except Nom
* **VFIN** = All moods

# Rule section

## Early, contextless rules

## Phrase internal rules

## Verb disambituation rules

### Participles

Plural verbforms
* **BolonBusad** and others gives plural

ConMod

* * *

<small>This (part of) documentation was generated from [src/cg3/disambiguator.cg3](https://github.com/giellalt/lang-bxr/blob/main/src/cg3/disambiguator.cg3)</small>
