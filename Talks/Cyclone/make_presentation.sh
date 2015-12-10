#!/usr/bin/sh

OUTPUT=ROMSCycloneTalk.html 
#pandoc -s --mathjax -i -t revealjs ROMSCycloneTalk.md -o $OUTPUT
#pandoc -s --webtex -i -t slidy ROMSCycloneTalk.md -o $OUTPUT
# -i is incremental list option
#pandoc -s --webtex -i -t dzslides ROMSCycloneTalk.md -o $OUTPUT
pandoc -s --mathjax -t dzslides ROMSCycloneTalk.md\
        -o $OUTPUT --template my.dzslides
#pandoc -s --mathjax -t revealjs ROMSCycloneTalk.md -o $OUTPUT \
#        --template my.revealjs \
#        -V revealjs-url=/home/suntans/code/reveal.js/ \
#        -V theme="night" \
#        -V transition="none" \
#        #--self-contained 

firefox $OUTPUT#20.0

