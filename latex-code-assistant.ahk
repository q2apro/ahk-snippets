﻿; # Win (Windows logo key) 
; ! Alt 
; ^ Control 
; + Shift 
; &  An ampersand may be used between any two keys or mouse buttons to combine them into a custom hotkey.  


; This script helps to quickly enter latex, for instance, you enter "##f" and it turns immediately 
; into "\frac{}{}" and puts the cursor on the right position 

; Use three hash signs, e. g. "###f" to output inline TeX: "\( \frac{}{} \)"

; Enter "\\-" to get only inline TeX: "\(  \)"


:*?C:\\-::
	String := "\(  \)"
	SendRaw %String% 
	Send {Left 3}
return

:*?C:##f::
	String := "\frac{}{}"
	SendRaw %String% 
	Send {Left 3}
return

:*?C:###f::
	String := "\( \frac{}{} \)"
	SendRaw %String% 
	Send {Left 3}
return

:*?C:##int::
	String := "\int_{0}^{\infty}"
	SendRaw %String% 
	Send {Left 10}
return

:*?C:###int::
	String := "\( \int_{0}^{\infty} \)"
	SendRaw %String% 
	Send {Left 10}
return

:*?C:##r::
	String := "\sqrt[]{}"
	SendRaw %String% 
	Send {Left 3}
return

:*?C:###r::
	String := "\( \sqrt[]{} \)"
	SendRaw %String% 
	Send {Left 3}
return

:*?C:##log::
	String := "\log_{}{}"
	SendRaw %String% 
	Send {Left 3}
return

:*?C:###log::
	String := "\( \log_{}{} \)"
	SendRaw %String% 
	Send {Left 3}
return

:*?C:##lim::
	String := "\lim_{x\to\infty}"
	SendRaw %String% 
	Send {Left 10}
return

:*?C:###lim::
	String := "\( \lim_{x\to\infty} \)"
	SendRaw %String% 
	Send {Left 10}
return

:*?C:##sum::
	String := "\sum_{n=0}^{\infty}{n}"
	SendRaw %String% 
	Send {Left 14}
return

:*?C:###sum::
	String := "\( \sum_{n=0}^{\infty}{n} \)"
	SendRaw %String% 
	Send {Left 14}
return

:*?C:##prod::
	String := "\prod_{n=0}^{\infty}{n}"
	SendRaw %String% 
	Send {Left 14}
return

:*?C:###prod::
	String := "\( \prod_{n=0}^{\infty}{n} \)"
	SendRaw %String% 
	Send {Left 14}
return

:*?C:##mat::
	String := "\begin{pmatrix} a & b \\ c & d \end{pmatrix}"
	SendRaw %String% 
	Send {Left 28}
return

:*?C:###mat::
	String := "\( \begin{pmatrix} a & b \\ c & d \end{pmatrix} \)"
	SendRaw %String% 
	Send {Left 28}
return

:*?C:##vec::
	String := "\begin{pmatrix} x\\y\\z \end{pmatrix}"
	SendRaw %String% 
	Send {Left 21}
return

:*?C:###vec::
	String := "\( \begin{pmatrix} x\\y\\z \end{pmatrix} \)"
	SendRaw %String% 
	Send {Left 21}
return

; END