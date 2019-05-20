# Proteomics NLP Exploration

[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/austinkeller/proteomics-nlp-exploration/blob/master/notebook.ipynb
)

Exploring classification of proteomics literature and repository metadata using NLP.

Start at the [notebook](notebook.ipynb) to view the results of the project or use the "Open in Colab" button above to start in interactive view.

## Project Organization

    ├── LICENSE
    ├── build.py           <- luigi workflow with classes like 'Train' or 'Data' as build targets
    ├── README.md          <- The top-level README for developers using this project.
    ├── notebook.ipynb     <- The primary Jupyter notebook for documenting the analysis.
    ├── data
    │   ├── external       <- Data from third party sources.
    │   ├── interim        <- Intermediate data that has been transformed.
    │   ├── processed      <- The final, canonical data sets for modeling.
    │   └── raw            <- The original, immutable data dump.
    │
    ├── docs               <- A default Sphinx project; see sphinx-doc.org for details
    │
    ├── models             <- Trained and serialized models, model predictions, or model summaries
    │
    ├── notebooks          <- Supplemental Jupyter notebooks. Naming convention is a number (for ordering),
    │                         the creator's initials, and a short `-` delimited description, e.g.
    │                         `1.0-jqp-initial-data-exploration`.
    │
    ├── references         <- Data dictionaries, manuals, and all other explanatory materials.
    │
    ├── reports            <- Generated analysis as HTML, PDF, LaTeX, etc.
    │   └── figures        <- Generated graphics and figures to be used in reporting
    │
    ├── requirements.txt   <- The requirements file for reproducing the analysis environment, e.g.
    │                         generated with `pip freeze > requirements.txt`
    │
    ├── start_notebook.sh  <- builds and launches the dockerized notebook server for reproducible analysis
    ├── src                <- Source code for use in this project.
    │   ├── __init__.py    <- Makes src a Python module
    │   │
    │   ├── data           <- Scripts to download or generate data
    │   │   └── make_dataset.py
    │   │
    │   ├── features       <- Scripts to turn raw data into features for modeling
    │   │   └── build_features.py
    │   │
    │   ├── models         <- Scripts to train models and then use trained models to make
    │   │   │                 predictions
    │   │   ├── predict_model.py
    │   │   └── train_model.py
    │   │
    │   ├── visualization  <- Scripts to create exploratory and results oriented visualizations
    │   │    └── visualize.py
    │   │
    │   └── test           <- Unit tests for source modules
    │
    └── tox.ini            <- tox file with settings for running tox; see tox.testrun.org

## Running the Project

First, [install the Docker client](http://docs.docker.com) for your system.

Then, in a terminal, change to the project directory (the one containing this file) and:

- Test the installation using `docker info`
- Run `python build.py` to download data and run any preprocessing steps
- Start the notebook container by running `sh start_notebook.sh` from this directory

Now your notebook server is running! Open a browser and point to `http://localhost`. Next,

- Enter the password token displayed on the terminal
- Click on `notebook.ipynb` to open
- If you're accessing a finished notebook, you can browse, edit the code, and execute the cells to reproduce or alter the figures.
- If you're starting a new notebook, read the project guidelines in the notebook and start coding!

---
*created with [cookiecutter](http://cookiecutter.readthedocs.io/en/latest/), using the [Data science project template](https://github.com/austinkeller/datascience-project-template)*
