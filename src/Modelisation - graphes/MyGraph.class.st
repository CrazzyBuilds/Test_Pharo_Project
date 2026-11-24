"
init : On definit un subset minimal qui enregistres les noeuds et les arcs 
"
Class {
	#name : 'MyGraph',
	#superclass : 'Object',
	#instVars : [
		'nodes',
		'arcs'
	],
	#category : 'Modelisation - graphes',
	#package : 'Modelisation - graphes'
}

{ #category : 'arcs' }
MyGraph >> activableArcs [

^ arcs select:[:a| a evaluateClause].
]

{ #category : 'connection creation' }
MyGraph >> addArc: anArc [

	self assert: (self contains: anArc source).
	self assert: (self contains: anArc destination).
	(self containsArc: anArc) ifFalse: [ arcs add: anArc ]
]

{ #category : 'nodes accesing' }
MyGraph >> addNode: aNode [
	"node's id is the dictionary key."

	nodes add: aNode id -> aNode

	" eqivalent a nodes at: aNode id put: aNode "
]

{ #category : 'accessing' }
MyGraph >> arcs [

	^ arcs
]

{ #category : 'accessing' }
MyGraph >> arcs: anObject [

	arcs := anObject
]

{ #category : 'connection creation' }
MyGraph >> connect: aNode to: anotherNode using: anArc [

	self assert: (self contains: aNode).
	self assert: (self contains: anotherNode).
	anArc source: aNode destination: anotherNode.
	self addArc: anArc
]

{ #category : 'testing' }
MyGraph >> contains: aNode [

	^ nodes values includes: aNode
]

{ #category : 'testing' }
MyGraph >> containsArc: anArc [

	arcs detect:[:a| a = anArc] ifNone: [^false].
	^true.
	
]

{ #category : 'initialize-release' }
MyGraph >> initialize [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	super initialize. 
	nodes:= Dictionary new.
	arcs := OrderedCollection new.
]

{ #category : 'nodes accesing' }
MyGraph >> nodeAt: aKey [

	^ nodes at: aKey
]

{ #category : 'accessing' }
MyGraph >> nodes [

	^ nodes
]

{ #category : 'accessing' }
MyGraph >> nodes: anObject [

	nodes := anObject
]

{ #category : 'nodes accesing' }
MyGraph >> removeNode: aNode [
	"node's id is the dictionary key."

	nodes removeKey: aNode id
]

{ #category : 'stepping' }
MyGraph >> step [
	"make a runtime step"

	| activables |
	activables := self activableArcs.
	activables do: [ :a | a traverse].
	^ activables notEmpty
]

{ #category : 'nodes accesing' }
MyGraph >> updateNode: aNode newId: anId [
	"node's id is the dictionary key."

	self assert: (nodes keys includes: anId) not .
	nodes removeKey: aNode id.
	aNode id: anId.
	self addNode: aNode
]
