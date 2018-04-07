#!/bin/bash -       
#description     :install pipenv and create foo environment
#author          :Michele Gazzetti
#date            :16.03.18
#notes           :
#==============================================================================

validate_install(){
    pipenv --python 2.7
    pipenv --rm
}

sudo apt-get install -y python-pip
# install pipenv
sudo pip install pipenv

#validate installation
validate_install

## create environment
#pipenv --python 2.7

## (eq of workon)
#pipenv shell

## (install dev env)
#pipenv install --dev

## install requirements
#pipenv install -r requirements-local-cache.txt 

## check packages installed
#pipenv graph

## locate project
#pipenv --where

## locate virtualenv
#pipenv --venv

## locate interpreter
#pipenv --py

## install nose for dev
#pipenv install nose --dev

## install neovim for dev
#pipenv install neovim --dev


## create requirements file
#pipenv lock -r > ../requirements.txt

## install requirements file
#pipenv install --requirements requirements.txt


#pipenv install neovim --dev

##
#pipenv check


