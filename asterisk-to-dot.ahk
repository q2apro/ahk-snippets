; # Win (Windows logo key) 
; ! Alt 
; ^ Control 
; + Shift 
; &  An ampersand may be used between any two keys or mouse buttons to combine them into a custom hotkey.  


; hold SHIFT then Numpad * to get the dot character ·
+NumpadMult::·

; hit CAPS then Numpad * or * to get the dot character ·
#If GetKeyState("CapsLock","T")
{
	; https://www.autohotkey.com/docs/KeyList.htm
	NumpadMult::Send {·}
	*::Send {·}
}

; END