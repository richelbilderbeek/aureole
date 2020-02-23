---
title: 'aureole: use the Encyclopedia of Life'
tags:
  - R
  - database access
authors:
  - name: Richèl J.C. Bilderbeek
    orcid: 0000-0003-1107-7049
    affiliation: 1
affiliations:
 - name: Theoretical & Evolutionary Community Ecology, TRES, GELIFES, University of Groningen
   index: 1
date: 23 February 2020
bibliography: paper.bib
---

> Example text below

# Summary

The Encyclopedia of Life [@Wilson:2003] tries to document all living species.
This ambitious process has already been cited more than 450 times.

``aureole`` allows access to the Encyclopedia of Life from R.

![](man/figures/aureole_logo.png)

> ``aureole`` logo

``mcbette`` is an R package that helps to pick the 'best' model. 
The 'best', in this context, is the model that is 'simple enough, but not 
simpler'. In more precise term, ``mcbette`` does a model comparison (hence 
the `mc` in its name) between multiple suggested evolutionary models and shows
which one is best. The winner of this comparison is assumed to result
in the best phylogenies (with the same definition of 'best').

To connect to this wealth of information from R, the `reol`
package [@Banbury:2014] was developed and put on CRAN.
Due to lack of maintanance, `reol` was removed from CRAN.

``mcbette`` is aimed to be used by anyone interested in phylogenetics.
``mcbette`` builds heavily upon the ``babette`` R package [@Bilderbeek:2018],
where ``babette`` is an R package to call the phylogenetic 
tool 'BEAST2' [@Bouckaert:2019]. Additionally, ``mcbette`` uses the novel 'NS'
'BEAST2' package [@Russel:2019] to do the actual model comparison.
With ``mcbette`` it will be 'as easy as possible, but not easier' to pick a 
best evolutionary model.

# References

 * `@Wilson:2003`: Wilson, Edward O. "The encyclopedia of life." Trends in Ecology & Evolution 18.2 (2003): 77-80.
 * `@Banbury:2014`: Banbury, Barbara L., and Brian C. O'Meara. "Reol: R interface to the E ncyclopedia of L ife." Ecology and Evolution 4.12 (2014): 2577-2583.

