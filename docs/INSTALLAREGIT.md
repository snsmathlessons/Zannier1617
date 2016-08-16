# Come installare git

Per poter contribuire al repository trascrivendo alcune lezioni è quasi
essenziale avere git installato sul proprio computer.

Riportiamo di seguito un paio di modi rapidi per poter iniziare subito a
contribuire, ottenuti riassumendo quelli presenti in [questa
pagina](https://git-scm.com/book/it/v1/Per-Iniziare-Installare-Git).

## Linux

### Debian / Ubuntu

Supponendo di eseguire i comandi come utente nel gruppo sudo basta dare i comandi
```
sudo apt-get install libcurl4-gnutls-dev libexpat1-dev gettext libz-dev git
```

### Fedora

Anche qui supponiamo di eseguire i comandi come utente sudoer
```
sudo yum install curl-devel expat-devel gettext-devel openssl-devel zlib-devel git
```

## Mac

### Primo Metodo: Installer Grafico

Questo è probabilmente il metodo più semplice: basta scaricare [questo installer
grafico](http://sourceforge.net/projects/git-osx-installer/) da sourceforge.

### Secondo Metodo: MacPorts

Se hai già installato macports (http://www.macports.org) puoi installarlo subito
```
sudo port install git +doc +bash_completion +gitweb
```

### Terzo Metodo: Homebrew

Se hai già installato Homebrew (http://brew.sh/) puoi installare git con
```
brew install git
```

## Windows

### Msysgit

Il progetto msysgit ha uno dei processi di installazione più
semplici. Semplicemente basta scaricare l'eseguibile ed installarlo. Potete
trovarlo a [questa pagina](http://msysgit.github.io/)

# In caso di problemi

In caso di problemi non scordatevi mai che Google può darvi un'ottima mano a
capire qual è il problema che vi sta assillando e le possibili soluzioni.

# Dopo l'installazione

Dopo essere riusciti ad installare git potete iniziare subito a
[contribuire](COMECONTRIBUIRE.md) a questo progetto.
