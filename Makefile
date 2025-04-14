
.PHONEY: cabal

 cabal: haskell-ffi.cabal src/Doubler.hs
	cabal build

src/Doubler.hs: src/Doubler.chs src/test.h
	c2hs -t . -i src/ src/Doubler.chs test.h

clean:
	rm -rf src/Doubler.hs
	rm -rf src/Doubler.chs.h
	rm -rf src/Doubler.chi
	rm -rf cabal.project.local
	rm -rf cabal.project.local~
	cabal clean

