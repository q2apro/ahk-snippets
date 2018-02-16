# TeX Writing Assistant

This script helps to quickly enter TeX, for instance, you enter `##f` and it turns immediately `\frac{}{}` 
and puts the cursor on the right position. 

Use three hash signs, e. g. `###f` to output inline TeX: `\( \frac{}{} \)`

Enter `\\-` to get only inline TeX: `\(  \)`

Enter `##pq` to output the pq-formula and `##abc` to output the abc-formula 

Enter `##zz` for the Zinseszinsformel (compound interest formula)

See available syntax: 


`\\-` → `\(  \)`

`###f` = `\( \frac{}{} \)`

`##f` → `\frac{}{}`

`###int` → `\( \int_{0}^{\infty} \)`

`##int` → `\int_{0}^{\infty}`

`###r` → `\( \sqrt{} \)`

`##r` → `\sqrt{}`

`###R` → `\( \sqrt[]{} \)`

`##R` → `\sqrt[]{}`

`###log` → `\( \log_{}{} \)`

`##log` → `\log_{}{}`

`###lim` → `\( \lim_{x\to\infty} \)`

`##lim` → `\lim_{x\to\infty}`

`###sum` → `\( \sum_{n=0}^{\infty}{n} \)`

`##sum` → `\sum_{n=0}^{\infty}{n}`

`###prod` → `\( \prod_{n=0}^{\infty}{n} \)`

`##prod` → `\prod_{n=0}^{\infty}{n}`

`###mat` → `\( \begin{pmatrix} a & b \\ c & d \end{pmatrix} \)`

`##mat` → `\begin{pmatrix} a & b \\ c & d \end{pmatrix}`

`###vec` → `\( \begin{pmatrix} x\\y\\z \end{pmatrix} \)`

`##vec` → `\begin{pmatrix} x\\y\\z \end{pmatrix}`

`##pq` → `x_{1,2} = -( \frac{p}{2} ) \pm \sqrt{ ( \frac{p}{2} )^{2} - q}`

`##abc` → `x_{1,2} = \frac{-b \pm \sqrt{b^2 - 4·a·c}}{2·a}`

`##zz` → `K_n = K_0 \cdot (1+p)^n`

`###t` → `\( \text{} \)`

`##t` → `\text{}`
