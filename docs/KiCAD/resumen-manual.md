# Fuentes de excitación y tipos de análisis

En este apartado vamos a hacer un resumen de como configurar algunos tipos de fuentes de tensión y corriente así como el tipo de análisis que vamos a realizar. Todos los detalles y los casos no analizados aquí los podemos encontrar en el manual dado en la [webgrafía](../Miscelanea/webgrafia.md) y que por comodidad replicamos en este punto.

<center>

[Manual de ngspice](http://ngspice.sourceforge.net/docs/ngspice-manual.pdf)

</center>

## Fuentes independientes de tensión y corriente

La forma general de especificar una fuente es:

* Tensión:

`VXX N+ N- [DC DC/TRAN VALUE] [AC ACMAG ACPHASE]+[DISTOF1 F1MAG F1PHASE DISTOF2 F2MAG F2PHASE]`

* Corriente:

 `IXX N+ N- [DC DC/TRAN VALUE] [AC ACMAG ACPHASE]+[DISTOF1 F1MAG F1PHASE DISTOF2 F2MAG F2PHASE]`

Donde:

* **n+ y n-** son los positivo y negativo respectivamente. Las fuentes de tensión necesitan estar conectadas a masa. Se asume el sentido de corriente de nodo positivo al negativo a través de la fuente. Una fuente de corriente de valor positivo fuerza que la corriente fluya a través de la fuente de positivo a negativo.

* **DC/TRAN** es el valor de corriente continua y transitorio de la fuente.

* **ACMAG** es la magnitud de CA y **ACPHASE** es la fase de la corriente alterna. Si omitimos ACMAG después de la palabra clave AC, se asume un valor unitario. Si se omite ACPHASE, se asume un valor de cero. Si la fuente no es una entrada de señal pequeña de CA, se omiten la palabra clave AC y los valores de CA.

* **DISTOF1 y DISTOF2** especifican que la fuente independiente tiene entradas de distorsión en las frecuencias F1 y F2 respectivamente.

A una fuente independiente se le puede asignar un valor dependiente del tiempo para el análisis transitorio. En este caso el valor de tiempo igual a cero se utiliza para análisis DC. Hay nueve tipos de fuente independiente:

* pulse - pulso

* exponential - exponencial

* sinusoidal

* piece-wise linear - lineal a trozos,

* single-frequency FM - frecuencia única de FM

* AM - Amplitud modulada

* transient noise - ruido transitorio

* random voltages or currents - tensiones o corrientes aleatorias

* external data - datos externos

### Pulse

<center>

| Forma general| Ejemplos | Valor por defecto | Unidades |
|:-:|---|:-:|:-:|
| PULSE(V1 V2 TD TR TF PW PER PHASE) | VIN 3 0 PULSE(-1 1 2ns 2ns 2ns 50ns 100ns) | ||
| V1 | Valor inicial | -- | V o A |
| V2 | Valor pulso | -- | V o A |
| TD | Retardo de tiempo | 0.0 | s |
| TR | Tiempo de subida | TSTEP | s |
| TF | Tiempo de bajada | TSTEP | s |
| PW | Anchura de pulso | TSTOP | s |
| PER | Periodo | TSTOP | s |
| PHASE | Fase | 0.0 | grados |

</center>

### Sinusoidal

<center>

| Forma general| Ejemplos | Valor por defecto | Unidades |
|:-:|---|:-:|:-:|
| SIN(VO VA FREQ TD THETA PHASE) | VIN 3 0 SIN(0 1 100MEG 1ns 1E10) |||
| V0 | Offset | -- | V o A |
| VA | Amplitud | -- | V o A |
| FREQ | Frecuencia | 1/T STOP | Hz |
| TD | Retardo | 0.0 | s |
| THETA | Factor de atenuación | 0.0 | 1/s |
| PHASE | Fase | 0.0 | grados |

</center>

La forma de onda la describe la siguiente ecuación:

* Si $\hspace{0.5cm}0\leq t <TD$

<center>

$V\left( t\right) = V0$

</center>

* Si $\hspace{0.5cm}TD\leq t <TSTOP$

<center>

$V\left( t\right) =VO+VA\cdot e^{-\left( t-TD\right) /THETA}\cdot sen\left[ 2\pi \cdot FREQ\cdot \left( t-TD\right) + PHASE\right]$

</center>

###  Exponential

<center>

| Forma general| Ejemplos | Valor por defecto | Unidades |
|:-:|---|:-:|:-:|
| EXP(V1 V2 TD1 TAU1 TD2 TAU2) | VIN 3 0 EXP(-4 -1 2ns 30ns 60ns 40ns) |||
| V1 | Valor inicial | -- | V o A |
| V2 | Valor pulso | -- | V o A |
| TD1 | Tiempo de retardo de subida | 0.0 | s |
| TAU1 | Tiempo constante de subida | TSTEP | s |
| TD2 | Tiempo de retardo de bajada | TD1+TSTEP | s |
| TAU2 | Tiempo constante de bajada | TSTEP | s |

</center>

### Piece-Wise Linear

<center>

| Forma general| Ejemplos |
|:-:|---|
| PWL(T1 V1 [T2 V2 T3 V3 T4 V4 ...]) [r=valor] [td=valor] | VCLOCK 7 5 <br>PWL(0 -7 10ns -7 11ns -3 17ns -3 18ns -7 50ns -7</br>) + r=0 td=15ns |

</center>

Cada par de valores (Ti, Vi) indica el valor de la tensión o corriente en el instante Ti. El parámetro r determina el tiempo de repetición. Si no se da r, la secuencia completa de valores (Ti, Vi) se emite una vez. Si r = 0, la secuencia completa se repite indefinidamente desde el tiempo 0 al tiempo Tn. Si r = 10ns, la secuencia entre 10ns y 50ns se repite indefinidamente. El valor r tiene que ser uno de los puntos de tiempo T1 a Tn de la secuencia PWL. Si se indica td, toda la secuencia PWL se retrasa con el valor de td. Se indica que r y td no están disponibles para fuentes de corriente.

### Single-Frequency FM

<center>

| Forma general| Ejemplos | Valor por defecto | Unidades |
|:-:|---|:-:|:-:|
| SFFM(VO VA FC MDI FS PHASEC PHASES) | V1 12 0 SFFM(0 1M 20K 5 1K) | ||
| V0 | Offset | -- | V o A |
| VA | Amplitud | -- | V o A |
| FC | Frecuencia portadora | 1/T STOP | Hz |
| MDI | Indice de modulación | -- | |
| FS | Frecuencia de la señal | 1/T STOP | Hz |
| PHASEC | Fase portadora | 0 | grados |
| PHASES | Fase señal | 0 | grados |

</center>

### Amplitude modulated source (AM)

<center>

| Forma general| Ejemplos | Valor por defecto | Unidades |
|:-:|---|:-:|:-:|
| AM(VA VO MF FC TD PHASES) | V1 12 0 AM(0.5 1 20K 5MEG 1m) | ||
| V0 | Offset | -- | V o A |
| VA | Amplitud | -- | V o A |
| MF | Modulación en frecuencia | -- | Hz |
| FC | Frecuencia portadora | 1/T STOP | Hz |
| TD | Retardo señal | -- | s |
| PHASES | Fase | 0.0 | grados |

</center>

## Tipos de análisis

Los análisis soportados por ngspice son:

1. Análisis DC (Corriente Continua) tanto en Punto de Trabajo como en barrido DC
2. Análisis de pequeñas señales AC (Corriente Alterna))
3. Análisis transitorio
4. Análisis Pole-Zero o función de transferencia en el plano complejo
5. Análisis de distorsión de pequeñas señales
6. Análisis de sensibilidad
7. Análisis de ruido

