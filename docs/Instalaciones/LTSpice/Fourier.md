# Análisis de Fourier

Este tipo de análisis lo vamos a ver en un apartado específico dada su amplitud y porque describiremos las matemáticas necesarias para llevarlo a cabo lo mas claramente posible.

Todas las descripciones van a tender a obtener el desarrollo en serie de Fourier de funciones periódicas aunque conceptualmente se nombre otros contenidos.

Vamos a ponernos en contexto del significado de análisis de Fourier desde el punto de vista de la electrónica.

La transformada Fourier fue planteada por el matemático francés [Joseph Fourier](https://es.wikipedia.org/wiki/Joseph_Fourier) en el año 1822 en sus teorías sobre la transmisión del calor.

## Dominios del tiempo y de la frecuencia

El análisis de Fourier básicamente plantea que cualquier señal **periódica** (de la forma que sea) puede descomponerse como la suma de señales sinusoidales de **distintas frecuencias**. Tal y como hemos destacado en la frase hay que relacionar tiempo y frecuencia para trabajar con estos conceptos.

En la imagen 1 tenemos algunas de las señales (funciones) periódicas mas habituales en electrónica, lógicamente todas ellas función del tiempo.

<center>

| Imagen 1 |
|:-:|
| ![Señales periódicas habituales](../../img/Fourier/i1.png) |
| Señales periódicas habituales |

</center>

En la imagen 2 tenemos representadas tres señales sinusoidales de distintas frecuencias y amplitudes representadas en ambos dominios.

<center>

| Imagen 2 |
|:-:|
| ![Señales representadas en los dominios del tiempo y la frecuencia](../../img/Fourier/i2.png) |
| Señales representadas en los dominios del tiempo y la frecuencia |

</center>

La señal representada en negro tiene un periodo de 1 ms, lo que supone que su frecuencia es de 1 kHz y con un valor que podemos expresar como 10 V de pico o 20 V pico a pico o 10 V de amplitud, y esos valores se dan indistintamente del dominio en el que nos situemos, pues bien, en el dominio de la frecuencia el punto con esas coordenadas de amplitud y frecuencia se representa como el extremo de un vector y tiene exactamente el mismo significado. De forma similar la señal roja tiene un periodo que es la mitad del de la negra y una amplitud de 5 V y finalmente la verde con un periodo de la mitad que la roja y una amplitud de 2V.

## Conocimientos previos útiles

Antes de entrar en las series de Fourier vamos a recordar algunas nociones básicas de las funciones seno y coseno que nos van a resultar muy útiles posteriormente.

En la imagen 3 tenemos representada una función seno con indicación de los principales puntos de corte con los ejes.

<center>

| Imagen 3 |
|:-:|
| ![Función seno](../../img/Fourier/i3.png) |
| Función seno |

</center>

* Lo primero que observamos es que la función está acotada entre 1 y -1 por lo que la función f(t) = sen(t) nunca puede ser mayor que 1 ni menos que -1, o sea:

<center>

$f\left( t\right) =sen\left( t\right)$  

siempre que

$-1\leq sen\left( t\right) \leq 1$

</center>

* También podemos observar que la función seno es periódica ya que se repite con un periodo $T = 2\pi$. Esto se expresa matemáticamente de la siguiente forma:

<center>

$sen\left( t\right) =sen\left( t+2\pi \right)$

</center>

* El cálculo de los ceros de la función es bastante sencillo a partir de la ecuación anterior, tal y como vemos a continuación:

<center>

$\begin{aligned}sen\left( 0\right) =0\\sen\left( \pi \right) =0\\ sen\left( 2\pi \right) =0\\ sen\left( 3\pi \right) =sen\left( 2\pi +\pi \right) =0\end{aligned}$

</center>

Es decir:

<center>

$\begin{aligned}sen\left( n\pi \right)=0\end{aligned}$

siendo: $\begin{aligned}n\in \mathbb{N} \end{aligned}$

</center>

* Vamos ahora a aplicar el mismo concepto para el cálculo de los valores máximo y mínimo de la función seno.

<center>

$sen\left( \dfrac{\pi }{2}\right) =1;sen\left( \dfrac{3\pi }{2}\right) =-1$

$sen\left( \dfrac{5\pi }{2}\right) =sen\left( \dfrac{\pi }{2}+2 \pi \right) =sen\left( \dfrac{\pi }{2}\right) =1$

$sen\left( \dfrac{7\pi }{2}\right) =sen\left( \dfrac{3\pi }{2}+2 \pi \right) =sen\left( \dfrac{3\pi }{2}\right) =-1$

</center>

y genéricamente se puede poner que:

<center>

$sen\left[ \dfrac{\left( 2n- 1\right)\pi }{2}\right] =\left( -1\right) ^{n+1}$

</center>

Por ejemplo:

<center>

$\begin{aligned}n=6\Rightarrow sen\left( \dfrac{11\times \pi }{2}\right) =\left( -1\right) ^{7}=-1\\\\ n=9\Rightarrow sen\left( \dfrac{17\times \pi }{2}\right) =\left( -1\right) ^{10}=1\end{aligned}$

</center>

En la imagen 4 tenemos representada una función coseno con indicación de los principales puntos de corte con los ejes.

<center>

| Imagen 4 |
|:-:|
| ![Función coseno](../../img/Fourier/i4.png) |
| Función coseno |

</center>

* Observamos también que la función está acotada entre 1 y -1 por lo que la función f(t) = cos(t) nunca puede ser mayor que 1 ni menos que -1, o sea:

<center>

$f\left( t\right) =cos\left( t\right)$  

siempre que

$-1\leq cos\left( t\right) \leq 1$

</center>

* Vemos que la función coseno es periódica ya que se repite con un periodo $T = 2\pi$. Esto se expresa matemáticamente de la siguiente forma:

<center>

$cos\left( t\right) =cos\left( t+2\pi \right)$

</center>

* Hacemos el cálculo de los ceros de la función de forma similar a como hicimos en el seno y tenemos que:

<center>

$cos\left( \dfrac{\pi }{2}\right) =0;cos\left( \dfrac{3\pi }{2}\right) =0$

$cos\left( \dfrac{5\pi }{2}\right) =cos\left( \dfrac{\pi }{2}+2 \pi \right) =cos\left( \dfrac{\pi }{2}\right) =0$

$cos\left( \dfrac{7\pi }{2}\right) =cos\left( \dfrac{3\pi }{2}+2 \pi \right) =cos\left( \dfrac{3\pi }{2}\right) =0$

</center>

y genéricamente se puede poner que:

<center>

$\cos \left( \dfrac{2n-1}{2}\right) \cdot \pi =0\hspace{1cm};\hspace{1cm}\forall n\in \mathbb{N}$

</center>

* Vamos ahora a aplicar el mismo concepto para el cálculo de los valores máximo y mínimo de la función seno.

<center>

$\begin{aligned}cos\left( 0\right) =1\\cos\left( \pi \right) =-1\\ cos\left( 2\pi \right) =1\\ cos\left( 3\pi \right) =cos\left( 2\pi +\pi \right) =-1\end{aligned}$

</center>

Es decir:

<center>

$cos\left( n\pi \right) =\left( -1\right) ^{n}$

siendo: $\begin{aligned}n\in \mathbb{N} \end{aligned}$

</center>

También nos va a resultar muy útil recordar que cuando hablamos de señales periódicas y realizamos integración con limites iguales al periodo de la señal, el valor de la integral es cero. A continuación vemos algunos ejemplos de esto.

<center>

$\int _{0}^{2\pi}sen\left( t\right) dt = 0$

$\int _{-\pi}^{+\pi}cos\left( t\right) dt = 0$

$\int _{4\pi}^{6\pi}sen\left( t\right) dt = 0$

</center>

## Serie de Fourier

Una función f(t) con $x\in \mathbb{R}$ que sea integrable dentro de un intervalo de longitud T se puede definir como una serie de Fourier haciendo:

Pues bien, Fourier lo que dijo fue que cualquier señal periódica se puede representar como una suma infinita de funciones sinusoidales. Esto se expresa matemáticamente de la siguiente forma:

<center>

$f\left( t\right) =\dfrac{a_{0}}{2} + \sum ^{\infty }_{n=1}\left[ a_{n}\cos \left( n\omega t\right) +b_{n}sen\left( n\omega t\right) \right]$

</center>

siendo  
n: un número natural.  
$t\in \mathbb{R}$ con un periodo o longitud T  
a<sub>0</sub>, a<sub>n</sub>, b<sub>n</sub>: los denominados coeficientes de Fourier.  
$\omega$ = 2π/T<sub>0</sub>: frecuencia angular fundamental.  
n$\omega$: frecuencia de la componente armónica de orden n.

Para que una función cualquiera pueda ser expresada como serie de Fourier es condición necesaria que cumpla las condiciones de Dirichlet, que son:

* f(t) tiene un valor único para cualquier valor de t.  
* f(t) tiene un número finito de discontinuidades en un periodo.  
* f(t) tiene un número finito de máximos y mínimos en su periodo.  
* Existe la integral del módulo de la funciónen ese periodo:

<center>

$\int ^{T/2}_{-T/2}\left| f\left( t\right) \right|  dt$

</center>

El problema de expresar una función por su serie de Fourier consiste en calcular los coeficientes de Fourier, o lo que es lo mismo, en calcular las siguientes integrales definidas:

<center>

$a_{0}=\dfrac{1}{T/2}\int _{T}f\left( t\right) dt$

$a_{n}=\dfrac{1}{T/2}\int _{T}f\left( t\right) \cos \left( n\omega t\right) dt$

$b_{n}=\dfrac{1}{T/2}\int _{T}f\left( t\right) sen \left( n\omega t\right) dt$

</center>

siendo T el intervalo o periodo de la función, que, si por ejemplo varia entre 0 y 2π, nos permite poner:

<center>

$a_{0}=\dfrac{1}{{2\pi }/{2}}\int _{0}^{2\pi}f\left( t\right) dt$

$a_{n}=\dfrac{1}{2\pi/2}\int _{0}^{2\pi}f\left( t\right) \cos \left( n\omega t\right) dt$

$b_{n}=\dfrac{1}{2\pi/2}\int _{0}^{2\pi}f\left( t\right) \cos \left( n\omega t\right) dt$

</center>

## Convergencia

Damos a continuación una notas aclaratorias.

1. Se cumple que la serie de Fourier de la función f(t) converge o tiende a f(t) dentro del intervalo de integración.
2. Si f(t) es periódica con un periodo T igual a la longitud del intervalo la función f(t) converge a la serie de Fourier siempre con $x\in \mathbb{R}$, es decir que converge en cualquier punto y no solo dentro del intervalo.
3. Definimos suma parcial para la serie de Fourier de una función f(t) periódica y definida en un intervalo de longitud T la k-ésima suma parcial, representada por S<sub>k</sub>(t) se calcula así:

<center>

$S_{k}\left( t\right)  =\dfrac{a_{0}}{2} + \sum ^{k}_{n=1}\left[ a_{n}\cos \left( n\omega t\right) +b_{n}sen\left( n\omega t\right) \right]$

</center>

Esta suma ya no es de infinitos términos sino de un número k de ellos.

El caso mas común que nos vamos a encontrar es cuando $T=2\pi$ lo que se cumple para situaciones como:

<center>

$T=2\pi \rightarrow \left[ -2\pi ,0 \right] ; \left[ 0,2\pi \right] ;\left[ 2\pi ,4\pi \right] ;\left[ -\pi ,\pi \right ]$

</center>

En estos casos se cumple que:

<center>

$\omega =\dfrac{2\pi }{T}=\dfrac{2\pi }{2\pi }=1$

</center>

Por lo tanto podemos escribir la serie de Fourier de la siguiente forma:

<center>

$f\left( t\right) =\dfrac{a_{0}}{2} + \sum ^{\infty }_{n=1}\left[ a_{n}\cos \left( nt\right) +b_{n}sen\left( nt\right) \right]$

</center>

Es decir, cuando el intervalo es $2\pi$ los coeficientes de Fourier toman la siguiente forma:

<center>

$a_{0}=\dfrac{1}{{\pi }}\int _{2\pi}f\left( t\right) dt$

$a_{n}=\dfrac{1}{\pi}\int _{2\pi}f\left( t\right) \cos \left( nt\right) dt$

$b_{n}=\dfrac{1}{\pi}\int _{2\pi}f\left( t\right) sen\left( nt\right) dt$

</center>

Este tipo de expresiones suelen ser complejas de solucionar dado que implican distintos niveles de integración, pero al menos con un par de ejemplos vamos a intentar dejar claro como proceder.

## Funciones pares e impares

Una función par es una función que satisface la relación $f\left( x\right) =f\left( -x\right)$. La imagen 5 muestra la gráfica de una función par.

<center>

| Imagen 5 |
|:-:|
| ![Gráfica de una función par](../../img/Fourier/i5.png) |
| Gráfica de una función par |
| Imagen obtenida de [wikipedia](https://es.wikipedia.org/wiki/Funciones_pares_e_impares)|

</center>

La función es simétrica respecto del eje y.

Cuando una función es par se cumple que **b<sub>n</sub>= 0** con lo que podemos poner que:

<center>

$f\left( t\right) =\dfrac{a_{0}}{2} + \sum ^{\infty }_{n=1} a_{n}\cos \left( nt\right)$

</center>

Una función impar es cualquier función que satisface la relación $f\left( -x\right) =-f\left( x\right)$. La imagen 6 muestra la gráfica de una función impar.

<center>

| Imagen 6 |
|:-:|
| ![Gráfica de una función impar](../../img/Fourier/i6.png) |
| Gráfica de una función impar |
| Imagen obtenida de [wikipedia](https://es.wikipedia.org/wiki/Funciones_pares_e_impares)|

</center>

La función es simétrica de forma rotacional respecto al origen de coordenadas.

Cuando una función es impar se cumple que **a<sub>n</sub>= 0** con lo que podemos poner que:

<center>

$f\left( t\right) =\dfrac{a_{0}}{2} + \sum ^{\infty }_{n=1} b_{n}sen \left( nt\right)$

</center>

## Ejemplos resueltos

Vamos a ver como aplicar estos conceptos con dos ejemplos desarrollados de forma completa en cuanto a cálculos se refiere.

### Función matemática a trozos

Obtener el desarrollo en serie de Fourier de una función definida de la siguiente forma:

<center>

$\begin{aligned}f\left( t\right) =0 \hspace{1cm} si \hspace{1cm} -\pi <t <0\\ f\left( t\right) =\pi -t  \hspace{1cm} si \hspace{1cm}0\leq t <\pi \end{aligned}$

</center>

El intervalo del periodo es $\left[ -\pi ,\pi \right]$ por lo que $T=2\pi$ y entonces lor términos de Fourier vendrán dados por:

$a_{0}=\dfrac{1}{\pi }\int _{-\pi }^{\pi }f\left( t\right) dt\\ a_{n}=\dfrac{1}{\pi }\int _{-\pi }^{\pi }f\left( t\right) \cdot \cos \left( nt\right) dt\\ b_{n}=\dfrac{1}{\pi }\int _{-\pi }^{\pi }f\left( t\right) \cdot sen\left( nt\right) dt$

</center>

* Cálculo de $a_{0}$

Si descomponemos la ecuación para los dos valores de f(t) podemos poner:

<center>

$a_{0}=\dfrac{1}{\pi }\int ^{0}_{-\pi }0\cdot dt+\dfrac{1}{\pi }\int ^{\pi }_{0}\left( \pi -t\right) dt=\dfrac{1}{\pi }\int _{0}^{\pi }\left( \pi -t\right) dt$

</center>

Procedemos a evaluar la integral de forma indefinida:

<center>

$\int \left( \pi -t\right) dt=\int \pi dt-\int tdt=\pi t-\dfrac{t^{2}}{2}$

</center>

Llevamos el resultado a la integral definida y sustituimos t por los límites de integración y tenemos:

<center>


$\begin{aligned} a_{0}=\dfrac{1}{\pi }\left( \pi \cdot t-\dfrac{t^{2}}{2}\right) ] _{0}^{\pi }=\dfrac{1}{\pi }\left[ \pi \cdot \pi -\dfrac{\pi ^{2}}{2}-\left( \pi \cdot 0-\dfrac{0^{2}}{2}\right) \right] = \dfrac{1}{\pi }\cdot \dfrac{\pi ^{2}}{2} = \dfrac{\pi }{2}\end{aligned}$

</center>

* Cálculo de $a_{n}$

De la misma forma que en $a{0}$ podemos descomponer la integral en dos siendo cero para el periodo entre $\pi$ y cero, o sea:

<center>

$a_{n}=\dfrac{1}{\pi }\int ^{\pi }_{-\pi }f\left( t\right) \cdot \cos \left( nt\right) dt=\dfrac{1}{\pi }\int _{0}^{\pi }\left( \pi -t\right) \cdot \cos \left( nt\right) dt$

</center>

Vamos a resolver la integral de forma indefinida. Podemos poner que:

<center>

$\int \left( \pi -t\right) \cdot \cos \left( nt\right) dt=\int \pi \cos \left( nt\right) dt-\int t\cos \left( nt\right) dt \hspace{2cm} \left[ 1\right]$

</center>

La primera es una integral inmediata que toma como valor $\pi /{n} \cdot sen\left( nt\right)$ y la segunda es una integral que debemos resolver por partes, así que escribimos:

<center>

$\begin{aligned}\int u\cdot dv=u \cdot v-\int v\cdot du \hspace{2cm} \left[ 2\right] \end{aligned}$

</center>

Hacemos:

<center>

$u=t\Rightarrow du=1\cdot dt =dt\\ dv=\cos \left( nt\right) dt\Rightarrow \int dv=\int \cos \left( nt\right) dt\Rightarrow v=\dfrac{1}{n}sen\left( nt\right) $

</center>

Si sustituimos en [2] los valores obtenidos de u y v tenemos:

<center>

$\begin{aligned}\int t\cos \left( nt\right) dt=t\cdot \dfrac{1}{\pi }sen\left( nt\right) -\int \dfrac{1}{n}sen\left( nt\right) dt=\\ \dfrac{t}{\pi }sen\left( nt\right) -\dfrac{1}{n^{2}}\left[ -\cos \left( nt\right) \right] =\dfrac{t}{\pi }sen\left( nt\right) +\dfrac{1}{n^{2}}\cos \left( nt\right) \end{aligned}$

</center>

Si llevamos los resultados obtenidos a la integral indefinida que tenemos en [1] nos queda:

<center>

$\int \left( \pi -t\right) \cos \left( nt\right) dt=\dfrac{\pi }{n}sen\left( nt\right) -\left[ \dfrac{t}{\pi }sen\left( nt\right) +\dfrac{1}{n^{2}}\cos \left( nt\right) \right]$

</center>

Llevamos este valor a la integral definida y podemos poner que:

<center>

$a_{n}=\dfrac{1}{\pi }\left[ \dfrac{\pi }{n}sen\left( nt\right) -\dfrac{1}{n^{2}}\cos \left( nt\right) -\dfrac{t}{n}sen\left( nt\right) \right] _{0}^{\pi }\\\\ a_{n}=\dfrac{1}{\pi }\left\{ \left[ \dfrac{\pi }{n}scn\left( n\pi \right) -\dfrac{1}{n^{2}}\cos \left( n\pi \right) -\dfrac{\pi }{n}sen( n\pi \right] -\left[ 0-\dfrac{1}{n^{2}}\cos 0-\right] \right\} \\\\ a_{n}=\dfrac{1-\cos }{\pi n}\dfrac{\left( n\pi \right) }{2}\left[ como\cos \left( n\pi \right) =\left( -1\right) ^{n}\right] \Rightarrow an=\dfrac{1-\left( -1\right) ^{n}}{\pi n^{2}}\hspace{1cm}\forall n\in N$

</center>

De forma similar podemos obtener $b_{n}$ que vendrá dado por:

<center>

$b_{n}=\dfrac{1}{\pi }\left\{ -\dfrac{\pi }{n}\cos \left( nt\right) -\left[ \dfrac{1}{n^{2}}sen\left( nt\right) -\dfrac{t}{n}\cos \left( nt\right) \right] \right\} _{0}^{\pi}\\ b_{n}=\dfrac{\pi }{n}\cdot \dfrac{1}{\pi }=\dfrac{1}{n}$

</center>

Finalmente la función expresada como serie de Fourier quedaría de la siguiente forma:

<center>

$f\left( t\right) =\dfrac{\pi }{4}+\sum ^{\infty }_{n=1}\left[ \dfrac{1-\left( -1\right) ^{n}}{\pi n^{2}}\cos \left( nt\right) +\dfrac{1}{n}sen\left( nt\right) \right]$

</center>

Dando valores a n en esta ecuación podemos obtener todos los armónicos necesarios para aproximarnos a la definición de la función.

### Rectificador de media onda

En la imagen 7 tenemos representada la señal que entrega un rectificador de media onda y a la derecha tenemos la señal escrita en términos matemáticos.

| Imagen 7 |  |
|:-:|:-:|
| ![Señal de salida de un rectificador de media onda](../../img/Fourier/i7.png) | $\begin{aligned}\\\\\\0\leq t\leq T/2\rightarrow f\left( t\right) =V_{p}sen\omega t\\\\\\ T/2\leq t\leq T\rightarrow f\left( t\right) =0\end{aligned}$ |
| Señal de salida de un rectificador de media onda | Expresión matemática |

</center>

Observamos que:

<center>

$T=2\pi\rightarrow f\left( t\right) =\dfrac{a_{0}}{2} + \sum ^{\infty }_{n=1}\left[ a_{n}\cos \left( nt\right) +b_{n}sen\left( nt\right) \right]$

</center>

Procedemos a calcular los coeficientes de Fourier.

* Coeficiente a<sub>0</sub>

Observamos que la función vale 0 la mitad del periodo luego podemos restringir el periodo de integración a la mitad del periodo, luego podemos escribir lo siguiente:

<center>

$a_{0}=\dfrac{1}{{\pi }}\int _{2\pi}f\left( t\right) dt=\dfrac{1}{\pi }\int _{0}^{\pi }V_{p}sen\left( nt\right) dt$

</center>

Si resolvemos la integral inmediata podemos poner:

<center>

$\begin{aligned} a_{0}=-\dfrac{V_{p}}{\pi }\cos \left( nt\right) ] \dfrac{\pi }{\dfrac{}{0}}-\dfrac{V_{p}}{\pi }\left( \cos \pi -\cos \phi \right) = -\dfrac{V_{p}}{\pi }\left( -1-1\right) =\dfrac{2V_{p}}{\pi }=0.637V_{p}\end{aligned}$

</center>

* Coeficiente a<sub>n</sub>

Volvemos a considerar el intervalo donde la función no es nula y escribimos:

<center>

$a_{n}=\dfrac{1}{\pi}\int _{2\pi}f\left( t\right) \cos \left( nt\right) dt =\dfrac{1}{\pi }\int _{0}^{\pi }f\left( t\right)cos\left( nt\right) dt$

</center>

Sustituimos f(t) por su valor y tenemos que:

<center>

$a_{n}=\dfrac{1}{\pi }\int _{0}^{\pi }V_{p}sen\left( nt\right) cos\left( nt\right)dt=\dfrac{V_{p}}{\pi }\int _{0}^{\pi }sen\left( nt\right) cos\left( nt\right)dt$

</center>

Se trata de una integral trigonométrica que se resuelve transformando el producto en suma. Podemos escribir que:



<center>


$b_{n}=\dfrac{1}{\pi}\int _{2\pi}f\left( t\right) sen \left( nt\right) dt$

</center>