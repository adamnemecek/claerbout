SINGLE=yes
include ${SEPINC}/SEP.top
#ifeq (${HOSTNAME},sark)
#OPENMP = yes
#F90C=pgf90
#F90LD=pgf90
#endif


LIBNAME=${SEPLIBDIR}/libbei.a
OBJDIR=${MTYPE}
SOURCES= $(notdir $(wildcard ${SRCDIR}/*.rt))

default: all

all: ${LIBNAME}
	echo "Done making " ${LIBNAME}

clean:
	@${RM} -rf ${OBJDIR}

deinstall:
	${RM} ${LIBNAME}


include ${SEPINC}/SEP.bottom
