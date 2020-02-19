#!/bin/bash
bcftools query -f '%CHROM\t%POS[\t%GT]\n' -e 'N_ALT!=1'  $1  | sed -e 's/\///g' -e 's/\./N/g' | sed 's/|//g'| sed 's/00/0/g' | sed 's/11/2/g' | sed 's/01/1/g' | sed 's/10/1/g' | cut -f3-
