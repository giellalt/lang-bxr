#!/bin/bash

# script to generate paradigms for generating word forms
# command:
# sh generate_contlex_para.sh PATTERN
# example, when you are in bxr:
# sh devtools/noun_minip.sh NUM1 | less
# sh devtools/noun_minip.sh аба 
# Only get the lemma you ask for:
# sh devtools/noun_minip.sh '^аба:' 


LOOKUP=$(echo $LOOKUP)
GTHOME=$(echo $GTHOME)


PATTERN=$1
L_FILE="in.txt"
cut -d '!' -f1 src/morphology/stems/nouns.lexc | egrep $PATTERN | tr ' ' ':'|cut -d ':' -f1>$L_FILE

P_FILE="test/data/testnounparadigm.txt"

for lemma in $(cat $L_FILE);
do
 for form in $(cat $P_FILE);
 do
   echo "${lemma}${form}" | $LOOKUP $GTHOME/langs/bxr/src/generator-gt-norm.xfst
 done
done

