# This file has been generated by Squirrel/MMDS [genhdr 1.23*], 09/01/2003 22:30
# DO NOT EDIT MANUALLY!

# This file will initialize
#  - $DTP_... defines
#  - $HDR_... defines
#  - @dtp_name  ($DTP_... -> name)
#  - %dtp_name  (name -> $DTP_...)
#  - %hdr_tag   (header name -> $HDR... value)
#  - @hdr_name  ($HDR_... -> header name)
#  - @dtp_allow (bit vector for allowed headers)
#  - @hdr_dtp   (doc type for this header, if significant)
#  - @dtp_mand  (:-separated list of mandatory headers)
#  - $hdr_set   (bit vector for headers that were explicitly set)
#  - NLS tables

# Enumerating document types.
$::DTP_GENERIC    =  0;
$::DTP_MEMO       =  1;
$::DTP_MREP       =  2;
$::DTP_REPORT     =  3;
$::DTP_NOTE       =  4;
$::DTP_OFFERING   =  5;
$::DTP_LETTER     =  6;
$::DTP_SLIDES     =  7;
$::DTP_IMP        =  8;

# Enumerating NLS items.
$::TXT_NULL       =  0;
$::TXT_LANG       =  1;
$::TXT_LANGUAGE   =  2;
$::TXT_MEMO       =  3;
$::TXT_TOC        =  4;
$::TXT_COS        =  5;
$::TXT_SECTION    =  6;
$::TXT_MAP        =  7;
$::TXT_PAGE       =  8;
$::TXT_REF        =  9;
$::TXT_PHEXT      = 10;
$::TXT_CLOSING    = 11;
$::TXT_CONFMGT    = 12;
$::TXT_CONFSTAT   = 13;
$::TXT_DRAFT      = 14;
$::TXT_INDEX      = 15;
$::FMT_MEETING    = 16;
$::PAT_CONFIGMGT  = 17;
$::PAT_ANNOUNCE   = 18;

# Enumerating headers.
$::HDR_NULL       =  0;
$::HDR_ABSENT     =  1;
$::HDR_AUTHOR     =  2;
$::HDR_CC         =  3;
$::HDR_CITY       =  4;
$::HDR_CLOSING    =  5;
$::HDR_CMPY       =  6;
$::HDR_COMPANY    =  7;
$::HDR_DATE       =  8;
$::HDR_DEPT       =  9;
$::HDR_DOCID      = 10;
$::HDR_DOCUMENTSTYLE = 11;
$::HDR_ENCL       = 12;
$::HDR_FROM       = 13;
$::HDR_INDEX      = 14;
$::HDR_MEETING    = 15;
$::HDR_MHID       = 16;
$::HDR_NEXT       = 17;
$::HDR_NOTE       = 18;
$::HDR_NUMBER     = 19;
$::HDR_OFFERING   = 20;
$::HDR_OPENING    = 21;
$::HDR_OK         = 22;
$::HDR_OPTIONS    = 23;
$::HDR_PHONE      = 24;
$::HDR_PRESENT    = 25;
$::HDR_PROJECT    = 26;
$::HDR_REF        = 27;
$::HDR_SECR       = 28;
$::HDR_SECTION    = 29;
$::HDR_SLIDES     = 30;
$::HDR_SUBJECT    = 31;
$::HDR_TITLE      = 32;
$::HDR_TO         = 33;
$::HDR_VERSION    = 34;

# Document types.
@::dtp_name = (
 "generic",            	#  0  DTP_GENERIC
 "memo",               	#  1  DTP_MEMO
 "mrep",               	#  2  DTP_MREP
 "report",             	#  3  DTP_REPORT
 "note",               	#  4  DTP_NOTE
 "offering",           	#  5  DTP_OFFERING
 "letter",             	#  6  DTP_LETTER
 "slides",             	#  7  DTP_SLIDES
 "imp",                	#  8  DTP_IMP
);
%::dtp_name = (
 generic                =>  0,
 memo                   =>  1,
 mrep                   =>  2,
 report                 =>  3,
 note                   =>  4,
 offering               =>  5,
 letter                 =>  6,
 slides                 =>  7,
 imp                    =>  8,
);

