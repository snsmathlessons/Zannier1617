# Workflow per la trascrizione delle lezioni

## Iniziare una nuova lezione

Ecco cosa fare per iniziare a lavorare su una nuova lezione:

* Controllate di non avere nulla da committare (potete eseguire un `git status`
  per vedere come siete messi). Se avete qualcosa di modificato, salvate le
  modifiche con `git commit -a` (utilizzando il vostro editor di default)

* Spostatevi sul branch master con `git checkout master` e da qui copiate tutto
  nel nuovo branch che creeremo per la nuova lezione: `git checkout -b
  lezione-YYMMDD` dove al posto di `YYMMDD` dovete inserire anno, mese e giorno
  della lezione (eventualmente riempite con degli zeri se il mese o giorno non
  dovessero avere due cifre)

* Nel nuovo branch dentro la cartella `lezioni` create un file dal nome
  `lezione-YYMMDD.tex` con `YYMMDD` come sopra. Adesso fate tutte le modifiche
  che dovete dentro al vostro file. Iniziate il vostro file con una linea del
  tipo `\section{DD/MM/YY - Breve Descrizione della lezione}`.

* Ricordate che il branch che avete creato è a vostra disposizione. Non esitate
  a salvarvi le modifiche che effettuate con `git commit -a` ed anche ad
  inviarle al repository principale con `git push`. Sarebbe comunque bello che i
  commit che date siano significativi e con una descrizione sensata. Inoltre
  dentro al vostro messaggio di commit inserite sempre il numero di issue a cui
  vi riferite (issue della lezione, che potete inserire scrivendo dentro al
  commit `#NUM`)

## Chiudere una lezione

Dopo un po' di tempo avrete finito di trascrivere la vostra lezione. A questo
punto fate le seguenti cose:

* Assicuratevi che il pdf compili sul vostro computer e controllate il sorgente
  per vedere che rispetti abbastanza (le regole)[REGOLELATEX.md]. A questo punto
  date il commit finale per la lezione `git commit -a` e nel messaggio inserite
  anche la dicitura `chiusura lezione #NUM`, dove NUM è il numero di issue della
  lezione.

* A questo punto potete dare il `git push` per portare le vostre modifiche sul
  repository principale. Se avete fatto tutto correttamente l'issue della vostra
  lezione verrà chiusa ed il vostro contributo unito al branch
  principale. Altrimenti qualcuno vi segnalerà cosa non va, scrivendolo nella
  issue e vi toccherà risolverlo.

## Cambiare Lezione

Se volete passare a lavorare su un'altra lezione rispetto a quella che state
attualmente scrivendo potete dare il comando (dopo aver verificato che non ci
sia nulla in attesa di commit) `git checkout lezione-YYMMDD` dove YYMMDD si
riferisce alla lezione che volete andare ad editare.

## Correggere Errori

Per la correzione degli errori sono riservati i branch `fix-YYMMDD` dove YYMMDD
si riferisce alla lezione della quale state correggendo gli errori. Quindi
nell'ordine eseguite:

* `git checkout lezione-YYMMDD` per passare nella lezione che volete
  modificare.

* `git checkout -b fix-YYMMDD` per creare e spostarvi nel branch della
  correzione errori.

* Qui cambiate quello che dovete e successivamente committate tutto `git commit
  -a` ricordandovi di inserire il numero di issue nel messaggio di commit sulla
  falsariga di `corretta lezione #NUM`.

* Con un `git push` portate le vostre modifiche sul repository principale e
  successivamente potete dare un `git checkout master` per rimettervi sul branch
  principale.
