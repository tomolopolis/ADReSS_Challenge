# ADReSS_Challenge
Repo for code / analysis for my submission to the Interspeech 2020 [ADReSS Challenge](http://www.homepages.ed.ac.uk/sluzfil/ADReSS/)

To re-run the analysis presented:

### Checkout & Install Required Deps
Assuming you've already got [Anaconda / Miniconda](https://www.anaconda.com/products/individual) installed.
1. Checkout the repo
```zsh
$ git clone https://github.com/tomolopolis/ADReSS_Challenge.git
$ cd ADReSS_Challenge
```
2. Create new python conda environment:
```zsh
$ conda create -n adress_chlng python=3.7
```
3. Activate env:
```zsh
$ conda activate adress_chlng
```
4. Install deps:
```zsh
$ pip install -r requirements
```
5. Go back to base env, and install nb_conda_kernels to expose conda envrionments to jupyter:
```zsh
$ conda install nb_conda_kernels
```
6. Start Jupyter
```zsh
$ jupyter lab
```

### How to re-run the Analyis
1. To run the analysis as-is, place the unzipped train set data into ../data/train
2. Open the 'Analysis.ipynb' notebook. 
3. Top right corner, select the adress_chlng kernel, run all cells.

## RoBERTa / BERT Language Model Fine Tuning
1. First get access to the [BNC corpus](https://www.english-corpora.org/bnc/)
2. Place unzipped corpus into ../data/bnc2014spoken-xml 
3. Open and run notebook Fine-Tune-LanguageModel.ipynb, to clean bnc corpus, apply 4 sentence sliding window, train BBPE tokenizer and output LM fine tuning config, finally runs the training script that is largely replicated from the training script provided by huggingface.