# Official names.
@::hdr_name = (
 "",                   	#  0  HDR_NULL
 "Afwezig",            	#  1  HDR_ABSENT
 "Auteur",             	#  2  HDR_AUTHOR
 "C.c.",               	#  3  HDR_CC
 "Plaats",             	#  4  HDR_CITY
 "Groet",              	#  5  HDR_CLOSING
 "Bedrijfscode",       	#  6  HDR_CMPY
 "Bedrijf",            	#  7  HDR_COMPANY
 "Datum",              	#  8  HDR_DATE
 "Afdeling",           	#  9  HDR_DEPT
 "Doc-Id",             	# 10  HDR_DOCID
 "Documentopmaak",     	# 11  HDR_DOCUMENTSTYLE
 "Bijlage",            	# 12  HDR_ENCL
 "Van",                	# 13  HDR_FROM
 "Index",              	# 14  HDR_INDEX
 "Vergadering",        	# 15  HDR_MEETING
 "MH-Id",              	# 16  HDR_MHID
 "Volgdoc",            	# 17  HDR_NEXT
 "TechNote",           	# 18  HDR_NOTE
 "Volgnummer",         	# 19  HDR_NUMBER
 "Offerte",            	# 20  HDR_OFFERING
 "Aanhef",             	# 21  HDR_OPENING
 "Akkoord",            	# 22  HDR_OK
 "Opties",             	# 23  HDR_OPTIONS
 "Telefoon",           	# 24  HDR_PHONE
 "Aanwezig",           	# 25  HDR_PRESENT
 "Project",            	# 26  HDR_PROJECT
 "Referentie",         	# 27  HDR_REF
 "Notulist",           	# 28  HDR_SECR
 "Sectie",             	# 29  HDR_SECTION
 "Presentatie",        	# 30  HDR_SLIDES
 "Betreft",            	# 31  HDR_SUBJECT
 "Titel",              	# 32  HDR_TITLE
 "Aan",                	# 33  HDR_TO
 "Versie",             	# 34  HDR_VERSION
);

# Names and aliases.
%::hdr_tag = (
 "",                0,	# HDR_NULL
 "Aan",            33,	# HDR_TO
 "Aanhef",         21,	# HDR_OPENING
 "Aanwezig",       25,	# HDR_PRESENT
 "Accoord",        22,	# HDR_OK
 "Afdeling",        9,	# HDR_DEPT
 "Afwezig",         1,	# HDR_ABSENT
 "Akkoord",        22,	# HDR_OK
 "Auteur",          2,	# HDR_AUTHOR
 "Auteurs",         2,	# HDR_AUTHOR
 "Bedrijf",         7,	# HDR_COMPANY
 "Bedrijfscode",    6,	# HDR_CMPY
 "Betreft",        31,	# HDR_SUBJECT
 "Bijl",           12,	# HDR_ENCL
 "Bijl.",          12,	# HDR_ENCL
 "Bijlage",        12,	# HDR_ENCL
 "Bijlagen",       12,	# HDR_ENCL
 "Brief",          27,	# HDR_REF
 "C.c.",            3,	# HDR_CC
 "Cc",              3,	# HDR_CC
 "Datum",           8,	# HDR_DATE
 "Doc-Id",         10,	# HDR_DOCID
 "Docid",          10,	# HDR_DOCID
 "Documentopmaak", 11,	# HDR_DOCUMENTSTYLE
 "Firma",           7,	# HDR_COMPANY
 "Firmacode",       6,	# HDR_CMPY
 "Groep",           9,	# HDR_DEPT
 "Groet",           5,	# HDR_CLOSING
 "Index",          14,	# HDR_INDEX
 "Kaart",          29,	# HDR_SECTION
 "MH-Id",          16,	# HDR_MHID
 "Mhid",           16,	# HDR_MHID
 "Note",           18,	# HDR_NOTE
 "Notulist",       28,	# HDR_SECR
 "Nummer",         19,	# HDR_NUMBER
 "Offerte",        20,	# HDR_OFFERING
 "Optie",          23,	# HDR_OPTIONS
 "Opties",         23,	# HDR_OPTIONS
 "Options",        23,	# HDR_OPTIONS
 "Plaats",          4,	# HDR_CITY
 "Presentatie",    30,	# HDR_SLIDES
 "Project",        26,	# HDR_PROJECT
 "Projekt",        26,	# HDR_PROJECT
 "Ref",            27,	# HDR_REF
 "Ref.",           27,	# HDR_REF
 "Referentie",     27,	# HDR_REF
 "Sectie",         29,	# HDR_SECTION
 "Slides",         30,	# HDR_SLIDES
 "TechNote",       18,	# HDR_NOTE
 "Technote",       18,	# HDR_NOTE
 "Tel",            24,	# HDR_PHONE
 "Tel.",           24,	# HDR_PHONE
 "Telefoon",       24,	# HDR_PHONE
 "Titel",          32,	# HDR_TITLE
 "Van",            13,	# HDR_FROM
 "Vergadering",    15,	# HDR_MEETING
 "Versie",         34,	# HDR_VERSION
 "Volgdoc",        17,	# HDR_NEXT
 "Volgnummer",     19,	# HDR_NUMBER
);

