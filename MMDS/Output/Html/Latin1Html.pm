package MMDS::Output::Html::Latin1Html;

# RCS Id: $Id: Latin1Html.pm,v 1.1 2002-12-30 19:22:35+01 jv Exp $

# Map iso-8859-1 to HTML encoding. Strictly speaking this is not
# necessary, since HTML uses iso-8859-1 as default character set.

%::iso2html = (
    "�",  "AElig",	# capital AE diphthong (ligature) */
    "�",  "Aacute",	# capital A, acute accent */
    "�",  "Acirc",	# capital A, circumflex accent */
    "�",  "Agrave",	# capital A, grave accent */
    "�",  "Aring",	# capital A, ring */
    "�",  "Atilde",	# capital A, tilde */
    "�",  "Auml",	# capital A, dieresis or umlaut mark */
    "�",  "Ccedil",	# capital C, cedilla */
    "�",  "ETH",	# capital Eth, Icelandic */
    "�",  "Eacute",	# capital E, acute accent */
    "�",  "Ecirc",	# capital E, circumflex accent */
    "�",  "Egrave",	# capital E, grave accent */
    "�",  "Euml",	# capital E, dieresis or umlaut mark */
    "�",  "Iacute",	# capital I, acute accent */
    "�",  "Icirc",	# capital I, circumflex accent */
    "�",  "Igrave",	# capital I, grave accent */
    "�",  "Iuml",	# capital I, dieresis or umlaut mark */
    "�",  "Ntilde",	# capital N, tilde */
    "�",  "Oacute",	# capital O, acute accent */
    "�",  "Ocirc",	# capital O, circumflex accent */
    "�",  "Ograve",	# capital O, grave accent */
    "�",  "Oslash",	# capital O, slash */
    "�",  "Otilde",	# capital O, tilde */
    "�",  "Ouml",	# capital O, dieresis or umlaut mark */
    "�",  "THORN",	# capital THORN, Icelandic */
    "�",  "Uacute",	# capital U, acute accent */
    "�",  "Ucirc",	# capital U, circumflex accent */
    "�",  "Ugrave",	# capital U, grave accent */
    "�",  "Uuml",	# capital U, dieresis or umlaut mark */
    "�",  "Yacute",	# capital Y, acute accent */
    "�",  "aacute",	# small a, acute accent */
    "�",  "acirc",	# small a, circumflex accent */
    "�",  "aelig",	# small ae diphthong (ligature) */
    "�",  "agrave",	# small a, grave accent */
    "&",  "amp",	# ampersand */
    "�",  "aring",	# small a, ring */
    "�",  "atilde",	# small a, tilde */
    "�",  "auml",	# small a, dieresis or umlaut mark */
    "�",  "ccedil",	# small c, cedilla */
    "�",  "eacute",	# small e, acute accent */
    "�",  "ecirc",	# small e, circumflex accent */
    "�",  "egrave",	# small e, grave accent */
#    "",  "emsp",	# em space - not collapsed
#    "",  "ensp",	# en space - not collapsed
    "�",  "eth",	# small eth, Icelandic */
    "�",  "euml",	# small e, dieresis or umlaut mark */
    ">",  "gt",		# greater than */
    "�",  "iacute",	# small i, acute accent */
    "�",  "icirc",	# small i, circumflex accent */
    "�",  "igrave",	# small i, grave accent */
    "�",  "iuml",	# small i, dieresis or umlaut mark */
    "<",  "lt",		# less than */
    "�",  "nbsp",       # non breaking space
    "�",  "ntilde",	# small n, tilde */
    "�",  "oacute",	# small o, acute accent */
    "�",  "ocirc",	# small o, circumflex accent */
    "�",  "ograve",	# small o, grave accent */
    "�",  "oslash",	# small o, slash */
    "�",  "otilde",	# small o, tilde */
    "�",  "ouml",	# small o, dieresis or umlaut mark */
#    "",  "quot",	# quot '"'
    "�",  "szlig",	# small sharp s, German (sz ligature) */
    "�",  "thorn",	# small thorn, Icelandic */
    "�",  "uacute",	# small u, acute accent */
    "�",  "ucirc",	# small u, circumflex accent */
    "�",  "ugrave",	# small u, grave accent */
    "�",  "uuml",	# small u, dieresis or umlaut mark */
    "�",  "yacute",	# small y, acute accent */
    "�",  "yuml",	# small y, dieresis or umlaut mark */
);

1;
