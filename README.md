# The Vector Institute *bibtex* Repository 

The bibtex files in this repository determine the list of publications that appear on the Vector Institute website. 
## Instructions for Vector groups

Each group maintains its own public git repository containing bibtex. These repositories are then added as submodules in this repository and updated as necessary. Therefore, in order to change/add/remove a bibtex entry,
you need to

1. Make the change in the group's public git repository;
2. Contact the administrator of this repository to fetch and merge those changes.

The current administrator is Daniel Roy <daniel.roy@utoronto.ca>.

## Formatting rules for bibtex

The following guidelines are aimed to improve the quality of the publication page.

### Choosing *key* values

Every entry is given a key. In order to minimize clashes, please use the following formatting

  [INITIALSofAUTHORS][YYYY][one-two word summary of title]

### Cross references for major conferences

We want our bibtex to be clean and consistent. For this reason, we will use cross referencing when making citations to proceedings, such an NIPS, ICML, CVPR, etc. Every major conference has a @proceedings entry in *proceedings.bib*. When making an @inproceedings entry, simply add, e.g., *crossref={NIPS2018}*, in order to import all the fields relevant to that year's proceedings. In particular, the @inproceedings entry should NOT have the year, booktitle, volume, etc. specified. It should specify the pages, title, authors, etc.

### Standardized strings

The *proceedings.bib* file makes use of @string's to standardize booktitles. In addition, @string's should be used also for the names of journals.

### Links to arXiv

We encourage authors to list arXiv preprint information, even for published articles. Every article that appears also on the arXiv should specify 

  archivePrefix = {arXiv},
  eprint = {nnnn.nnnnn},
  primaryClass = {mm.LL},

where *mm.LL* should be replaced by the primary class, such as *cs.LG* or *cs.AI*.


