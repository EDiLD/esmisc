esmisc
============
[![Build Status](https://travis-ci.org/EDiLD/esmisc.png)](https://travis-ci.org/EDiLD/esmisc)

`esmisc` is a R package containing misc functions of Eduard Szöcs.

## Functions
Currently the following functions are available:

  + [LOGKOW](http://logkow.cisti.nrc.ca/logkow/index.jsp)
    + Retrieve recommended log KOW values : `get_kow()`
    + **Service currently not available :** [link](http://codata.ca/eng/resources/logkow.html)
  + [ETOX](http://webetox.uba.de/webETOX/index.do)
    + Convert names to CAS : `etox_to_cas()`
  + [Allan Wood](http://www.alanwood.net/pesticides/index.html)
    + Search and retrieve CAS and pesticide groups: `allanwood()`
    
#### Defunct
These function have been moved to the [webchem-package](https://github.com/ropensci/webchem) and are no longer available in `esmisc`:

  + [Cactus](http://cactus.nci.nih.gov/chemical/structure_documentation) : `cactus()`
  + [Chemspider](http://www.chemspider.com/)
    + Query ChemspiderID (CSID): `get_csid()`
    + Convert CSID to SMILES : `csid_to_smiles()`
    + retrieve additional infos from CSID: `csid_to_ext()`
  + [Pubchem](https://pubchem.ncbi.nlm.nih.gov/)
    + Query CompoundID (CID): `get_cid()`
    + Convert CID to SMILES: `cid_to_smiles()`
    + retrieve additional infos from CID: `cid_to_ext()`
    
    


## Installation
`esmisc` is currently only available on github. To install `esmisc` use:

```r
install.packages('devtools')
library(devtools)
install_github('esmisc', 'EDiLD')
library(esmisc)
```


## Examples

```r
library(esmisc)
```

### Retrieve log KOW values from LOGKOW
**Service currently not available!** [link](http://codata.ca/eng/resources/logkow.html)

```r
get_kow(casnr)
```


### CAS from [ETOX](http://webetox.uba.de/webETOX/index.do)

```r
etox_to_cas('2,4,5-Trichlorphenol')
```

```
## Searching 2,4,5-Trichlorphenol
## More then one Link found. Returning first hit.
```

```
## [1] "95-95-4"
```

### CAS and pesticides groups from [Allan Wood](http://www.alanwood.net/pesticides/index.html)

```r
sapply(c('Fluazinam', 'Diclofop'), allanwood)
```

```
## Querying fluazinam.html
## Querying diclofop.html
```

```
##          Fluazinam                          Diclofop                                         
## CAS      "79622-59-6"                       "40843-25-2"                                     
## activity "fungicides (pyridine fungicides)" "herbicides (aryloxyphenoxypropionic herbicides)"
```



