commands
deleteLine: aKeyboardEvent
 "dd"
 |start end position vimNormalModeKeys |. 
			vimNormalModeKeys := ''.
			position := editor pointIndex.
			editor cursorHome: aKeyboardEvent.
			start := editor pointIndex.
			editor cursorEnd: aKeyboardEvent.
			end := editor pointIndex.
			editor selectFrom: start to: end.
			editor cut.  
    (start = end) & (end > (editor string size))
     ifTrue: [ editor backspace: aKeyboardEvent. editor clipboardTextPut: String cr. ^ true ].
 			start = end 
     ifTrue:  [ editor clipboardTextPut: '' ]
     ifFalse: [ editor clipboardTextPut: (String cr , editor clipboardText)].
			Transcript show: (editor clipboardText asArray asString); show: start asString , ':', end asString, '-', editor string size asString; cr.
	keys := ''.
	^ self normalMode