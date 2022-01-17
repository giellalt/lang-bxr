
# Buryaad morphological analyser                      !
INTRODUCTION TO MORPHOLOGICAL ANALYSER OF BURYAAD.

# Definitions for Multichar_Symbols@CODE@

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
* +Symbol© = independent symbols in the text stream, like £, €, ©

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

# Semantic tags
 * +Sem/Mal    

# Other tags
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

## Usage tags

 * +Use/NG   Do not generate 


## Symbols that need to be escaped on the lower side (towards twolc):
* **»7»**:  Literal »
* **«7«**:  Literal «
```
  %[%>%]  - Literal >
  %[%<%]  - Literal <
```


## Flag diacritics
We have manually optimised the structure of our lexicon using following
flag diacritics to restrict morhpological combinatorics - only allow compounds
with verbs if the verb is further derived into a noun again:
|  @P.NeedNoun.ON@nominalised | (Dis)allow compounds with verbs unless nominalised
|  @D.NeedNoun.ON@nominalised | (Dis)allow compounds with verbs unless nominalised
|  @C.NeedNoun@nominalised | (Dis)allow compounds with verbs unless nominalised

For languages that allow compounding, the following flag diacritics are needed
to control position-based compounding restrictions for nominals. Their use is
handled automatically if combined with +CmpN/xxx tags. If not used, they will
do no harm.
|  @P.CmpFrst.FALSE@first | Require that words tagged as such only appear first
|  @D.CmpPref.TRUE@ENDLEX | Block such words from entering ENDLEX
|  @P.CmpPref.FALSE@compounds | Block these words from making further compounds
|  @D.CmpLast.TRUE@R | Block such words from entering R
|  @D.CmpNone.TRUE@compounding | Combines with the next tag to prohibit compounding
|  @U.CmpNone.FALSE@compounding | Combines with the prev tag to prohibit compounding
|  @P.CmpOnly.TRUE@R | Sets a flag to indicate that the word has passed R
|  @D.CmpOnly.FALSE@root. | Disallow words coming directly from root.

Use the following flag diacritics to control downcasing of derived proper
nouns (e.g. Finnish Pariisi -> pariisilainen). See e.g. North Sámi for how to use
these flags. There exists a ready-made regex that will do the actual down-casing
given the proper use of these flags.
|  @U.Cap.Obl@deatnulasj. | Allowing downcasing of derived names: deatnulasj.
|  @U.Cap.Opt@deatnulasj. | Allowing downcasing of derived names: deatnulasj.

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
<small>This (part of) documentation was generated from [../src/fst/root.lexc](http://github.com/giellalt/lang-bxr/blob/main/../src/fst/root.lexc)</small>