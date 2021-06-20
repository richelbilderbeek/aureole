# `aureole`

Branch    |[![Travis CI logo](pics/TravisCI.png)](https://travis-ci.com)                                                                        |[![AppVeyor logo](pics/AppVeyor.png)](https://www.appveyor.com)                                                                                                                 |[![Codecov logo](pics/Codecov.png)](https://www.codecov.io)
----------|-------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------
`master`  |[![Build Status](https://travis-ci.com/richelbilderbeek/aureole.svg?branch=master)](https://travis-ci.com/richelbilderbeek/aureole)  |[![Build status](https://ci.appveyor.com/api/projects/status/xgp7mv7tc0gtu0sp/branch/master?svg=true)](https://ci.appveyor.com/project/richelbilderbeek/aureole/branch/master)  |[![codecov.io](https://codecov.io/github/richelbilderbeek/aureole/coverage.svg?branch=master)](https://codecov.io/github/richelbilderbeek/aureole?branch=master)  
`develop` |[![Build Status](https://travis-ci.com/richelbilderbeek/aureole.svg?branch=develop)](https://travis-ci.com/richelbilderbeek/aureole) |[![Build status](https://ci.appveyor.com/api/projects/status/xgp7mv7tc0gtu0sp/branch/develop?svg=true)](https://ci.appveyor.com/project/richelbilderbeek/aureole/branch/develop)|[![codecov.io](https://codecov.io/github/richelbilderbeek/aureole/coverage.svg?branch=develop)](https://codecov.io/github/richelbilderbeek/aureole?branch=develop)

![](pics/aureole_logo.png)

`aureole` is an R package to query the Encyclopedia Of Life.

## Install

```
remotes::install_github("richelbilderbeek/aureole")
```

## Use

```
library(aureole)
```

## Get URLs for species images

```{r}
df <- download_image_urls_from_name("Homo sapiens")
knitr::kable(df)
```

## Get a species ID

In case you wonder :-)

```{r}
df <- download_search_results("Homo sapiens")
knitr::kable(df)
```

## History

Originally, this package was called `Reol`
and was written by
Barb Banbury and Brian O'Meara and can be found 
[here](https://r-forge.r-project.org/R/?group_id=1523).

`aureole`
started from the last submitted CRAN source 
[here (which is version 1.55)](https://cran.r-project.org/src/contrib/Archive/reol/reole_1.55.tar.gz).
I could find the original maintainer, but not her email address. Due to that,
I took off without any form of communication with the original maintainer.

In the end, I ruthlessly removed all `Reol` code and started from close-to-scratch.
I renamed the package to `aureole` to reflect this and 
set its license at GPL-3. 
`aureole` does not intend to be backwards compatible with `Reol`.
To reflect the history of `aureole`, its first version number is `v2.0`.
