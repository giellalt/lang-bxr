## Process this file with automake to produce Makefile.in
## Copyright: Sámediggi/Divvun/UiT
## Licence: GPL v3+

# List all jspwiki files that should be created from source files in the
# JSP_PAGES variable. The filename pattern is as follows:
#
# dir/filename.lexc => filename-dir.jspwiki

if CAN_DOCC

JSP_PAGES=root-morphology.jspwiki \
	bxr-phon-phonology.jspwiki      \
	clitics-morphology.jspwiki       \
	nouns-stems.jspwiki              \
	nouns-affixes.jspwiki            \
	adjectives-stems.jspwiki         \
	postpositions-stems.jspwiki        \
	adverbs-stems.jspwiki            \
	conjunctions-stems.jspwiki       \
	interjections-stems.jspwiki      \
	pronouns-stems.jspwiki           \
	bxr-propernouns-stems.jspwiki        \
	punctuation-stems.jspwiki        \
	subjunctions-stems.jspwiki       \
	verbs-stems.jspwiki              \
	propernouns-affixes.jspwiki      \
	verbs-affixes.jspwiki

ALLINONE_JSP_PAGE=$(srcdir)/$(GTLANG).jspwiki

LINKS=$(srcdir)/Links.jspwiki

endif # CAN_DOCC

include $(top_srcdir)/am-shared/doc-dir-include.am
