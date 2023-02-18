PRG = whensalat
PREFIX = /usr/local

install:
	cp -- "${PRG}" "${PREFIX}/bin/"

remove:
	rm -f -- "${PREFIX}/bin/"

