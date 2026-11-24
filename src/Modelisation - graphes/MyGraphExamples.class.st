Class {
	#name : 'MyGraphExamples',
	#superclass : 'Object',
	#category : 'Modelisation - graphes',
	#package : 'Modelisation - graphes'
}

{ #category : 'examples' }
MyGraphExamples class >> exampleArc1 [
	" Un seul arc, qui autorise toujours la traversée, et qui renvoit l'id de sa source"

	^ MyArc clause: [ :a | true ] behavior: [ :a | a source id ]
]

{ #category : 'examples' }
MyGraphExamples class >> exampleArc2 [
	" Un seul arc, qui autorise  la traversée sous condition , et qui renvoit l'id de sa source"

	^ MyArc
		  clause: [ :a | a   id < 10 ]
		  behavior: [ :a | a source id ]
]

{ #category : 'examples' }
MyGraphExamples class >> exampleGraph1 [
	" Un seul noeud, simple, sans arc"

	| graph node |
	graph := MyGraph new.
	node := self exampleNode1.
	graph addNode: node.
	^ graph
]

{ #category : 'examples' }
MyGraphExamples class >> exampleGraph2 [
	" Deux noeuds, un arc"

	| g n1 n2 v |
	g := MyGraph new.
	n1 := self exampleNode1.
	g addNode: n1.
	n2 := self exampleNode2.
	g addNode: n2.
	v := self exampleArc1.
	g connect: n1 to: n2 using: v.
	^ g
]

{ #category : 'examples' }
MyGraphExamples class >> exampleGraph3 [
	" Deux noeuds, deux arc"

	| g n1 n2 v1 v2 |
	g := MyGraph new.
	n1 := self exampleNode1.
	g addNode: n1.
	n2 := self exampleNode2.
	g addNode: n2.
	v1 := self exampleArc1.
	v2 := self exampleArc2.

	g connect: n1 to: n2 using: v1.
	g connect: n2 to: n1 using: v2.
	^ g
]

{ #category : 'examples' }
MyGraphExamples class >> exampleNode1 [
	" Un seul noeud, dont l'id est 12/5 eme "

	^ MyNode fromId: (12 / 5) asFloat
]

{ #category : 'examples' }
MyGraphExamples class >> exampleNode2 [
	" Un seul noeud, dont l'id est 15 eme "

	^ MyNode fromId: 15 asFloat
]
