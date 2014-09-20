---
layout: post
title: Comment installer Jekyll
categories: howto
tags: [Jekyll]
scripts: [installJekyll.sh]
comments: true
share: true
---

[Jekyll](http://jekyllrb.com/) est le moteur de site de [Github](http://github.com). C'est un générateur de pages 
HTML _statiques_, il n'y a donc pas besoin de base de donnée, un simple serveur HTTP fera l'affaire. Cependant, 
avant de mettre en ligne le site, il est important de vérifier _en local_ que le rendu est correct.

Jekyll dépends de [Ruby](http://www.ruby-lang.org) en version _1.9.3_ ou _2.0.0_. Sur 
[Debian Wheezy](http://www.debian.org/), la version _1.9.3_ est disponible sur le repo.

{% highlight bash %}
sudo aptitude install ruby1.9.3
{% endhighlight %}

Pour faciliter l'installation, il est intéressant d'utiliser bundler. Pour cela :

{% highlight bash %}
sudo gem install bundler
{% endhighlight %}

Dans le dossier du site, créer un fichier nommé `Gemfile` et mettre : 

{% highlight ruby %}
source 'https://rubygems.org'
gem 'jekyll'
{% endhighlight %}

Puis lancer la commande :

{% highlight bash %}
bundle install
{% endhighlight %}

Pour générer les pages et lancer un serveur HTTP sur le port 4000 :

{% highlight bash %}
jekyll serve --watch --drafts
{% endhighlight %}

Aller ensuite sur [http://localhost:4000](http://localhost:4000)
