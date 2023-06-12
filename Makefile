ROOTFLAGS = $(shell root-config --cflags)
ROOTLIBS  = $(shell root-config --glibs) -lRooFit -lRooFitCore -lMinuit

all: Fake Fake_lxy Varplot

Fake: plotFakenew.cc
	g++ -Wall -Wextra -O3 -o $@ plotFakenew.cc $(ROOTFLAGS) $(ROOTLIBS) 

Fake_lxy: plotFakenew_lxy.cc
	g++ -Wall -Wextra -O3 -o $@ plotFakenew_lxy.cc $(ROOTFLAGS) $(ROOTLIBS)

Varplot: plotVars.cc
	g++ -Wall -Wextra -O3 -o $@ plotVars.cc $(ROOTFLAGS) $(ROOTLIBS)

clean:
	rm -f Fake Fake_lxy *~