# Allowed header info.
unless ( @::dtp_allow ) {
    @::dtp_allow = ("") x 9;
    vec ($::dtp_allow[ 0],  6, 1) = 1;	# DTP_GENERIC  + HDR_CMPY
    vec ($::dtp_allow[ 0],  7, 1) = 1;	# DTP_GENERIC  + HDR_COMPANY
    vec ($::dtp_allow[ 0],  8, 1) = 1;	# DTP_GENERIC  + HDR_DATE
    vec ($::dtp_allow[ 0],  9, 1) = 1;	# DTP_GENERIC  + HDR_DEPT
    vec ($::dtp_allow[ 0], 11, 1) = 1;	# DTP_GENERIC  + HDR_DOCUMENTSTYLE
    vec ($::dtp_allow[ 0], 13, 1) = 1;	# DTP_GENERIC  + HDR_FROM
    vec ($::dtp_allow[ 0], 16, 1) = 1;	# DTP_GENERIC  + HDR_MHID
    vec ($::dtp_allow[ 0], 17, 1) = 1;	# DTP_GENERIC  + HDR_NEXT
    vec ($::dtp_allow[ 0], 23, 1) = 1;	# DTP_GENERIC  + HDR_OPTIONS
    vec ($::dtp_allow[ 1],  3, 1) = 1;	# DTP_MEMO     + HDR_CC
    vec ($::dtp_allow[ 1],  6, 1) = 1;	# DTP_MEMO     + HDR_CMPY
    vec ($::dtp_allow[ 1],  7, 1) = 1;	# DTP_MEMO     + HDR_COMPANY
    vec ($::dtp_allow[ 1],  8, 1) = 1;	# DTP_MEMO     + HDR_DATE
    vec ($::dtp_allow[ 1],  9, 1) = 1;	# DTP_MEMO     + HDR_DEPT
    vec ($::dtp_allow[ 1], 11, 1) = 1;	# DTP_MEMO     + HDR_DOCUMENTSTYLE
    vec ($::dtp_allow[ 1], 13, 1) = 1;	# DTP_MEMO     + HDR_FROM
    vec ($::dtp_allow[ 1], 16, 1) = 1;	# DTP_MEMO     + HDR_MHID
    vec ($::dtp_allow[ 1], 17, 1) = 1;	# DTP_MEMO     + HDR_NEXT
    vec ($::dtp_allow[ 1], 23, 1) = 1;	# DTP_MEMO     + HDR_OPTIONS
    vec ($::dtp_allow[ 1], 24, 1) = 1;	# DTP_MEMO     + HDR_PHONE
    vec ($::dtp_allow[ 1], 31, 1) = 1;	# DTP_MEMO     + HDR_SUBJECT
    vec ($::dtp_allow[ 1], 33, 1) = 1;	# DTP_MEMO     + HDR_TO
    vec ($::dtp_allow[ 2],  1, 1) = 1;	# DTP_MREP     + HDR_ABSENT
    vec ($::dtp_allow[ 2],  3, 1) = 1;	# DTP_MREP     + HDR_CC
    vec ($::dtp_allow[ 2],  6, 1) = 1;	# DTP_MREP     + HDR_CMPY
    vec ($::dtp_allow[ 2],  7, 1) = 1;	# DTP_MREP     + HDR_COMPANY
    vec ($::dtp_allow[ 2],  8, 1) = 1;	# DTP_MREP     + HDR_DATE
    vec ($::dtp_allow[ 2],  9, 1) = 1;	# DTP_MREP     + HDR_DEPT
    vec ($::dtp_allow[ 2], 11, 1) = 1;	# DTP_MREP     + HDR_DOCUMENTSTYLE
    vec ($::dtp_allow[ 2], 13, 1) = 1;	# DTP_MREP     + HDR_FROM
    vec ($::dtp_allow[ 2], 15, 1) = 1;	# DTP_MREP     + HDR_MEETING
    vec ($::dtp_allow[ 2], 16, 1) = 1;	# DTP_MREP     + HDR_MHID
    vec ($::dtp_allow[ 2], 17, 1) = 1;	# DTP_MREP     + HDR_NEXT
    vec ($::dtp_allow[ 2], 19, 1) = 1;	# DTP_MREP     + HDR_NUMBER
    vec ($::dtp_allow[ 2], 23, 1) = 1;	# DTP_MREP     + HDR_OPTIONS
    vec ($::dtp_allow[ 2], 25, 1) = 1;	# DTP_MREP     + HDR_PRESENT
    vec ($::dtp_allow[ 2], 28, 1) = 1;	# DTP_MREP     + HDR_SECR
    vec ($::dtp_allow[ 3],  2, 1) = 1;	# DTP_REPORT   + HDR_AUTHOR
    vec ($::dtp_allow[ 3],  6, 1) = 1;	# DTP_REPORT   + HDR_CMPY
    vec ($::dtp_allow[ 3],  7, 1) = 1;	# DTP_REPORT   + HDR_COMPANY
    vec ($::dtp_allow[ 3],  8, 1) = 1;	# DTP_REPORT   + HDR_DATE
    vec ($::dtp_allow[ 3],  9, 1) = 1;	# DTP_REPORT   + HDR_DEPT
    vec ($::dtp_allow[ 3], 10, 1) = 1;	# DTP_REPORT   + HDR_DOCID
    vec ($::dtp_allow[ 3], 11, 1) = 1;	# DTP_REPORT   + HDR_DOCUMENTSTYLE
    vec ($::dtp_allow[ 3], 13, 1) = 1;	# DTP_REPORT   + HDR_FROM
    vec ($::dtp_allow[ 3], 14, 1) = 1;	# DTP_REPORT   + HDR_INDEX
    vec ($::dtp_allow[ 3], 16, 1) = 1;	# DTP_REPORT   + HDR_MHID
    vec ($::dtp_allow[ 3], 17, 1) = 1;	# DTP_REPORT   + HDR_NEXT
    vec ($::dtp_allow[ 3], 22, 1) = 1;	# DTP_REPORT   + HDR_OK
    vec ($::dtp_allow[ 3], 23, 1) = 1;	# DTP_REPORT   + HDR_OPTIONS
    vec ($::dtp_allow[ 3], 26, 1) = 1;	# DTP_REPORT   + HDR_PROJECT
    vec ($::dtp_allow[ 3], 32, 1) = 1;	# DTP_REPORT   + HDR_TITLE
    vec ($::dtp_allow[ 3], 34, 1) = 1;	# DTP_REPORT   + HDR_VERSION
    vec ($::dtp_allow[ 4],  2, 1) = 1;	# DTP_NOTE     + HDR_AUTHOR
    vec ($::dtp_allow[ 4],  6, 1) = 1;	# DTP_NOTE     + HDR_CMPY
    vec ($::dtp_allow[ 4],  7, 1) = 1;	# DTP_NOTE     + HDR_COMPANY
    vec ($::dtp_allow[ 4],  8, 1) = 1;	# DTP_NOTE     + HDR_DATE
    vec ($::dtp_allow[ 4],  9, 1) = 1;	# DTP_NOTE     + HDR_DEPT
    vec ($::dtp_allow[ 4], 10, 1) = 1;	# DTP_NOTE     + HDR_DOCID
    vec ($::dtp_allow[ 4], 11, 1) = 1;	# DTP_NOTE     + HDR_DOCUMENTSTYLE
    vec ($::dtp_allow[ 4], 13, 1) = 1;	# DTP_NOTE     + HDR_FROM
    vec ($::dtp_allow[ 4], 16, 1) = 1;	# DTP_NOTE     + HDR_MHID
    vec ($::dtp_allow[ 4], 17, 1) = 1;	# DTP_NOTE     + HDR_NEXT
    vec ($::dtp_allow[ 4], 18, 1) = 1;	# DTP_NOTE     + HDR_NOTE
    vec ($::dtp_allow[ 4], 23, 1) = 1;	# DTP_NOTE     + HDR_OPTIONS
    vec ($::dtp_allow[ 4], 32, 1) = 1;	# DTP_NOTE     + HDR_TITLE
    vec ($::dtp_allow[ 4], 34, 1) = 1;	# DTP_NOTE     + HDR_VERSION
    vec ($::dtp_allow[ 5],  6, 1) = 1;	# DTP_OFFERING + HDR_CMPY
    vec ($::dtp_allow[ 5],  7, 1) = 1;	# DTP_OFFERING + HDR_COMPANY
    vec ($::dtp_allow[ 5],  8, 1) = 1;	# DTP_OFFERING + HDR_DATE
    vec ($::dtp_allow[ 5],  9, 1) = 1;	# DTP_OFFERING + HDR_DEPT
    vec ($::dtp_allow[ 5], 11, 1) = 1;	# DTP_OFFERING + HDR_DOCUMENTSTYLE
    vec ($::dtp_allow[ 5], 12, 1) = 1;	# DTP_OFFERING + HDR_ENCL
    vec ($::dtp_allow[ 5], 13, 1) = 1;	# DTP_OFFERING + HDR_FROM
    vec ($::dtp_allow[ 5], 16, 1) = 1;	# DTP_OFFERING + HDR_MHID
    vec ($::dtp_allow[ 5], 17, 1) = 1;	# DTP_OFFERING + HDR_NEXT
    vec ($::dtp_allow[ 5], 20, 1) = 1;	# DTP_OFFERING + HDR_OFFERING
    vec ($::dtp_allow[ 5], 22, 1) = 1;	# DTP_OFFERING + HDR_OK
    vec ($::dtp_allow[ 5], 23, 1) = 1;	# DTP_OFFERING + HDR_OPTIONS
    vec ($::dtp_allow[ 5], 32, 1) = 1;	# DTP_OFFERING + HDR_TITLE
    vec ($::dtp_allow[ 6],  3, 1) = 1;	# DTP_LETTER   + HDR_CC
    vec ($::dtp_allow[ 6],  4, 1) = 1;	# DTP_LETTER   + HDR_CITY
    vec ($::dtp_allow[ 6],  5, 1) = 1;	# DTP_LETTER   + HDR_CLOSING
    vec ($::dtp_allow[ 6],  6, 1) = 1;	# DTP_LETTER   + HDR_CMPY
    vec ($::dtp_allow[ 6],  7, 1) = 1;	# DTP_LETTER   + HDR_COMPANY
    vec ($::dtp_allow[ 6],  8, 1) = 1;	# DTP_LETTER   + HDR_DATE
    vec ($::dtp_allow[ 6],  9, 1) = 1;	# DTP_LETTER   + HDR_DEPT
    vec ($::dtp_allow[ 6], 11, 1) = 1;	# DTP_LETTER   + HDR_DOCUMENTSTYLE
    vec ($::dtp_allow[ 6], 12, 1) = 1;	# DTP_LETTER   + HDR_ENCL
    vec ($::dtp_allow[ 6], 13, 1) = 1;	# DTP_LETTER   + HDR_FROM
    vec ($::dtp_allow[ 6], 16, 1) = 1;	# DTP_LETTER   + HDR_MHID
    vec ($::dtp_allow[ 6], 17, 1) = 1;	# DTP_LETTER   + HDR_NEXT
    vec ($::dtp_allow[ 6], 21, 1) = 1;	# DTP_LETTER   + HDR_OPENING
    vec ($::dtp_allow[ 6], 23, 1) = 1;	# DTP_LETTER   + HDR_OPTIONS
    vec ($::dtp_allow[ 6], 27, 1) = 1;	# DTP_LETTER   + HDR_REF
    vec ($::dtp_allow[ 6], 31, 1) = 1;	# DTP_LETTER   + HDR_SUBJECT
    vec ($::dtp_allow[ 6], 33, 1) = 1;	# DTP_LETTER   + HDR_TO
    vec ($::dtp_allow[ 7],  6, 1) = 1;	# DTP_SLIDES   + HDR_CMPY
    vec ($::dtp_allow[ 7],  7, 1) = 1;	# DTP_SLIDES   + HDR_COMPANY
    vec ($::dtp_allow[ 7],  8, 1) = 1;	# DTP_SLIDES   + HDR_DATE
    vec ($::dtp_allow[ 7],  9, 1) = 1;	# DTP_SLIDES   + HDR_DEPT
    vec ($::dtp_allow[ 7], 10, 1) = 1;	# DTP_SLIDES   + HDR_DOCID
    vec ($::dtp_allow[ 7], 11, 1) = 1;	# DTP_SLIDES   + HDR_DOCUMENTSTYLE
    vec ($::dtp_allow[ 7], 13, 1) = 1;	# DTP_SLIDES   + HDR_FROM
    vec ($::dtp_allow[ 7], 16, 1) = 1;	# DTP_SLIDES   + HDR_MHID
    vec ($::dtp_allow[ 7], 17, 1) = 1;	# DTP_SLIDES   + HDR_NEXT
    vec ($::dtp_allow[ 7], 23, 1) = 1;	# DTP_SLIDES   + HDR_OPTIONS
    vec ($::dtp_allow[ 7], 30, 1) = 1;	# DTP_SLIDES   + HDR_SLIDES
    vec ($::dtp_allow[ 7], 34, 1) = 1;	# DTP_SLIDES   + HDR_VERSION
    vec ($::dtp_allow[ 8],  6, 1) = 1;	# DTP_IMP      + HDR_CMPY
    vec ($::dtp_allow[ 8],  7, 1) = 1;	# DTP_IMP      + HDR_COMPANY
    vec ($::dtp_allow[ 8],  8, 1) = 1;	# DTP_IMP      + HDR_DATE
    vec ($::dtp_allow[ 8],  9, 1) = 1;	# DTP_IMP      + HDR_DEPT
    vec ($::dtp_allow[ 8], 11, 1) = 1;	# DTP_IMP      + HDR_DOCUMENTSTYLE
    vec ($::dtp_allow[ 8], 13, 1) = 1;	# DTP_IMP      + HDR_FROM
    vec ($::dtp_allow[ 8], 14, 1) = 1;	# DTP_IMP      + HDR_INDEX
    vec ($::dtp_allow[ 8], 16, 1) = 1;	# DTP_IMP      + HDR_MHID
    vec ($::dtp_allow[ 8], 17, 1) = 1;	# DTP_IMP      + HDR_NEXT
    vec ($::dtp_allow[ 8], 23, 1) = 1;	# DTP_IMP      + HDR_OPTIONS
    vec ($::dtp_allow[ 8], 29, 1) = 1;	# DTP_IMP      + HDR_SECTION
    vec ($::dtp_allow[ 8], 32, 1) = 1;	# DTP_IMP      + HDR_TITLE
}

