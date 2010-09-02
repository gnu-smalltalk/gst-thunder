IRVisitor subclass: IRPrinter [

    IRPrinter class >> on: aProgram [

	^ self new
	    initialize;
	    visitProgram: aProgram;
	    yourself
    ]

    | stream |

    initialize [

	stream := WriteStream on: String new
    ]

    stream [

	^ stream
    ]

    visitProgram: aProgram [

	aProgram accept: self
    ]

    visitVariableDeclaration: aVariable [

        stream
            nextPutAll: aVariable name, ' ', aVariable type name;
            nl
    ]

    visitMov: aMov [

	aMov printOn: stream
    ]   

    visitAdd: anAdd [

	anAdd printOn: stream
    ]

    visitSub: aSub [

	aSub printOn: stream
    ]

    visitMul: aMul [

	aMul printOn: stream
    ]

    visitDiv: aDiv [

	aDiv printOn: stream
    ]

    visitMod: aMod [

	aMod printOn: stream
    ]

    visitAnd: anAnd [

	anAnd printOn: stream
    ]

    visitOr: anOr [

	anOr printOn: stream
    ]

    visitXor: aXor [

	aXor printOn: stream
    ]

    visitLsh: aLsh [

	aLsh printOn: stream
    ]

    visitRsh: aRsh [

	aRsh printOn: stream
    ]

    visitLoad: aLoad [

        aLoad printOn: stream
    ]

    visitStore: aStore [

        aStore printOn: stream
    ]
]
