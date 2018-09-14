#!/bin/bash

echo ''
echo 'Per the instructions at github.com/ipython/ipython/issues/9348:'
echo 'After the command below is executed, go to the url and append "?print-pdf" to it.  '
echo 'e.g.: ./Housing-Heterogeneity-Keynote_Final.slides.html?print-pdf'
echo
echo 'Then open the print dialog FROM THE BROWSER and choose landscape mode and print.'

cmd="jupyter nbconvert --to slides --post serve ./Housing-Heterogeneity-Keynote_Final.ipynb"
echo $cmd
echo 'Hit return when you have read the foregoing and are ready to execute.'

eval $cmd


