; Explanation of Signs
; # Win (Windows logo key)
; ! Alt
; ^ Control
; + Shift
; &  An ampersand may be used between any two keys or mouse buttons to combine them into a custom hotkey.
; * - fires replacement immediately, O - removes default trigger character (ahk will be triggered with space)

; AHK Docs
; https://gist.github.com/csharpforevermore/11348986
; https://autohotkey.com/docs/Hotkeys.htm
; https://autohotkey.com/docs/Hotstrings.htm


#IfWinActive ahk_class Chrome_WidgetWin_1
{
	; SHIFT WIN G for gmail
	+#g::
	run https://mail.google.com/mail/u/0/#inbox
	Return

	; SHIFT WIN A for amazon
	+#a::
	run https://www.amazon.com
	Return

	; SHIFT WIN B for ...
	+#b::
	run https://www.defineyour.own
	Return		
}
