# DogSitter

Création du backend d'une application de suivi d'un service de mise en relation pour le dogsitting dans le cadre de la formation The Hacking Project.

Application fonctionnelle en mode console :

* model Dog, Dogsitter, Stroll
* génération des seeds avec la gem Faker
* intégration de la gem table_print pour afficher les tables en mode console

```
bundle install
rails console
tp Dog.all #pour afficher la table des chiens
tp Dogsitter.all #pour afficher la table des dogsitters
tp Stroll.all #pour afficher la table des RDV
```