# Significant header info (sparse array).
unless ( @::hdr_dtp ) {
    $::hdr_dtp[ 1] =  2;		# HDR_ABSENT   -> DTP_MREP
    $::hdr_dtp[ 4] =  6;		# HDR_CITY     -> DTP_LETTER
    $::hdr_dtp[ 5] =  6;		# HDR_CLOSING  -> DTP_LETTER
    $::hdr_dtp[15] =  2;		# HDR_MEETING  -> DTP_MREP
    $::hdr_dtp[18] =  4;		# HDR_NOTE     -> DTP_NOTE
    $::hdr_dtp[19] =  2;		# HDR_NUMBER   -> DTP_MREP
    $::hdr_dtp[20] =  5;		# HDR_OFFERING -> DTP_OFFERING
    $::hdr_dtp[21] =  6;		# HDR_OPENING  -> DTP_LETTER
    $::hdr_dtp[24] =  1;		# HDR_PHONE    -> DTP_MEMO
    $::hdr_dtp[25] =  2;		# HDR_PRESENT  -> DTP_MREP
    $::hdr_dtp[26] =  3;		# HDR_PROJECT  -> DTP_REPORT
    $::hdr_dtp[27] =  6;		# HDR_REF      -> DTP_LETTER
    $::hdr_dtp[28] =  2;		# HDR_SECR     -> DTP_MREP
    $::hdr_dtp[29] =  8;		# HDR_SECTION  -> DTP_IMP
    $::hdr_dtp[30] =  7;		# HDR_SLIDES   -> DTP_SLIDES
}

