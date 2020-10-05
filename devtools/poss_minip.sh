#!/bin/bash

# script to generate paradigms for generating word forms with poss suff
# command:
# sh poss_minip.sh PATTERN
# example, when you are in bxr:
# sh devtools/poss_minip.sh NUM1 | less
# sh devtools/poss_minip.sh аба 
# Only get the lemma you ask for:
# sh devtools/poss_minip.sh '^аба[:+ ]' 


HLOOKUP=$(echo $HLOOKUP)
GTLANGS=$(echo $GTLANGS)


PATTERN=$1
L_FILE="in.txt"
cut -d '!' -f1 src/fst/stems/nouns.lexc | egrep $PATTERN | cut -d ':' -f1>$L_FILE

P_FILE="test/data/testposs.txt"

for lemma in $(cat $L_FILE);
do
 for form in $(cat $P_FILE);
 do
   echo "${lemma}${form}" | $HLOOKUP $GTLANGS/lang-bxr/src/generator-gt-norm.hfstol
 done
done

