# `reol`

Branch    |[![Travis CI logo](pics/TravisCI.png)](https://travis-ci.org)                                                                    |[![AppVeyor logo](pics/AppVeyor.png)](https://www.appveyor.com)                                                                                                                 |[![Codecov logo](pics/Codecov.png)](https://www.codecov.io)
----------|---------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------
`master`  |[![Build Status](https://travis-ci.org/richelbilderbeek/reol.svg?branch=master)](https://travis-ci.org/richelbilderbeek/reol)  |[![Build status](https://ci.appveyor.com/api/projects/status/btobovn91rhf0qm1/branch/master?svg=true)](https://ci.appveyor.com/project/richelbilderbeek/reol/branch/master)    |[![codecov.io](https://codecov.io/github/richelbilderbeek/reol/coverage.svg?branch=master)](https://codecov.io/github/richelbilderbeek/reol?branch=master)
`develop` |[![Build Status](https://travis-ci.org/richelbilderbeek/reol.svg?branch=develop)](https://travis-ci.org/richelbilderbeek/reol) |[![Build status](https://ci.appveyor.com/api/projects/status/btobovn91rhf0qm1/branch/develop?svg=true)](https://ci.appveyor.com/project/richelbilderbeek/reol/branch/develop)  |[![codecov.io](https://codecov.io/github/richelbilderbeek/reol/coverage.svg?branch=develop)](https://codecov.io/github/richelbilderbeek/reol?branch=develop)

R package to query the Encyclopedia Of Life.

Will be renamed to `aureole` soon. 

## Install

```
remotes::install_github("richelbilderbeek/reol")
```

## Use

```
library(reol)
```

## Get URLs for species images

```{r}
df <- get_image_urls_from_name("Homo sapiens")
knitr::kable(df)
```

## Get a species ID

In case you wonder :-)

```{r}
df <- get_eol_page("Homo sapiens")
knitr::kable(df)
```

## History

Originally, this package was called `Reol`
and was written by
Barb Banbury and Brian O'Meara and can be found 
[here](https://r-forge.r-project.org/R/?group_id=1523).

This package `reol` (note the lowercase R) 
started from the last submitted CRAN source 
[here (which is version 1.55)](https://cran.r-project.org/src/contrib/Archive/Reol/Reol_1.55.tar.gz).

I could find the original maintainer, but not her email address. Due to that,
I took off without any form of communication with the original maintainer.
I just hope she's OK with that. As I keep using the same license, there
should be no problem.

`reol` does not intend to be backwards compatible at with `Reol`.
To prevent version conflicts, `reol`'s first version is `v2.0`.