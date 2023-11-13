Class {
	#name : #Board,
	#superclass : #Object,
	#instVars : [
		'grid'
	],
	#category : #LGameClasses
}

{ #category : #abstract }
Board >> isValidMove [
	"Método para analizar si un movimiento es válido independiente del tipo de pieza"
	"Ver si verdaderamente es necesario este método"
	
]

{ #category : #abstract }
Board >> placePiece: aPiece position: aPosition [
	"método para colocar una pieza en donde indique el movimiento del jugador"


]