Por defecto la temperatura para el análisis es de 27° (300.15 K) que puede restablecer a otro valor para el dispositivo con la directiva `.option TNOM=x` o bien restablecer para el circuito con `.option TEMP=x`.


### .AC: pequeña señal AC

Se realiza un análisis AC del circuito en el rango de frecuencia especificado. Para que este análisis sea significativo debemos especificar una fuente independiente con un valor de corriente alterna. 

<center>

| Forma general| Ejemplos |
|:-:|---|
| .ac dec nd fstart fstop | .ac dec 10 1 10K |
| .ac oct no fstart fstop | .ac dec 10 1K 100MEG |
| .ac lin np fstart fstop | .ac lin 100 1 100HZ |
| dec | Representar la variación por décadas |
| nd | Número de puntos por década |
| oct | Representar la variación por octavas |
| no | Número de puntos por octava |
| lin | Representar la variación de forma lineal |
| np | Número de puntos |
| fstart | Frecuencia de inicio |
| fstop | Frecuencia final |

</center>

### .DC: Función de transferencia DC

El análisis .dc define fuente de señal de la curva de transferencia y los límites de barrido con los condensadores en circuito abierto y las inductancias en cortocircuito.

<center>

| Forma general| Ejemplos |
|:-:|---|
|.dc srcnam vstart vstop vincr [src2 start2 stop2 incr2] | .dc VIN 0.25 5.0 0.25 <br>.dc VDS 0 10 .5 VGS 0 5 1</br> <br>.dc VCE 0 10 .25 IB 0 10u 1u</br>  |
| srcnam | Nombre de la fuente de señal, una resistencia o la temperatura del circuito |
| vstart | Valor inicial de tensión o corriente de la fuente |
| vstop | Valor final de tensión o corriente de la fuente |
| vincr | Incrementos de tensión o corriente de la fuente |  

