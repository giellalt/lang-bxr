# Buryaad morphophonology

This file documents the [phonology.twolc file](http://github.com/giellalt/lang-bxr/blob/main/src/fst/phonology.twolc) 

This file expresses Buryaad morphophonological alternation, from abstract underlying forms.

# Alphabet

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


# Sets

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


# Rules

Here come all the rules (marked with RULE:), and test cases.


## Vowel harmony
### Vowel harmony for short vowels

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



### Vowel harmony for long vowels

* RULE:  **Vowel harmony ӨӨ:аa** gives aa after a

* *анг>һ{Ө}{Ө}^END*
* *анг>һаа0*

* *аха>һ{Ө}{Ө}^END*
* *аха>һаа0*

* RULE:  **Vowel harmony ӨӨ:оо** gives oo after o

* RULE:  **Vowel harmony ӨӨ:ээ** gives ee after e

* RULE:  **Vowel harmony ӨӨ:өө** gives ø after ø



### Realisation of I as ы and и

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




## Other vowel rules
### Vowel deletion rules

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

### Vowel change rules

* RULE:  **Y to i in predicative particle -bi for consonant stem** 

* *тэдэнэр>б{Y}^END*
* *тэдэнэр>би0*

## Consonant rules
### Consonant change rules

* RULE:  **D to t suffix initially for VC stems** 

* *сэсэг>{D}{A}^END*
* *сэсэг>тэ0*

* RULE:  **D to d after n i l  ** 



* RULE:  **Final consonant ptd voicing to bdg in loanwords** 

* *самолёт>{A}й^END*
* *самолёд>ой0*


### Consonant deletion rules

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
<small>This (part of) documentation was generated from [../src/fst/phonology.twolc](http://github.com/giellalt/lang-bxr/blob/main/../src/fst/phonology.twolc)</small>