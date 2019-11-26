include ../snowboy.mk

TESTFILES = snowboy-matrix-test

OBJFILES = matrix-wrapper.o vector-wrapper.o bit-matrix.o bit-vector.o bit-kernel.o

LIBFILE = snowboy-matrix.a

all: $(LIBFILE)

%.a:
	$(MAKE) -C ${@D} ${@F}

$(LIBFILE): $(OBJFILES)
	$(AR) -cru $(LIBFILE) $(OBJFILES)
	$(RANLIB) $(LIBFILE)

clean:
	-rm -f *.o *.a $(TESTFILES)

$(TESTFILES): $(LIBFILE) ../utils/snowboy-utils.a

test_compile: $(TESTFILES)

test: test_compile; @\
  result=0; \
  for x in $(TESTFILES); do \
    printf "Running $$x ..."; \
    ./$$x > /dev/null 2>&1; \
    if [ $$? -ne 0 ]; then \
      echo "... FAIL"; \
      result=1; \
    else \
      echo "... SUCCESS"; \
    fi; \
  done; \
  exit $$result;

depend:
	-$(CXX) -M $(CXXFLAGS) *.cc > .depend.mk

# Putting "-" so no error messages.
-include .depend.mk