</center>

El primer ejemplo es una fuente de nombre VIN con tensión mínima de 0.25V, máxima de 5V con pasos de 0.25V. 

Opcionalmente se puede introducir una segunda fuente (src2) con sus propios parámetros de barrido asociados. En este caso, la primera fuente barre su propio rango para cada valor de la segunda fuente. Esta opción es útil para obtener características de salida de dispositivos semiconductores.

### .OP: Punto de trabajo

<center>

| Forma general| Ejemplos |
|:-:|---|
| .op |  |

</center>

Cuando activamos este tipo de análisis indicamos que de calcule el punto de trabajo en corriente continua del circuito bajo análisis, lo cual se hará con las bobinas en corto y los condensadores abiertos, como corresponde al comportamiento ideal de estos componentes en corriente continua. Se intentan varios pasos para intentar obtener el punto de trabajo que lanza la simulación en cuanto uno de los pasos tiene éxito. Si todos los intentos fallan no hay convergencia y ngspice se detiene.

### .TF: Análisis de función de transferencia

La línea .tf define la entrada y la salida para el análisis de corriente continua. Se calcula la relación entre salida y entrada.

<center>

| Forma general| Ejemplos |
|:-:|---|
| .tf outvar insrc | .tf v(5, 3) VIN <br>.tf i(VLOAD) VIN</br> |
| outvar | Variable de salida |
| insrc | Fuente de entrada |

</center>

En el primer ejemplo se calcula la relación de V(5,3) a VIN, la entrada de señal en VIN y la de salida se mide en los nodos 5 y 3.

### .TRAN: Análisis transitorio

<center>

| Forma general| Ejemplos |
|:-:|---|
| .tran tstep tstop [tstart] [tmax] [uic] | .tran 1ns 100ns <br>.tran 1ns 1000ns 500ns</br> <br>.tran 10ns 1us</br> |
| tstep | Incremento de cálculo |
| tstop | Tiempo final |
| tstart | Tiempo inicial |

</center>

Si se omite tstart, se supone que es cero. El análisis transitorio siempre comienza en tiempo cero, de forma que en el intervalo [cero, tstart], el circuito alcanza un estado estable aunque los datos de salida no son almacenados. En el intervalo [tstart, tstop], el circuito se analiza y las salidas se almacenan.
