Class {
	#name : #GameController,
	#superclass : #Game,
	#instVars : [
		'game'
	],
	#category : #LGameClasses
}

{ #category : #abstract }
GameController >> endGame [
	"Método para terminar un juego"

	game isGameOver ifTrue: [
        "Lógica para declarar al ganador"
        game declareWinner.
    ] ifFalse: [
        "Lógica para el juego aún en curso"
    ].
]

{ #category : #abstract }
GameController >> initializeWithGame: aGame [

	"Método para inicializar un controlador con un juego en específico"
	
	game := aGame.

	
]

{ #category : #abstract }
GameController >> startGame [

	"Lógica para iniciar un juego"

	game startGame.
	game nextTurn.
]
