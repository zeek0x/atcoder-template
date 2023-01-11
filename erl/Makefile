ERLC=erlc
ERL=erl
ERLFLAGS=-noshell
ERLRUN=-run Main main run
INPUT=input.txt

all: compile test clean
.PHONY: compile test clean

compile:
	@$(ERLC) Main.erl;
test:
	@$(ERL) $(ERLFLAGS) $(ERLRUN) < $(INPUT)
clean:
	@rm -f Main.beam erl_crash.dump;
