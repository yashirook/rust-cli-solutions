#!/bin/bash

OUTDIR="tests/expected"
[[ ! -d "$OUTDIR" ]] && mkdir -o "$OUTDIR"

echo "Hello there" > $OUTDIR/hello.txt
echo "Hello" "there" > $OUTDIR/hello2.txt
echo -n "Hello  there" > $OUTDIR/hello1.n.txt
echo -n "Hello" "there" > $OUTDIR/hello2.n.txt
