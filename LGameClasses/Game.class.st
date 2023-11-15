Class {
	#name : #Game,
	#superclass : #BorderedMorph,
	#category : #LGameClasses
}

{ #category : #abstract }
Game >> declareWinner [
	"Determina quien es el ganador del juego"
	"Seguramente viendo de quien es el turno o viendo de quién fue el último movimiento"


]

{ #category : #abstract }
Game >> isGameOver [
	"Determina cuando se termina el juego"

	| temporary variable names |
	
]

{ #category : #abstract }
Game >> nextTurn [
	"Asigna el proximo turno a uno de los 2 jugadores"
	
	currentPlayerIndex := currentPlayerIndex  \\ players size + 1
]

{ #category : #abstract }
Game >> startGame [
	"Inicio del juego"
	
players := { Player new. Player new }.
currentPlayerIndex := 1.
board := Board new.
]
