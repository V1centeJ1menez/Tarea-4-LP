# Tarea-4-LP

**Nombre:** Vicente Jimenez  
**Rol:** 202373523-k  

## Descripción

Esta tarea consiste en la implementación de cuatro funciones en Scheme, cada una diseñada para resolver un problema específico mediante el uso de recursión, funciones lambda y estructuras de datos en listas. A continuación se describe brevemente cada función:

### 1. El Extraviado `(buscador lista elemento)`
   - **Descripción:** Esta función busca un elemento en una lista y devuelve su posición (comenzando desde 1). Si el elemento no está en la lista, devuelve -1. La búsqueda es exacta (distingue entre valores como `2` y `2.0`).
   - **Requisitos específicos:** Implementación recursiva sin usar funciones predefinidas como `member` o `list-ref`.

### 2. Serie de Taylor del Seno y Coseno
   - **Funciones:** `(taylorSenoSimple n x)` y `(taylorCosenoCola n x)`
   - **Descripción:** Estas funciones calculan una aproximación del seno y coseno de un valor `x` utilizando la serie de Taylor con `n` términos. La función `taylorSenoSimple` usa recursión simple, mientras que `taylorCosenoCola` emplea recursión de cola.
   - **Requisitos específicos:** Implementar cada función de acuerdo con el tipo de recursión indicado.

### 3. Composición Rotacional `(evaluador funciones numeros)`
   - **Descripción:** Esta función aplica una serie de funciones lambda a una lista de números, rotando la lista de funciones para cada número. Devuelve una lista con los resultados de cada rotación y evaluación.
   - **Requisitos específicos:** Uso de funciones lambda y recursión para realizar la rotación y evaluación en cada número.

### 4. Las Profundidades de los Tesoros `(profundidades arbol)`
   - **Descripción:** La función recibe una estructura de árbol en forma de lista anidada y busca nodos con el valor `T`, que representan tesoros. Devuelve una lista de las profundidades de los nodos que contienen un tesoro, ordenadas de menor a mayor.
   - **Requisitos específicos:** Uso de recursión para explorar las listas anidadas (árbol).

## Ejecución

1. **Requisitos previos:** Asegúrese de tener instalado Racket con el lenguaje Scheme habilitado. Puede descargarlo desde [https://racket-lang.org/download/](https://racket-lang.org/download/).

2. **Carga del archivo:** Abra DrRacket, seleccione `#lang scheme` en la primera línea del archivo, y cargue cada archivo correspondiente a cada pregunta:
   - `P1.rkt` para el ejercicio 1.
   - `P2.rkt` para el ejercicio 2.
   - `P3.rkt` para el ejercicio 3.
   - `P4.rkt` para el ejercicio 4.

3. **Ejecución de las funciones:** En la consola de DrRacket, puede ejecutar los ejemplos proporcionados en la tarea o cualquier otro valor de prueba. Por ejemplo:
   ```scheme
   (buscador '(1 2 3) 3) ; Ejemplo de uso de la función buscador
   (taylorSenoSimple 300 3.14) ; Ejemplo de Taylor para seno
   (evaluador (list (lambda (x) (+ x 1)) (lambda (x) (* x x))) '(2 5 7)) ; Ejemplo de composición rotacional
   (profundidades '(1 (T (2 (T) (3))) (4 (5) (6)) (7 (T (8))))) ; Ejemplo de profundidades de tesoros
   ```