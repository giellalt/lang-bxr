# Buryaad verb affixes

This is the file for Buryaad verb morphology. The documentation
shortly explains the rationale behind each continuation lexicon.

## The verb classes

### Auxiliary verbs

No auxiliary verbs for now.

### Ordinary verbs

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

## Verb morphology
We see the contlexes as two layers: The first layer to divide
the different stem types into different suffix lexica, and
the one for these suffixes.

### Layer one: Dividing v1, v2, v3 into suffix lexica

* **LEXICON v1lex ** the common v1 morphology

* **LEXICON v2lex ** the common v2 morphology

### Layer two: The suffix lexica themselves.

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

