Class {
	#name : 'MyNode',
	#superclass : 'Object',
	#instVars : [
		'id',
		'arcs',
		'behavior',
		'payload'
	],
	#category : 'Modelisation - graphes',
	#package : 'Modelisation - graphes'
}

{ #category : 'instance creation' }
MyNode class >> fromId: anID [
	"id is mandatory"

	| tmp |
	tmp := super new.
	tmp id: anID.
	^ tmp
]

{ #category : 'instance creation' }
MyNode class >> new [
	"id is mandatory"

	self shouldNotImplement 
]

{ #category : 'comparing' }
MyNode >> = aValue [

	aValue class = self class ifFalse: [ ^ false ].
	^ id = aValue id
]

{ #category : 'accessing' }
MyNode >> arcs [

	^ arcs
]

{ #category : 'accessing' }
MyNode >> arcs: anObject [

	arcs := anObject
]

{ #category : 'accessing' }
MyNode >> behavior [

	^ behavior
]

{ #category : 'accessing' }
MyNode >> behavior: anObject [

	behavior := anObject
]

{ #category : 'accessing' }
MyNode >> id [

	^ id
]

{ #category : 'accessing' }
MyNode >> id: anObject [

	id := anObject
]

{ #category : 'accessing' }
MyNode >> initialize [ 
	super initialize.
	arcs:= OrderedCollection new.
	behavior := [ :a| a ]
	
]

{ #category : 'accessing' }
MyNode >> payload [

	^ payload
]

{ #category : 'accessing' }
MyNode >> payload: anObject [

	payload := anObject
]

{ #category : 'printing' }
MyNode >> printOn: aStream [

	aStream nextPutAll: 'Node '.
	self id printOn: aStream
]
