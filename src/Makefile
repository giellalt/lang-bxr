# *************************************************************** #
# This is a makefile that builds the Faroese morphological parser #
# *************************************************************** #

XFST = xfst
LEXC = lexc
TWOLC = twolc

#ifeq (victorio.uit.no, $(shell hostname))
#XFST = /opt/sami/xerox/c-fsm/ix86-linux2.6-gcc3.4/bin/fst -utf8
#LEXC = /opt/sami/xerox/bin/lexc -utf8
#TWOLC = /opt/sami/xerox/bin/twolc -utf8
#endif

scripts=$(GTHOME)/gt/script

LEX = bxr-lex.txt \
	  noun-bxr-lex.txt \
	  noun-bxr-morph.txt 
#	  propernoun-bxr-lex.txt \
#	  propernoun-bxr-morph.txt \
#	  adj-bxr-lex.txt \
#	  adj-bxr-morph.txt \
#	  verb-bxr-lex.txt \
#	  verb-bxr-morph.txt \
#	  adv-bxr-lex.txt \
#	  abbr-bxr-lex.txt \
#	  acro-bxr-lex.txt \
#	  pron-bxr-lex.txt \
#	  punct-bxr-lex.txt \
#	  numeral-bxr-lex.txt \
#	  pp-bxr-lex.txt \
#	  cc-bxr-lex.txt \
#	  cs-bxr-lex.txt \
#	  interj-bxr-lex.txt \
#	  det-bxr-lex.txt

all: ibxr.fst

# The ultimate goal is to build ibxr.fst, the generator
# This goal depends on bxr.save being up to date.

ibxr.fst: ../bin/ibxr.fst
../bin/ibxr.fst: ../bin/bxr.save \
				 ../bin/bxr.fst \
#				 ../bin/tok.fst \
				 ../bin/abbr.txt \
#            	 ../bin/allcaps.fst \
		 ../bin/bxr-dis.bin \
		 ../bin/bxr-dep.bin 
#            	 ../bin/tagfix.fst
	@echo
	@echo "*** Building the inverse ibxr.fst ***"
	@echo
	@printf "load $< \n\
	invert net \n\
	save stack $@ \n\
	quit \n" > ../tmp/ibxr-fst-script
	$(XFST)  < ../tmp/ibxr-fst-script
	@rm -f ../tmp/ibxr-fst-script


# The first goal is to build bxr.fst, the analyzer.
# This goal depends on bxr.save and inituppercase.fst being up to date
bxr.fst: ../bin/bxr.fst
../bin/bxr.fst: ../bin/bxr.save \
				../bin/inituppercase.fst 
#				../bin/allcaps.fst \
#				../bin/tok.fst 
#				../bin/tagfix.fst
	@echo
	@echo "*** Building bxr.fst ***" ;
	@echo
	@printf "read regex  @\"../bin/bxr.save\" \
					.o. @\"../bin/inituppercase.fst\" ; \n\
	save stack $@ \n\
	quit \n" > ../tmp/bxr-fst-script
	$(XFST)  < ../tmp/bxr-fst-script
	@rm -f ../tmp/bxr-fst-script


# Here we make the abbrevation file for our current preprocessor, 
# the perl-based preprocess (located in the script catalogue)
empty:=
comma:=,
space:=$(empty) $(empty)
ABBRSRCS=$(subst $(space),$(comma),$(LEX))

abbr: ../bin/abbr.txt
../bin/abbr.txt: $(scripts)/abbr-extract.pl \
				 $(scripts)/langTools/Util.pm \
				 $(LEX)
	@echo
	@echo "*** Extracting abbreviations from abbr-bxr-lex.txt to abbr.txt ***" ;
	@echo
	@perl -I $(scripts) $(scripts)/abbr-extract.pl \
		--output=$@ \
		--abbr_lex=abbr-bxr-lex.txt \
		--lex=$(ABBRSRCS)


#tagfix.fst: ../bin/tagfix.fst
#../bin/tagfix.fst: tagfix.xfst
#	@echo
#	@echo "*** Building $(notdir $@) ***" ;
#	@echo
#	$(XFST) -e "source < tagfix.xfst" \
#			-e "save stack   ../bin/tagfix.fst " \
#			-stop

#allcaps.fst: ../bin/allcaps.fst
#../bin/allcaps.fst: allcaps.xfst
#	@echo
#	@echo "*** Building $(notdir $@) ***" ;
#	@echo
#	$(XFST) -e "source < $< " \
#			-e "save stack   $@ " \
#			-stop


inituppercase.fst: ../bin/inituppercase.fst
../bin/inituppercase.fst: inituppercase.regex
	@echo
	@echo "*** Building $(notdir $@) ***" ;
	@echo
	$(XFST) -e "read regex < $< " \
			-e "save stack   $@ " \
			-stop

# The third goal is to build bxr.save
# This goal depends on twol-bxr.bin and a bunch of lexicon files
bxr.save: ../bin/bxr.save
../bin/bxr.save: ../bin/twol-bxr.bin $(LEX)
	@echo
	@echo "*** Building bxr-lex.save ***" ;
	@echo
	printf "compile-source $(LEX)  \n\
	read-rules $< \n\
	compose-result \n\
	save-result $@ \n\
	quit \n" > ../tmp/bxr-lex-save-script
	$(LEXC)  < ../tmp/bxr-lex-save-script
	rm -f ../tmp/bxr-lex-save-script


# The fourth goal is to build twol-bxr.bin
# This goal depends on twol-bxr.txt
twol-bxr.bin: ../bin/twol-bxr.bin
../bin/twol-bxr.bin: twol-bxr.txt
	@echo
	@echo "*** Building twol-bxr.bin ***" ;
	@echo
	@printf "read-grammar twol-bxr.txt \n\
	compile \n\
	save-binary ../bin/twol-bxr.bin \n\
	quit \n" > ../tmp/twol-bxr-script
	$(TWOLC)  < ../tmp/twol-bxr-script
	@rm -f ../tmp/twol-bxr-script

# # Here we include a preprocessor.
# # This goal depends on tok.regex
# tok.fst: ../bin/tok.fst 
# ../bin/tok.fst: tok.xfst
# 	@echo
# 	@echo "*** Building the tokenizer $(notdir $@) ***" ;
# 	@echo
# 	@printf "source $< \n\
# 	save stack $@ \n\
# 	quit \n" > ../tmp/tok-script
# 	$(XFST)  < ../tmp/tok-script
# 	@rm -f ../tmp/tok-script

# Let us just make a binary disambiguator
# and dependency grammar.
# They can be used instead of the source files.
dis-bin: ../bin/bxr-dis.bin
../bin/%.bin: %.rle
	@echo
	@echo "*** Building a binary $(notdir $@) ***" ;
	@echo
	@vislcg3 --grammar $< \
			 --grammar-only \
			 --grammar-bin $@ \
			 -C UTF-8

# "make clean" is there to remove the binary files at will.
clean:
	@rm -f ../bin/*