# Mandatory header info.
unless ( @::dtp_mand ) {
    @::dtp_mand = (
     "",                    	# DTP_GENERIC  -> 
     "13:31:33",            	# DTP_MEMO     -> HDR_FROM HDR_SUBJECT HDR_TO
     "15:19:25",            	# DTP_MREP     -> HDR_MEETING HDR_NUMBER HDR_PRESENT
     "2:16:26:32:34",       	# DTP_REPORT   -> HDR_AUTHOR HDR_MHID HDR_PROJECT HDR_TITLE HDR_VERSION
     "2:16:18:32:34",       	# DTP_NOTE     -> HDR_AUTHOR HDR_MHID HDR_NOTE HDR_TITLE HDR_VERSION
     "20:32",               	# DTP_OFFERING -> HDR_OFFERING HDR_TITLE
     "13:21:27:33",         	# DTP_LETTER   -> HDR_FROM HDR_OPENING HDR_REF HDR_TO
     "16:30:34",            	# DTP_SLIDES   -> HDR_MHID HDR_SLIDES HDR_VERSION
     "29:32",               	# DTP_IMP      -> HDR_SECTION HDR_TITLE
	);
}

# Bits for headers that are explicitly set
$::hdr_set = "" unless defined $::hdr_set;

# NLS translations
@::nls_table = (
 '',                   	#  0  TXT_NULL
 'Dutch',              	#  1  TXT_LANG
 'Nederlands',         	#  2  TXT_LANGUAGE
 'Intern Memo',        	#  3  TXT_MEMO
 'Inhoudsopgave',      	#  4  TXT_TOC
 'Inhoud van Sectie',  	#  5  TXT_COS
 'Sectie',             	#  6  TXT_SECTION
 'Kaart',              	#  7  TXT_MAP
 'pagina',             	#  8  TXT_PAGE
 'Ref.',               	#  9  TXT_REF
 'tst.',               	# 10  TXT_PHEXT
 'Met vriendelijke groeten,',	# 11  TXT_CLOSING
 'Configuratie-Management',	# 12  TXT_CONFMGT
 'Configuratie-status',	# 13  TXT_CONFSTAT
 ' CONCEPT ',          	# 14  TXT_DRAFT
 'Index',              	# 15  TXT_INDEX
 '%de Vergadering',    	# 16  FMT_MEETING
 '^config.*(status|management)$',	# 17  PAT_CONFIGMGT
 '^(mededelingen|a[ck]tielijst|besluitenlijst)\s*$',	# 18  PAT_ANNOUNCE
);

# Month names (zero relative)
@::month_names = (
 'januari',   'februari',  'maart',     'april',     
 'mei',       'juni',      'juli',      'augustus',  
 'september', 'oktober',   'november',  'december',  
);
$::nls_day_after_month = 0;

1;