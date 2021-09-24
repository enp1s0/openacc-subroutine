FORTRAN=nvfortran
FORTRANFLAGS=-fast -acc -Minfo=accel -gpu=cc80

TARGET=acc-subroutine.test

$(TARGET):main.o sub.o
	$(FORTRAN) -o $@ $(FORTRANFLAGS) $+

%.o:%.f90
	$(FORTRAN) -o $@ -c $(FORTRANFLAGS) $<

clean:
	rm -f $(TARGET)
