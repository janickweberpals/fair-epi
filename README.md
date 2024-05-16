# FAIRification of pharmacoepidemiological research using `Git`

[![DOI](https://zenodo.org/badge/719281329.svg)](https://zenodo.org/doi/10.5281/zenodo.10222659)

Transparency and reproducibility in conducting healthcare database studies in pharmacoepidemiology are critical scientific requirements for meaningful research. To increase the adoption of transparent and reproducible workflows in real-world evidence (RWE) studies using the version control systems (VCS), this tutorial aims to give a practical introduction tailored for pharmacoepidemiologists on how to set up, structure, and implement workflows using `Git`, the most frequently used VCS to date.

## About

This repository hosts all documents and files for the manuscript project on...

**The FAIRification of pharmacoepidemiological research: A practical introduction to reproducible analytical workflows using git and R**


This manuscript was [published in the journal *Pharmacoepidemiology and Drug Safety (PDS)* special issue focusing on **Pharmacoepidemiology Research Reproducibility**](https://pubmed.ncbi.nlm.nih.gov/38173166/)

![](figures/Figure_3_workflow.png){out.width="50%"}

## Advanced readings on `Git` and other resources

-   Main `Git` website to download and learn more about `Git:` <https://git-scm.com>

-   [Pro Git](https://git-scm.com/book/en/v2) by Scott Chacon and Ben Straub.

-   Comprehensive guide on the use of Git in combination with R: <https://happygitwithr.com/>

-   Cheatsheet on most important `Git` commands: <https://education.github.com/git-cheat-sheet-education.pdf>

-   GitHub Desktop App: <https://desktop.github.com/>

-   Git manual by *Atlassian* (provider of the `Bitbucket` platform): <https://www.atlassian.com/git>

-   Coursera courses:

    -   [Introduction to Git and GitHub](https://www.coursera.org/learn/introduction-git-github) (Google)

    -   [Version Control with Git](https://www.coursera.org/learn/version-control-with-git) (Atlassian)

    -   [Getting Started with Git and GitHub](https://www.coursera.org/learn/getting-started-with-git-and-github) (IBM)

    -   [Making Data Science Work for Clinical Reporting](https://www.coursera.org/learn/making-data-science-work-for-clinical-reporting?=) (Genentech)

-   Quarto (open-source scientific and technical publishing system for reproducible research): <https://quarto.org>

-   Choosing a suitable license for a remote repository: Public repositories need to be licensed to be truly open source. If no license is provided, the work is by default under exclusive copyright. The website <https://choosealicense.com> provides an excellent overview of the different types of licenses.

-   Useful Git repositories for observational healthcare research:

    -   Division of Pharmacoepidemiology and Pharmacoeconomics: <https://gitlab-scm.partners.org/drugepi>

    -   Observational Health Data Sciences and Informatics (OHDSI): <https://github.com/OHDSI>

    -   Darwin EU® Private Development Repository: <https://github.com/darwin-eu-dev>

    -   Pharmaverse (Network of developers of curated open source R packages for clinical reporting): [https://pharmaverse.org](https://pharmaverse.orghttps://pharmaverse.org) & <https://github.com/pharmaverse/>
    
## Repository details

This repository contains the following sub-directories/-files:

* `README.md`: Short description and information about the project. 

* `manuscript`: Sub-directory where manuscript and supplementary material are stored.

* `renv`: Project-specific R package library. Fore more information, please visit the [renv website](https://rstudio.github.io/renv/articles/renv.html).

* `renv.lock`: `renv` lockfile that keeps track of all R packages and version.

* `.gitignore`: File to specify which files should not be tracked via git.

* `.Rprofile`: Environment file for R projects to store things like paths or keys (you can also setup an `.Renviron`)

* `.git`: Sub-directory where all `Git` changes are tracked

## Dependencies

To reproduce R scripts and Quarto files in this repository, `git clone` or `fork` it and run `renv::restore()`.
