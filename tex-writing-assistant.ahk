; # Win (Windows logo key) 
; ! Alt 
; ^ Control 
; + Shift 
; &  An ampersand may be used between any two keys or mouse buttons to combine them into a custom hotkey.  


; This script helps to quickly enter TeX, for instance, you enter "##f" and it turns immediately 
; into "\frac{}{}" and puts the cursor on the right position 

; Use three hash signs, e. g. "###f" to output inline TeX: "\( \frac{}{} \)"

; Enter "\\-" to get only inline TeX: "\(  \)"

; Enter "##pq" to output the pq-formula and "##abc" to output the abc-formula 

; Enter "##zz" for the Zinseszinsformel (compound interest formula)



:*?C:\\-::
	String := "\(  \)"
	SendRaw %String% 
	Send {Left 3}
return

:*?C:###f::
	String := "\( \frac{}{} \)"
	SendRaw %String% 
	Send {Left 3}
return

:*?C:##f::
	String := "\frac{}{}"
	SendRaw %String% 
	Send {Left 3}
return

:*?C:###int::
	String := "\( \int_{0}^{\infty} \)"
	SendRaw %String% 
	Send {Left 10}
return

:*?C:##int::
	String := "\int_{0}^{\infty}"
	SendRaw %String% 
	Send {Left 10}
return

:*?C:###r::
	String := "\( \sqrt[]{} \)"
	SendRaw %String% 
	Send {Left 3}
return

:*?C:##r::
	String := "\sqrt[]{}"
	SendRaw %String% 
	Send {Left 3}
return

:*?C:##R::
	String := "\sqrt{}"
	SendRaw %String% 
	Send {Left 1}
return

:*?C:###log::
	String := "\( \log_{}{} \)"
	SendRaw %String% 
	Send {Left 3}
return

:*?C:##log::
	String := "\log_{}{}"
	SendRaw %String% 
	Send {Left 3}
return

:*?C:###lim::
	String := "\( \lim_{x\to\infty} \)"
	SendRaw %String% 
	Send {Left 10}
return

:*?C:##lim::
	String := "\lim_{x\to\infty}"
	SendRaw %String% 
	Send {Left 10}
return

:*?C:###sum::
	String := "\( \sum_{n=0}^{\infty}{n} \)"
	SendRaw %String% 
	Send {Left 14}
return

:*?C:##sum::
	String := "\sum_{n=0}^{\infty}{n}"
	SendRaw %String% 
	Send {Left 14}
return

:*?C:###prod::
	String := "\( \prod_{n=0}^{\infty}{n} \)"
	SendRaw %String% 
	Send {Left 14}
return

:*?C:##prod::
	String := "\prod_{n=0}^{\infty}{n}"
	SendRaw %String% 
	Send {Left 14}
return

:*?C:###mat::
	String := "\( \begin{pmatrix} a & b \\ c & d \end{pmatrix} \)"
	SendRaw %String% 
	Send {Left 28}
return

:*?C:##mat::
	String := "\begin{pmatrix} a & b \\ c & d \end{pmatrix}"
	SendRaw %String% 
	Send {Left 28}
return

:*?C:###vec::
	String := "\( \begin{pmatrix} x\\y\\z \end{pmatrix} \)"
	SendRaw %String% 
	Send {Left 21}
return

:*?C:##vec::
	String := "\begin{pmatrix} x\\y\\z \end{pmatrix}"
	SendRaw %String% 
	Send {Left 21}
return

:*?C:##pq::
	String := "x_{1,2} = -( \frac{p}{2} ) \pm \sqrt{ ( \frac{p}{2} )^{2} - q}"
	SendRaw %String% 
	Send {Left 42}
return

:*?C:##abc::
	String := "x_{1,2} = \frac{-b \pm \sqrt{b^2 - 4·a·c}}{2·a}"
	SendRaw %String% 
	Send {Left 29}
return

:*?C:##zz::
	String := "K_n = K_0 \cdot (1+p)^n"
	SendRaw %String% 
	Send {Left 14}
return

; END