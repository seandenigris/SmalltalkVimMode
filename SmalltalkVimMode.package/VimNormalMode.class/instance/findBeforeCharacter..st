find-mode
findBeforeCharacter: aKeyboardEvent 
 | index |
	index := self findBeforeIndexOfCharacter: aKeyboardEvent.
 index = editor pointIndex
  ifFalse: [ editor selectAt: index ].
 ^ self normalMode