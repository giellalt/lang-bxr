#!/usr/bin/perl -w
#
# svn copied from smi-smj-conversion.pl
# Convert names in the URJ-CYRL propernoun lexicon to myv when developed.
# $Id: urj-Cyrl-myv-conversion.pl 65676 2012-11-17 06:29:19Z jaska $

use strict;
use utf8;
use feature 'unicode_strings';
BEGIN {
       $| = 1;
       binmode(STDIN, ':encoding(UTF-8)');
       binmode(STDOUT, ':encoding(UTF-8)');
}
use open qw( :encoding(UTF-8) :std );

while(<>) {
	# Continuation lexicon substitutions:
	s/ CYRL-A_SUR/ PROP2/g ;
	s/ CYRL-CONS_SUR/ PROP2/g ;
	s/ CYRL-K_SUR/ PROP2/g ;
	s/ CYRL-L_SUR/ PROP2/g ;
	s/ CYRL-SIBILANT_SUR/ PROP2/g ;
	s/ CYRL-T_SUR/ PROP2/g ;
	s/ CYRL-VOW_SUR/ PROP1/g ;
	s/ CYRL-А_SUR/ PROP1/g ;
	s/ CYRL-К_SUR/ PROP2/g ;
	s/ CYRL-Л_SUR/ PROP2/g ;
	s/ CYRL-Т_SUR/ PROP2/g ;
	s/ Deriv-RUS-AN_SURMAL/ PROP2/g ;
	s/ Deriv-RUS-IJ_SURMAL/ PROP2/g ;
	s/ Deriv-RUS-IN_SURMAL/ PROP2/g ;
	s/ Deriv-RUS-KIJ_SURMAL/ PROP2/g ;
	s/ Deriv-RUS-OJ_SURMAL/ PROP2/g ;
	s/ Deriv-RUS-V_SURMAL/ PROP2/g ;
	s/ Deriv-RUS-YJ_SURMAL/ PROP2/g ;
	s/ Deriv-RUS-АН_SURMAL/ PROP2/g ;
	s/ Deriv-RUS-В_SURMAL/ PROP2/g ;
	s/ Deriv-RUS-ИЙ_SURMAL/ PROP1/g ;
	s/ Deriv-RUS-ИН_SURMAL/ PROP1/g ;
	s/ Deriv-RUS-КИЙ_SURMAL/ PROP1/g ;
	s/ Deriv-RUS-ОЙ_SURMAL/ PROP1/g ;
	s/ Deriv-RUS-ЫЙ_SURMAL/ PROP1/g ;
	s/ PROP_KUDO_SURFEM/ PROP2/g ;
	s/ PROP-PLC_KAL/ PROP2/g ;
	s/ PROP-PLC_KIT/ PROP2/g ;
	s/ PROP-PLC_KUDO/ PROP2/g ;
	s/ PROP-PLC_КАЛ/ PROP2/g ;
	s/ PROP-PLC_КИТ/ PROP2/g ;
	s/ PROP-PLC_КУДО/ PROP1/g ;
	s/ PROP_KAL_FEM/ PROP2/g ;
	s/ PROP_KAL_MAL/ PROP2/g ;
	s/ PROP_KIT_FEM/ PROP2/g ;
	s/ PROP_KIT_MAL/ PROP2/g ;
	s/ PROP_KIT_SUR/ PROP2/g ;
	s/ PROP_KUDO_FEM/ PROP2/g ;
	s/ PROP_KUDO_MAL/ PROP2/g ;
	s/ PROP_KUDO_PATRFEM/ PROP2/g ;
	s/ PROP_LAK_MAL/ PROP2/g ;
	s/ PROP_OSH_FEM/ PROP2/g ;
	s/ PROP_OSH_MAL/ PROP2/g ;
	s/ PROP_OSH_PATRMAL/ PROP2/g ;
	s/ PROP_OSH_SUR/ PROP2/g ;
	s/ PROP_КАЛ_FEM/ PROP2/g ;
	s/ PROP_КАЛ_MAL/ PROP2/g ;
	s/ PROP_КИТ_FEM/ PROP2/g ;
	s/ PROP_КИТ_MAL/ PROP2/g ;
	s/ PROP_КИТ_SUR/ PROP2/g ;
	s/ PROP_КУДО_FEM/ PROP2/g ;
	s/ PROP_КУДО_MAL/ PROP2/g ;
	s/ PROP_КУДО_PATRFEM/ PROP2/g ;
	s/ PROP_ЛАК_MAL/ PROP2/g ;
	s/ PROP_ОШ_FEM/ PROP2/g ;
	s/ PROP_ОШ_MAL/ PROP2/g ;
	s/ PROP_ОШ_PATRMAL/ PROP2/g ;
	s/ PROP_ОШ_SUR/ PROP2/g ;
	s/ PropNameMaleDer-I-YEvich/ PROP2/g ;
	s/ PropNameMaleDer-IJ-I0Evich/ PROP2/g ;
	s/ PropNameMaleDer-IJ-Y0Evich/ PROP2/g ;
	s/ PropNameMaleDer-J-0Evich/ PROP2/g ;
	s/ PropNameMaleDer-Ovich/ PROP2/g ;
	s/ PropNameMaleDer-Y-0Evich/ PROP2/g ;

	my $line = $_;

	print $line ; #  unless ($line =~ m/КУДО/) ;
	
}

