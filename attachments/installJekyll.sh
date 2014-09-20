#!/bin/bash

RUBY=`dpkg-query -l ruby1.9.3 2> /dev/null`

if [ -z "$RUBY" ]
then
    echo "Installation du ruby"
    sudo aptitude install ruby1.9.3
fi

BUNDLER=`gem list | grep bundler`

if [ -z "$BUNDLER" ]
then
    echo "Installation de bundler"
    sudo gem install bundler
fi

if [ ! -e Gemfile ]
then
    echo "Création du fichier Gemfile"
    printf "source 'https://rubygems.org'\ngem 'jekyll'" > Gemfile

fi

echo "Récupération des dépendances"
bundle install
