"
Baseline du projet : décrit les paquets à charger et leurs dépendances.

Chargement :
	Metacello new
		baseline: 'ModelisationGraphes';
		repository: 'github://CrazzyBuilds/projet-modelisation-drones:main/src';
		load.
"
Class {
	#name : 'BaselineOfModelisationGraphes',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfModelisationGraphes',
	#package : 'BaselineOfModelisationGraphes'
}

{ #category : 'baselines' }
BaselineOfModelisationGraphes >> baseline: spec [

	<baseline>
	spec for: #common do: [ spec package: 'Modelisation - graphes' ]
]
