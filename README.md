# Projet de modélisation : essaim de drones

Projet du cours *Modélisation et métamodélisation* (ENSTA Bretagne), réalisé en [Pharo](https://pharo.org) 13.

L'objectif est d'appliquer la démarche de modélisation à un essaim de drones : un graphe générique de nœuds communicants, des algorithmes distribués (élection de leader, clustering), une simulation en temps discret avec barrière, puis des drones portés par les nœuds et une carte de couverture.

## Feuille de route

| Étape | Contenu |
|---|---|
| 1. Graphe | `Graph`, `GraphNode`, `GraphArc` pilotés par les tests ; champs programmables (blocs) ; élection de leader ; clustering (Composite) |
| 2. Simulation en temps discret | scheduler par tours (photo des états, calcul, barrière, publication) ; variante avec nœud arbitre ; vérification avec et sans barrière, cas du graphe partitionné avec trace |
| 3. Drones | drones en charge utile, nœuds en Proxy (`doesNotUnderstand:`) ; missions de photographie distribuées par le leader ; carte de couverture ; méta-nœuds par clustering ; validation (ni zone en double, ni zone oubliée) |

## Charger le projet

Dans un Playground d'une image Pharo 13 :

```smalltalk
Metacello new
	baseline: 'ModelisationGraphes';
	repository: 'github://CrazzyBuilds/projet-modelisation-drones:main/src';
	load.
```

## Organisation

- `src/` : code au format Tonel, un fichier par classe (format d'Iceberg).
- `Modelisation - graphes` : le graphe générique (nœuds, arcs) et ses algorithmes.
- `BaselineOfModelisationGraphes` : liste des paquets et dépendances.

Travail au quotidien : les commits sont faits depuis Iceberg (sans push), puis poussés depuis un terminal avec `git push`.
