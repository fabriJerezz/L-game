Class {
	#name : #Player,
	#superclass : #Object,
	#instVars : [
		'name',
		'pieces',
		'score'
	],
	#category : #LGameClasses
}

{ #category : #initialization }
Player >> initialize [
	"método para iniciar una instancia de clase"

	pieces := OrderedCollection new.
	score := 0.
]

{ #category : #abstract }
Player >> makeMove: aPiece newPosition: aPosition [
	"Método para reliazar el movimiento del turno"
	"Se indicaría la pieza que se desea mover y la positión (tablero y pieza en sí) a la que se quiere mover"

]
