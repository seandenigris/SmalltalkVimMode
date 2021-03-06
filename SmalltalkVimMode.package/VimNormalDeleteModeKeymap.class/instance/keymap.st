accessing
keymap
	| cmdMap assocs |
	cmdMap := Dictionary new.
		0 to: 255 do: [ :i |
		   cmdMap at: (Character value: i) put: #noop: ].
	assocs := {
	($w -> #deleteWord:).
	($0 -> #deleteLineBegin:).
	($$ -> #deleteLineEnd:).
	($g -> #deleteBufferBegin:).
	($G -> #deleteBufferEnd:).
	($d -> #deleteLine:)}.
	assocs do: [ :x | cmdMap at: x key put: x value ].
	^ cmdMap