# SMSC research placement

Learning materials for the SMSC research placement, published as two Quarto books:

* **R learning materials**: https://evansbrians.github.io/smsc_research_placement/r_learning/
* **Research skills**: https://evansbrians.github.io/smsc_research_placement/research_skills/

## Building locally

Each book is a Quarto profile:

```
quarto preview --profile r_learning
quarto preview --profile research_skills
```

## Publishing

Pushing to `main` runs `.github/workflows/publish.yml`, which renders both books and deploys them to GitHub Pages. The workflow does not run R. It uses the stored results in `_freeze/`, so render any lesson with changed R code locally and commit `_freeze/` along with it.
