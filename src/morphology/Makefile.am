## Process this file with automake to produce Makefile.in

## Copyright (C) 2011 Samediggi

## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.

## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.

## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

# Set this to name of lexc file containing Multichar_Symbols and LEXICON Root
GT_LEXC_ROOT=root.lexc

# Set this to the names of all regular lexc source files:
GT_LEXC_SRCS_L1_L2=\
			 affixes/nouns.lexc \
			 affixes/propernouns.lexc \
			 affixes/verbs.lexc \
			 stems/adjectives.lexc \
			 stems/adverbs.lexc \
			 stems/interjections.lexc \
			 stems/subjunctions.lexc \
			 stems/nouns.lexc \
			 stems/postpositions.lexc \
			 stems/pronouns.lexc \
			 stems/punctuation.lexc \
			 stems/subjunctions.lexc \
			 stems/verbs.lexc \
			 clitics.lexc

#			 stems/numerals.lexc \
#			 affixes/propernouns.lexc \
# If you are building an error-detecting L2 analyser, specify the lexc files
# that differ between the regular L1 and the L2 analysers below, in L1 and
# L2 respectively. L2 files must end in "*-L2.lexc". See SME for an example.
L1=

L2=

GT_LEXC_SRCS=\
			$(GT_LEXC_SRCS_L1_L2) \
			$(L1)

GT_LEXC_L2_SRCS=\
			$(GT_LEXC_SRCS_L1_L2) \
			$(L2)

# Set this to the names of all generated lexc files, if any
GENERATED_LEXC_SRCS=\
			generated_files/urj-Cyrl-$(GTLANG)-propernouns.lexc

# Set this to the names of all source xml files, if any
GT_XML_SRCS=
# Set this to the names of all generated lexc files, if any

# Define any additional sources here (compiled on their own, or just included
# in the distro):
GT_LOCAL_SRCS=

### BEGIN: Local processing: ###

generated_files/urj-Cyrl-propernouns.lexc: \
	$(GTCORE)/gtdshared/urj-Cyrl/src/morphology/stems/urj-Cyrl-propernouns.lexc
	$(AM_V_CP)cp -f $< $@

generated_files/urj-Cyrl-$(GTLANG)-propernouns.lexc: \
		generated_files/urj-Cyrl-propernouns.lexc \
		$(srcdir)/stems/$(GTLANG)-propernouns.lexc
	$(AM_V_at)rm -f $@
	$(AM_V_GEN)cp -f $(srcdir)/stems/$(GTLANG)-propernouns.lexc $@
	$(AM_V_at)echo "" >> $@
	$(AM_V_at)echo "! <--- Dump from urj-Cyrl -->" >> $@
	$(AM_V_at)echo "" >> $@
	$(AM_V_GEN)$(top_srcdir)/src/scripts/urj-Cyrl-bxr-conversion.pl $< >> $@


### END: Local processing: ###

include $(top_srcdir)/am-shared/src-morphology-dir-include.am

# vim: set ft=automake:
