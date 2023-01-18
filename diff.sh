#!/bin/sh
./ndisasm386 orig/aSMtris.com >a
./ndisasm386 aSMtris.com >b
diff --unified a b >diff
