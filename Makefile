OBJS=main.o
EXE=greeter

all: $(EXE)

$(OBJS):

$(EXE): $(OBJS)
	$(CC) -o $@ $(OBJS) $(LDFLAGS)
clean:
	rm -f $(EXE) $(OBJS)

install:
	install -Dm 755 $(EXE) $(DESTDIR)$(BINDIR)/$(EXE)

.PHONY: all clean install

test: $(EXE)
	$(abspath $(EXE)) | grep "Hello world"