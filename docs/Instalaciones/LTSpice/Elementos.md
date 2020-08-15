# Elementos mas usuales en los circuitos electrónicos

Antes de comenzar con las descripciones de los distintos elementos básicos vamos a ver como se ponen las unidades y que sufijos multiplicadores son válidos. En la tabla siguiente vemos las unidades que se puede usar.

<center>

| Sufijo | Valor (nombre) |
|:-:|---|
| F = f | 10<sup>-15</sup> (femto)|
| P = p | 10<sup>-12</sup> (pico) |
| N = n | 10<sup>-9</sup> (nano) |
| U = u | 10<sup>-6</sup> (micro) |
| M = m | 10<sup>-3</sup> (mili) |
| K = k | 10<sup>3</sup> (kilo) |
| MEG = meg | 10<sup>6</sup> (mega) |
| G = g | 10<sup>9</sup> (giga|
| T = t | 10<sup>12</sup> (tera) |

| Unidad | Nnombre |
|:-:|---|
| V | Voltios |
| A | Amperios |
| OHM | Ohmios |
| Hz | Hercios |
| H | Henrios |
| F | Faradios |

</center>

## Resistencia

Se trata sin duda del componente mas utilizado en circutos electrónicos. En LTSpice disponemos de dos modelos que solamente difieren en el símbolo. En la imagen 1 vemos el símbolo para ambos casos y la edición de las propiedades (idénticas para ambos) de uno de ellos,

<center>

| Imagen 1 |
|:-:|
| ![Símbolo y propiedades de res y res2](../../img/Elementos/i1.png) |
| Símbolo y propiedades de res y res2 |

</center>

Desde el menú Wiev podemos acceder a SPICE netlist que nos mostrará una descripción como la que se observa en la imagen 2.

<center>

| Imagen 2 |
|:-:|
| ![Netlist de los dos modelos de resistencia](../../img/Elementos/i2.png) |
| Netlist de los dos modelos de resistencia |

</center>

La netlist es un archivo de texto con la descripción del circuito y es una forma que usan otras versiones del simulador Spice.

La forma R1 NC_01 NC_02 R se lee como que la resistencia R1 se conecta entre los nodos 01 y 02 (NC indica que es el pin de un componente no conectado) y que tiene como valor R que podemos suministrar directamente o seleccionar de la base de datos con *Select Resistor*.

En la imagen 3 vemos el efecto en la netlist al realizar una conexión entre ambas resistencias y como quedan renombrados los nodos que describen la conexión.

<center>

| Imagen 3 |
|:-:|
| ![Cambios en la netlist por cambios en el circuito](../../img/Elementos/i3.png) |
| Cambios en la netlist por cambios en el circuito |

</center>

## Condensador

En este caso disponemos de dos posibilidades, condensador no polarizado (cap) y condensador polarizado o electrolítico (polcap). En la imagen 4 vemos un condensador no polarizado y sus propiedades con un modelo escogido de la base de datos.

<center>

| Imagen 4 |
|:-:|
| ![Condensador no polarizado y sus propiedades](../../img/Elementos/i4.png) |
| Condensador no polarizado y sus propiedades |

</center>

Los valores destacados corresponden a los valores nominales de capacidad, tensión máxima soportada y corriente.

En la imagen 5 tenemos la misma situación pero en este caso para un condensador polarizado.

<center>

| Imagen 5 |
|:-:|
| ![Condensador  polarizado y sus propiedades](../../img/Elementos/i5.png) |
| Condensador polarizado y sus propiedades  |

</center>

Los valores destacados permiten establecer los valores para un modelo equivalente como el que vemos en la imagen 6.

<center>

| Imagen 6 |
|:-:|
| ![Modelo equivalente de un condensador](../../img/Elementos/i6.png) |
| Modelo equivalente de un condensador |

</center>

Las descripciones en modo texto de ambos componentes son las siguientes:

* C1 NC_01 NC_02 100µ V=8 Irms=4.74342 Rser=0.01 Lser=0 mfg="KEMET" pn="A700X107M008ATE010" type="Al electrolytic"

* C2 NC_03 NC_04 0.01µ V=16 Irms=647m Rser=0.0322889 Lser=0 mfg="KEMET" pn="C0201C103K4PAC" type="X5R"

## Bobina o inductor

Están disponibles dos modelos de componente, ind para una bobina normal e ind2 que incluye en el símbolo un punto para indicar la fase del componente. En la imagen 7 vemos una bobina y sus propiedades con un modelo escogido de la base de datos.

<center>

| Imagen 7 |
|:-:|
| ![Bobina y sus propiedades](../../img/Elementos/i7.png) |
| Bobina y sus propiedades |

</center>

Los valores destacados corresponden a los valores nominales de inductancia y corriente de pico.

En la imagen 8 tenemos la misma situación pero en este caso para una bobina con punto indicador de fase.

<center>

| Imagen 8 |
|:-:|
| ![Bobina con indicador de fase y sus propiedades](../../img/Elementos/i8.png) |
| Bobina con indicador de fase y sus propiedades  |

</center>

Los valores destacados permiten establecer los valores para un modelo equivalente como el que vemos en la imagen 9.

<center>

| Imagen 9 |
|:-:|
| ![Modelo equivalente de una bobina](../../img/Elementos/i9.png) |
| Modelo equivalente de una bobina |

</center>

Las descripciones en modo texto de ambos componentes son las siguientes:

* L1 N001 N002 68µ Ipk=0.55 Rser=0.822 Rpar=112000 Cpar=2.186p mfg="Bourns, Inc." pn="SDE0403A-680K"
  
* L2 N002 N003 2.2µ Ipk=3.3 Rser=0.032 Rpar=8999 Cpar=2.181p mfg="Bourns, Inc." pn="SDE0403A-2R2M"
 
## Fuente de excitación de tensión o corriente continua

En la imagen 10 observamos una fuente de tensión que podemos localizar como *voltage* y observamos que le podemos incluir una impedancia en serie.

<center>

| Imagen 10 |
|:-:|
| ![Fuente de tensión constante y su configuración básica](../../img/Elementos/i10.png) |
| Fuente de tensión constante y su configuración básica |

</center>
En la imagen 11 observamos una fuente de tensión que podemos localizar como *current* y observamos que le podemos incluir una impedancia en serie.

<center>

| Imagen 11 |
|:-:|
| ![Fuente de corriente constante y su configuración básica](../../img/Elementos/i11.png) |
| Fuente de tensión constante y su configuración básica |

</center>

Para los dos tipos tenemos el botón *Advanced* que nos abre la ventana que vemos en la imagen 12, donde se observan los principales tipos de fuentes.

<center>

| Imagen 12 |
|:-:|
| ![Opciones avanzadas de configuración de fuente DC](../../img/Elementos/i12.png) |
| Opciones avanzadas de configuración de fuente DC |

</center>

### Fuente sinusoidal

Si en las opciones avanzadas de configuración de una fuente DC escogemos la opción *SINE* la ventana nos mostrará las opciones que observamos en la imagen 13.

<center>

| Imagen 13 |
|:-:|
| ![Opciones para fuente DC sinusoidal](../../img/Elementos/i13.png) |
| Opciones para fuente DC sinusoidal |

</center>

En la tabla siguiente se describen estos parámetros.

<center>

| Parámetro | Descripción | Unidades |
|:-:|---|:-:|
| DC offset | Tensión de offset | V o A |
| Amplitude | Amplitud | V o A |
| Freq | Frecuencia | Hz |
| Tdelay | Tiempo de retardo | s |
| Theta | Factor de amortiguamiento | 1/s |
| Phi | Angulo de fase inicial | grados |
| Ncycles | Número de ciclos ciclos | |

</center>

En la imagen 14 tenemos un sencillo ejemplo de simulacción con una fuente sinusoidal configurada según se observa en la propia imagen. Hemos creado una simulación de tipo *Transient* que dura 15 ms a intervalos de 1 ms y comienza en 0.

<center>

| Imagen 14 |
|:-:|
| ![Simulación fuente sinusoidal configurada con parámetros](../../img/Elementos/i14.png) |
| Simulación fuente sinusoidal configurada con parámetros |

</center>

Vamos a explicar la señal que entrega la fuente V1. Para ello vamos a partir de las ecuaciones que describen su funcionamiento.

* Desde el instante t = 0s hasta el tiempo de retardo td:

<center>

vfuente = voff + vampl sen(2 PI fase/360 PI)

</center>

* Desde el tiempo td hasta el tiempo final de análisis:

<center>

vfuente = voff + vampl . sen(2 PI (frec (tiempo – td) + fase/360PI)) e<sup> –(tiempo –td).df</sup>

</center>

A  continuación se analizan los resultados obtenidos:

1. Un offset de -2V para una amplitud de 10 V (Vpp = 20V) va a tener como consecuencia que la excursión de la señal esté entre los -12V y los 8V acusando ese desplazamiento de 2V negativos en ambos semiciclos.

2. Se establecen 10 ciclos a una frecuencia de 1kHz que tendrá una duración menor que laestablecida en las condiciones de simulación de forma que aparezcan los 10 ciclos completos en la gráfica.

3. Se observa claramente en la gráfica el retardo de 2ms antes de iniciar el ciclo con un desfase de 90 grados.

4. Finalmente observamos como la señal se va amortiguando según la constante establecida.

5. Una vez transcurridos los 10 ciclos previstos la fuente entrega de forma constante el valor de tensión que se obtiene tras la amortiguación.
   
6. Se aconseja al lector [descargar el ejemplo](../../Ejemplos/Elementos/E1-Fuente-sinusoidal.asc) y jugar con estos valores para controlar el funcionamiento de este tipo de fuente de excitación. En la animación siguiente vemos un ejemplo de esto.

<center>

![Ilustración del efecto en los cambios de valores de la fuente](../../img/Elementos/E1.gif)

</center>

### Fuente exponencial

Si en las opciones avanzadas de configuración de una fuente DC escogemos la opción *EXP* la ventana nos mostrará las opciones que observamos en la imagen 15.

<center>

| Imagen 15 |
|:-:|
| ![Opciones para fuente DC exponencial](../../img/Elementos/i15.png) |
| Opciones para fuente DC exponencial |

</center>

En la tabla siguiente se describen estos parámetros.

<center>

| Parámetro | Descripción | Unidades |
|:-:|---|:-:|
| Vinitial | Valor de la tensión inicial | V o A |
| Vpulsed | Valor del pulso | V o A |
| Rise Delay | Tiempo de retardo de subida | s |
| Rise Tau | Constante de tiempo de subida | s |
| Fall Delay | Tiempo de retardo de caida | s |
| Fall Tau | Constante de tiempo de caida | s |

</center>

En la imagen 16 tenemos un sencillo ejemplo de simulacción con una fuente exponencial configurada según se observa en la propia imagen. Hemos creado una simulación de tipo *Transient* que dura 5 s a intervalos de 0.2 s y comienza en 0.

<center>

| Imagen 16 |
|:-:|
| ![Simulación fuente exponencial configurada con parámetros](../../img/Elementos/i16.png) |
| Simulación fuente exponencial configurada con parámetros |

</center>

Vamos a explicar la señal que entrega la fuente V1. Para ello vamos a partir de las ecuaciones que describen su funcionamiento.

* [0 <= t <= Rise Delay] intervalo de tiempo que va desde 0 hasta el tiempo de retardo de subida:

<center>

vfuente = Vinitial

</center>

* [Rise Delay <= t <= Fall Delay] intervalo entre el tiempo de retardo de subida y el tiempo de retardo de bajada o caida:

<center>

vfuente = Vinitial + (Vpulsed - Vinitial)(1 - e - (t - Rise Delay)/Rise Tau) 

</center>

* [t > Fall Delay] intervalo cuando el tiempo se hace mayor que el establecido para el de caida.
  
<center>

vfuente = Vinitial + (Vpulsed - Vinitial)(1 - e<sup>-(t - Fall Delay)/Fall Tau</sup>) 

</center>

A  continuación se analizan los resultados obtenidos:

1. Partimos de un valor de 0V que se mantiene hasta el momento que transcurre el tiempo establecido como retardo de subida (en nuestro caso dos segundos).

2. Transcurridos dos segundo comienza la subida exponencial con la constante de tiempo establecida de 0.3 segundo tratando de alcanzar los 6V establecidos como máximo. La tendencia de la exponencial trata de ser asintótica con el valor límite pero en cualquier caso durará hasta el tiempo que se ha establecido para iniciar la caida, que en nuestro caso es los 3 segundos.

3. Se observa claramente en la gráfica que con esa constante de subida no da tiempo a alcanzar los 6V antes de que se inicie la caida.

4. Una vez alcanzado el instante de tiempo establecido para iniciar la caida esta se produce de forma abrupta dado que la constante de tiempo establecida en este caso en pequeña.

5. Se aconseja al lector [descargar el ejemplo](../../Ejemplos/Elementos/E2-Fuente-exponencial.asc) y jugar con estos valores para controlar el funcionamiento de este tipo de fuente de excitación. En la animación siguiente vemos un ejemplo de esto.

<center>

![Ilustración del efecto en los cambios de valores de la fuente](../../img/Elementos/E2.gif)

</center>

### Fuente de tensión a pulsos

Si en las opciones avanzadas de configuración de una fuente DC escogemos la opción *PULSE* la ventana nos mostrará las opciones que observamos en la imagen 17.

<center>

| Imagen 17 |
|:-:|
| ![Opciones para fuente DC a pulsos](../../img/Elementos/i17.png) |
| Opciones para fuente DC a pulsos |

</center>

En la tabla siguiente se describen estos parámetros.

<center>

| Parámetro | Descripción | Unidades |
|:-:|---|:-:|
| Vinitial | Valor de la tensión inicial | V o A |
| Von | Valor del pulso | V o A |
| Tdelay | Retardo | s |
| Trise | Tiempo de subida | s |
| Tfall | Tiempo de caida | s |
| Ton | Tiempo de duración del pulso | s |
| Tperiod | Periodo | s |
| Ncycles | Número de ciclos | |

</center>

En la imagen 18 tenemos un sencillo ejemplo de simulación con una fuente pulsante configurada según se observa en la propia imagen. Hemos creado una simulación de tipo *Transient* que dura 100 ms a intervalos de 0.1 ms y comienza en 0.

<center>

| Imagen 18 |
|:-:|
| ![Simulación fuente a pulsos configurada con parámetros](../../img/Elementos/i18.png) |
| Simulación fuente a pulsos configurada con parámetros |

</center>

En este caso la explicación del funcionamiento es bastante simple ya que los datos sirven para configurar una fuente que genera un tren de pulsos con las características especificadas.

A  continuación se analizan los resultados obtenidos:

1. Partimos de un valor de 0V que cambia a 5V en un tiempo establecido en 5 us-

2. El nivel de 5V se mantiene durante los 10 ms estsblecidos, instante en que pasa de nuevo a valer 0 con un retardo de 5 us y se mantiene en 0V hasta completar el peeriodo de 20 ms configurado.

3. Finalizado el primer ciclo la secuencia se repite hasta completar los 5 ciclos establecidos.

4. Se aconseja al lector [descargar el ejemplo](../../Ejemplos/Elementos/E3-Fuente-pulsante.asc) y jugar con estos valores para controlar el funcionamiento de este tipo de fuente de excitación. En la animación siguiente vemos un ejemplo de esto.

<center>

![Ilustración del efecto en los cambios de valores de la fuente](../../img/Elementos/E3.gif)

</center>

### Fuente lineal a tramos

Si en las opciones avanzadas de configuración de una fuente DC escogemos la opción *PWL* la ventana nos mostrará las opciones que observamos en la imagen 19. PWL es acrónimo del inglés PieceWise Linear que se traduce como lineal a trozos o tramos.

<center>

| Imagen 19 |
|:-:|
| ![Opciones para fuente DC PWL](../../img/Elementos/i19.png) |
| Opciones para fuente DC PWL |

</center>

En la tabla siguiente se describen estos parámetros.

<center>

| Parámetro | Descripción | Unidades |
|:-:|---|:-:|
| time_n | Instante de tiempo del para el valor n | s |
| value_n | Valor de tensión para el valor n | V o A |

</center>

La señal que entrega la fuente se construye con cada par de valores (time_n,value_n) y se pueden añadir mas puntos de los mostrados en la imagen 19 haciendo clic en el botón *Additional PWL Points*.

En la imagen 20 tenemos un sencillo ejemplo de simulación con una fuente PWL configurada según se observa en la propia imagen. Hemos creado una simulación de tipo *Transient* que dura 10s a intervalos de 1s y comienza en 0. En la imagen también podemos ver todos los pares de puntos (time,value) establecidos.

<center>

| Imagen 20 |
|:-:|
| ![Simulación fuente PWL](../../img/Elementos/i20.png) |
| Simulación fuente PWL |

</center>

En este caso la explicación del funcionamiento es muy simple y tan solo indicaremos como reseñable que, a partir del último punto establecido la salida de la fuente mantiene constante su valor en el tiempo.

Se aconseja al lector [descargar el ejemplo](../../Ejemplos/Elementos/E4-Fuente-PWL.asc) y jugar con estos valores para controlar el funcionamiento de este tipo de fuente de excitación. En la animación siguiente vemos un ejemplo de esto.

<center>

![Ilustración del efecto en los cambios de valores de la fuente](../../img/Elementos/E4.gif)

</center>

Los datos de los puntos se pueden especificar a través de un fichero de texto plano como .txt o .csv separando las parejas de datos en dos columnas, tal y como observamos en la imagen 21, donde hemos seleccionado la opción *PWL FILE* y el fichero [E4.csv](../../Ejemplos/Elementos/E4.csv) (tambien podemos cargar el fichero [E4.txt](../../Ejemplos/Elementos/E4.txt) que nos dará idéntico resultado.

<center>

| Imagen 21 |
|:-:|
| ![Fichero de texto plano](../../img/Elementos/i21.png) |
| Fichero de texto plano |

</center>

La simulación a partir de archivo nos origina los resultados que vemos en la imagen 22.

<center>

| Imagen 22 |
|:-:|
| ![Simulación fuente PWL a partir de archivo](../../img/Elementos/i22.png) |
| Simulación fuente PWL a partir de archivo |

</center>

### Fuente de frecuencia simple FM

Si en las opciones avanzadas de configuración de una fuente DC escogemos la opción *SFFM* la ventana nos mostrará las opciones que observamos en la imagen 23. 

<center>

| Imagen 23 |
|:-:|
| ![Opciones para fuente de frecuencia simple FM](../../img/Elementos/i23.png) |
| Opciones para fuente de frecuencia simple FM |

</center>

En la tabla siguiente se describen estos parámetros.

<center>

| Parámetro | Símbolo | Descripción | Unidades |
|:-:|:-:|---|:-:|
| DC offset | DC | Tensión continua de offset | V o A |
| Amplitude | A | Amplitud de la señal | V o A |
| Carrier Freq | CF | Frecuencia de la portadora | Hz |
| Modulation Index | MI | Indice o coeficiente de modulación ||
|Signal Freq | SF | Frecuencia de la señal | Hz |

</center>

En la imagen 24 tenemos un sencillo ejemplo de simulación con una fuente SFFM configurada según se observa en la propia imagen. Hemos creado una simulación de tipo *Transient* que dura 2 ms a intervalos de 0.5 ms y comienza en 0. 

<center>

| Imagen 24 |
|:-:|
| ![Simulación fuente SFFM](../../img/Elementos/i24.png) |
| Simulación fuente SFFM |

</center>

La explicación del funcionamiento es bastante simple si se tienen claros los conceptos de señal portadora e índice de modulación.

La señal se describe por la siguiente ecuación:

<center>

$V_{tuente}=DC+A\cdot sen\left( 2\pi \cdot CF\cdot t\right) +MI\cdot sen\left( 2\pi \cdot SF\cdot t\right)$

</center>

## Otros componentes

Existen infinidad de componente y elementos que no vamos a describir uno por uno pues con las bases explicadas hasta el momento tenemos claras las ideas del significado de los parámetros de los componentes principales.

Simplemente nombramos algunos a título de ejemplo.

* Inductancia mutua  
* Fuente de tensión controlada por tensión  
* Fuente de corriente controlada por corriente  
* Fuente de corriente controlada por tensión  
* Fuente de tensión controlada por corriente  
* Componentes electrónicos diversos

## Usar un componente que no está en las librerías

Cuando necesitamos utilizar un componente concreto del que no disponemos modelo en las librerias disponibles, ya sea las que se instalan por defecto o simplemente no existe aunque tengamos una base de datos de componentes mas amplia que la original, podemos importar un modelo desde alguna librería de las disponibles en la web.

Por ejemplo, en el [enlace](http://ltwiki.org/?title=Standard.dio) tenemos modelos compatibles con LTSpice XVII.

Supongamos por ejemplo que necesitamos obtener la curva característica del diodo 1N4007 que es un diodo rectificador de la serie 1N4001 - 1N4007 en la que todos son muy similares cambiando solamente el valor de la tensión eficaz inversa entre ellos.

Si buscamos en el enlace encontramos justamente el 1N4007 del que nos suministran los siguientes datos:

`.model 1N4007 D(IS=7.02767n RS=0.0341512 N=1.80803 EG=1.05743 XTI=5 BV=1000 IBV=5e-08 CJO=1e-11 VJ=0.7 M=0.5 FC=0.5 TT=1e-07 mfg=OnSemi type=silicon)`

En la imagen 25 tenemos el circuito que vamos a construir y el proceso para renombrar al diodo por el valor que necesitamos.

<center>

| Imagen 25 |
|:-:|
| ![Circuito con diodo 1N4007](../../img/Elementos/i25.png) |
| Circuito con diodo 1N4007 |

</center>

El siguiente paso es indicar el modelo del diodo con todos sus parámetros. Para ello abrimos la ventana de SPICE Directive (último icono de la barra de herramientas) y copiamos los datos del modelo del diodo obtenidos en Internet, imagen 26. 

<center>

| Imagen 26 |
|:-:|
| ![Modelo para el diodo 1N4007](../../img/Elementos/i26.png) |
| Modelo para el diodo 1N4007 |

</center>

Cuando cerramos la ventana los datos del modelo aparecen sobre la hoja de trabajo, imagen 27.

<center>

| Imagen 27 |
|:-:|
| ![Modelo de diodo 1N4007 establecido](../../img/Elementos/i27.png) |
| Modelo de diodo 1N4007 establecido |

</center>

Procedemos a establecer unas condiciones de simulación por barrido DC como las que vemos en la imagen 28 sin preocuparnos de ello puesto que serán explicadas mas adelante.

<center>

| Imagen 28 |
|:-:|
| ![Condiciones de simulación por barrido DC](../../img/Elementos/i28.png) |
| Condiciones de simulación por barrido DC |

</center>

En la imagen 29 tenemos el resultado de obtener la corriente que circula por el diodo.

<center>

| Imagen 29 |
|:-:|
| ![Curva característica del diodo 1N4007](../../img/Elementos/i29.png) |
| Curva característica del diodo 1N4007 |

</center>

Podemos [descargar](../../Ejemplos/Elementos/E6-Curva-1N4007.asc) este ejemplo para su estudio.

## Parámetros de modelos SPICE

### Diodo

<center>

| Parámetro | Valor por defecto | Significado |
|:-:|:-:|---|
| IS | Corriente inversa de saturación | 0.01 pA |
| N | Coeficiente de emisión | 1 |
| ISR | Corriente de saturación de recombinación | 0 |
| NR | Coeficiente de emisión para ISR | 2 |
| IKF | Corriente codo | $\infty$ |
| BV | Tensión de ruptura | $\infty$ |
| IBV | Corriente para la tensión de ruptura | 1 nA |
| NBV | Factor de la tensión de ruptura | 1 |
| RS | Resistencia parásita | 0 |
| TT | Tiempo de respuesta | 0 |
| CJO | Capacidad de la unión PN sin polarizar | 0 |
| VJ | Tensión de unión | 1 |
| M | Coeficiente de unión | 0.5 |
| EG | Energia del gap | 1.11 eV |
| XTI | Exponente de la temperatura de IS | 3 |
| KF | Coeficiente de ruido Flicker | 0 |
| AF | Exponente de ruido Flicker | 1 |
| FC | Coeficiente en polarización directa para CJ | 0.5 |

</center>

### Transistor

<center>

| Parámetro | Valor por defecto | Significado | Valor típico |
|:-:|:-:|---|:-:|
| IS | Corriente inversa de saturación | 1 fA | 1 fA |
| BF | Valor de Beta | 100 | 100 |
| NF | Coeficiente de emisión de la corriente directa | 1 | 1 |
| VAF o VA | Tensión de Early directa | $\infty$ | 100 V |
| IKF o IK | Corriente de codo | $\infty$ | 10 mA |
| ISE | Corriente de saturación de pérdida B-E | 1000 A | 1000 A |
| NE | Coeficiente de emisión de pérdida B-E | 1.5 | 2 |
| BR | Valor de Beta inversa | 1 | 0.1 |
| NR | Coeficiente de emisión para corriente inversa | 1 | - |
| VAR o VB | Tensión de Early inversa | $\infty$ | 100 V |
| IKR | Corriente de codo inversa | $\infty$ | 100 mA |
| ISC | Corriente de saturación C-B | 0 | 1 A |
| NC | Coeficiente de emisión de pérdida B-C | 2 | 2 |
| NK | Coeficiente de alta corriente | 0.5 | - |
| RE | Resistencia de emisor | 0 | 1 R |
| RB | Resistencia de base | 0 | 100 R |
| RC | Resistencia de colector | 0 | 10 R |
| CJE | Capacidad unión B-E | 0 | 2 pF |
| VJE | Tensión de unión B-E | 0.75 | 0.7 V |
| MJE | Factor de graduación de la unión B-E | 0.33 | - |
| CJC | Capacidad unión C-B | 0 | 1 pF |
| VJC | Tensión unión B-C | 0.75 V | 0.5 V |
| MJC | Factor de graduación de la unión B-C | 0.33 | - |
| FC | Coeficiente capacidad de barrera | 0.5 | - |
| TF | Tiempo de transición directo | 0 | 0.1 ns |
| TR | Tiempo de transición inverso | 0 | 10 ns |
| EG | Energia del gap | 1.11 eV | 1.11 eV |
| XTI | Exponente de temperatura para IS | 3 | - |

</center>

## Subcircuitos

Un subcircuito es un modelo de un componente o circuito que vamos a poder utilizar siempre que lo necesitemos y que estará representado por un símbolo. Es decir, va a funcionar de manera similar a un componente que vamos a crear nosotros mismos a partir de un circuito determinado.

Para ilustrar el tema vamos a crear un sumador analógico basado en el amplificador operacional AD711. Realizamos las conexiones necesarias para obtener el esquema de la imagen 30.

<center>

| Imagen 30 |
|:-:|
| ![Esquema del sumador analógico](../../img/Elementos/i30.png) |
| Esquema del sumador analógico |

</center>

En la imagen 31 tenemos la Netlist del circuito.

<center>

| Imagen 31 |
|:-:|
| ![Netlist del sumador analógico](../../img/Elementos/i31.png) |
| Netlist del sumador analógico |

</center>

Una vez decidido el circuito pasamos a crear un símbolo para representarlo. Para ello accedemos a la orden *Create a New Symbol* del menú *Hierarchy*, tal y como se observa en la imagen 32.

<center>

| Imagen 32 |
|:-:|
| ![Acceso a *Create a New Symbol*](../../img/Elementos/i32.png) |
| Acceso a *Create a New Symbol* |

</center>

Aparecerá una hoja de trabajo en la cual vamos a dibujar nuestro símbolo y lo vamos a dotar de patillas de conexión. Para realizar el dibujo disponemos de herramientas básicas de dibujo en el menú *Draw* (imagen 33a) y para colocar pines debemos colocar los puertos de conexión de entrada y de salida, que deberán ser iguales a los
del circuito de la imagen 30 (V1, V2 y S). Esto lo hacemos desde la opción Add Pin/Port del menú Edit. En la imagen 33b vemos las opciones disponibles para los pines.

Cuando el esquema tiene asociado un símbolo podemos abrirlo con la opción *Open this Sheet's Symbol* que vemos en la imagen 32. 

<center>

| Imagen 33a | Imagen 33b |
|:-:|:-:|
| ![Herramientas de dibujo disponibles](../../img/Elementos/i33a.png) |![Opciones para pines](../../img/Elementos/i33b.png) |
| Herramientas de dibujo disponibles | Opciones para pines |

</center>

En nuestro caso hemos creados el símbolo que se observa en la imagen 34 que trata de indicar la tarea que realiza a la salida con las dos entradas.

<center>

| Imagen 34 |
|:-:|
| ![Símbolo creado para el sumador analógico](../../img/Elementos/i34.png) |
| Símbolo creado para el sumador analógico |

</center>

Podemos [descargar](../../Ejemplos/Elementos/E7-sumador-analogico.asc) este ejemplo para el estudio de la creación de subcircuitos.

A partir de este momento tenemos disponible el símbolo para su uso en esquemas, pero por conveniencia, lo he trasladado a un directorio propio creado dentro del directorio de librerias de LTSpice XVII y una vez indexado (reiniciando el programa) ya está disponible.

Veamos un sencillo ejemplo de uso del símbolo creado. Vamos a hacer un sumador analógico para obtener como señal de salida la resultante de sumar una señal continua procedente de una bateria de 1V con otra sinusoidal de 2V de amplitud. En la imagen 35 vemos el resultado con las tres señales implicadas mostradas. Se observa cómo la salida en una señal sinusoidal de 2V de amplitud desplazada 1V en ordenadas y en fase con la sinusoide de entrada, es decir, el símbolo repreesenta un sumador analógico.

<center>

| Imagen 35 |
|:-:|
| ![Ejemplo básico de sumador analógico](../../img/Elementos/i35.png) |
| Ejemplo básico de sumador analógico |

</center>

Podemos [descargar](../../Ejemplos/Elementos/E8-ejemplo-uso-simbolo-sumador.asc) este ejemplo para su estudio
