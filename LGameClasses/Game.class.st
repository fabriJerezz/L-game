Class {
	#name : #Game,
	#superclass : #BorderedMorph,
	#instVars : [
		'cells'
	],
	#category : #LGameClasses
}

{ #category : #'as yet unclassified' }
Game >> cellsPerSide [
"The number of cells along each side of the game"
^ 10

]

{ #category : #abstract }
Game >> declareWinner [
	"Determina quien es el ganador del juego"
	"Seguramente viendo de quien es el turno o viendo de quién fue el último movimiento"


]

{ #category : #initialization }
Game >> initialize [
| sampleCell width height n |
super initialize.
n := self cellsPerSide.
sampleCell := Board new.
width := sampleCell width.
height := sampleCell height.
self bounds: (5 @ 5 extent: (width * n) @ (height * n) + (2 * self
borderWidth)).
cells := Array2D
new: n
tabulate: [ :i :j | self newCellAt: i at: j ]

]

{ #category : #abstract }
Game >> isGameOver [
	"Determina cuando se termina el juego"

	| temporary variable names |
	
]

{ #category : #'instance creation' }
Game >> newCellAt: i at: j [
"Create a cell for position (i,j) and add it to my on-screen
representation at the appropriate screen position. Answer the new
cell"
| c origin |
c := Board new.
origin := self innerBounds origin.
self addMorph: c.
c position: ((i - 1) * c width) @ ((j - 1) * c height) + origin.
c mouseAction: [ self toggleNeighboursOfCellAt: i at: j ].
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

{ #category : #accessing }
Game >> toggleNeighboursOfCellAt: i at: j [
i > 1
ifTrue: [ (cells at: i - 1 at: j) toggleState ].
i < self cellsPerSide
ifTrue: [ (cells at: i + 1 at: j) toggleState ].
j > 1
ifTrue: [ (cells at: i at: j - 1) toggleState ].
j < self cellsPerSide
ifTrue: [ (cells at: i at: j + 1) toggleState ]
]
