# $Id$

CATEGORY=	security/compendii
DOCUMENTS=	introkrypt.pdf

FILES=		introkrypt.tex introkrypt.bib
FILES+= 	intro.tex
FILES+= 	term.tex
FILES+= 	perm.tex figs/skytale.eps
FILES+= 	caesar.tex
FILES+= 	subst.tex figs/english_letter_frequencies.eps
FILES+= 	vigenere.tex
FILES+= 	perfect.tex
FILES+= 	modern.tex

PACKAGE=		introkrypt-src
TARBALL_FILES=	${FILES} Makefile

PUB_FILES=	${PACKAGE}.tar.gz ${DOCUMENTS}

introkrypt.pdf: ${FILES}

clean:
	${RM} figs/*-converted-to.pdf

INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
