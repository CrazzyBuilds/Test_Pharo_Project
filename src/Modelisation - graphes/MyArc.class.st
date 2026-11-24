Class {
	#name : 'MyArc',
	#superclass : 'Object',
	#instVars : [
		'source',
		'destination',
		'clause',
		'behavior'
	],
	#category : 'Modelisation - graphes',
	#package : 'Modelisation - graphes'
}

{ #category : 'instance creation' }
MyArc class >> clause: aBloc behavior: anotherBloc [

	^ self new
		  clause: aBloc;
		  behavior: anotherBloc;
		  yourself
]

{ #category : 'comparing' }
MyArc >> = aValue [

	self class = aValue class ifFalse: [ ^ false ].
	self source = aValue source ifFalse: [ ^ false ].
	self destination = aValue destination ifFalse: [ ^false ].
	self behavior = aValue behavior ifFalse: [ ^false ].
	self clause = aValue clause ifFalse: [ ^false ].
	^ true
]

{ #category : 'accessing' }
MyArc >> behavior [

	^ behavior
]

{ #category : 'accessing' }
MyArc >> behavior: anObject [

	behavior := anObject
]

{ #category : 'accessing' }
MyArc >> clause [

	^ clause
]

{ #category : 'accessing' }
MyArc >> clause: anObject [

	clause := anObject
]

{ #category : 'accessing' }
MyArc >> destination [

	^ destination
]

{ #category : 'evaluation' }
MyArc >> evaluateClause [

	^ self clause value: self source
]

{ #category : 'accessing' }
MyArc >> source [

	^ source
]

{ #category : 'as yet unclassified' }
MyArc >> source: aNode destination: anotherNode [

	source := aNode.
	destination := anotherNode
]
