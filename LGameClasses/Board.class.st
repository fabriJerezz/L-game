Class {
	#name : #Board,
	#superclass : #SimpleSwitchMorph,
	#instVars : [
		'mouseAction'
	],
	#category : #LGameClasses
}

{ #category : #initialization }
Board >> initialize [
	""""" Metodo para inicializar "
	
super initialize.
self label: ''.
self borderWidth: 2.
bounds := 0 @ 0 corner: 4 @ 4.
offColor := Color paleYellow.
onColor := Color paleBlue darker.
self useSquareCorners.
self turnOff
]

{ #category : #abstract }
Board >> isValidMove [
	"Método para analizar si un movimiento es válido independiente del tipo de pieza"
	"Ver si verdaderamente es necesario este método"
	
]

{ #category : #abstract }
Board >> placePiece: aPiece position: aPosition [
	"método para colocar una pieza en donde indique el movimiento del jugador"


]
