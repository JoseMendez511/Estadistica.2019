title: "Práctica 1 - Introducción al lenguaje de programacíon en R"
author: "Jose Méndez Riveros, Estadística - 25374"


### Creando un objeto
x = 2
x

y <- 3
y

4 -> z
z
##Ejercicio: Reasigne 5 a la letra *z*, usando el operador *<-*, ahora, pregunte ¿qué es *z*?#

z<- 5
z

#Reasignando con operaciones

z<- 10 + 2

z

z <- 3 + rnorm(1)
z

##Ejercicio:Revisemos qué es rnorm(1). Empecemos buscando la función en help o ?rnorm

?rnorm()

#Crear un vector en secuencia de 1 a 10

x <- 1:10
# Ver el vector
x

#Incluso, podemos hacer operaciones con cada uno de los números de las secuencias

# Sumar 1 a cada número
x + 1

##Ejer: multiplique *x* por 2 y sumele 1 y dividalo por 1.5, ese resultado elevelo al cuadrado. Esto se escribe igual que en una calculadora manual.

(((x*2) + 1)/1.5)^2

#Clases de Objetos, R tiene 5 clases de objetos

animales <- c('perro','gato','fara')
animales

frases <- 'El gato se comió el fara'
frases

números <- rep(x = 1:3,3)/1.5
números

enteros <- seq(from = 1,to = 10,by = 2)
enteros

complejos <- c(2i,5i, 3i)
complejos

logicos <- c(T,F,TRUE,FALSE)
logicos

##Ejer: tome cualquier objeto anterior y preguntele la clase

class(complejos)

# Crear un vector con problemas de clases

prueba <- c(1, "perro", FALSE, "gato", 1.5)

# Ver el vector

prueba

#Ejer: ¿Qué clase tiene el vector?

class(prueba)

# Creemos un factor con niveles

grupo_altura <- factor(c("mediano", "pequeño", "grande", "muy grande"),
                       levels=c("pequeño", "mediano", "grande", "muy grande"))

# Veamos el factor
grupo_altura

##Ejer: Hasta el momento hemos generado varios vectores/objetos/variables, podemos listarlas usando la función ls() o ls.str(), la cual nos permite, no solo ver las variables, sino el tipo de cada una.

ls()

#### Matrices

vector1<- seq(1:12)

vector1

matrix1<- matrix(data = 1:12,nrow = 3,ncol = 4)
matrix1

#extrayendo de una matriz el objeto número 6

vector1<- seq(1:12)

vector1[6]

vector1

# el objeto de la fila 2, columna 3
matrix1<- matrix(data = 1:12,nrow = 3,ncol = 4)

matrix1[2,3]

matrix1

#Realizar arreglos 

# el objeto de la fila 2, columna 3
matrix1<- matrix(data = 1:12,nrow = 3,ncol = 4)

matrix1[2,3]

matrix1

# el objeto de la fila 2, columna 3

arreglo<- array(data = 1:12,dim = c(3,4,3))

arreglo[2,4,3]

arreglo

vector1<-rep(1:4,3)
vector2<- seq(2,24,2)
array(data = c(vector1,vector2),dim = c(3,4,2))
seq()

##Ejercicio: Cree un una secuencia que repita los números de 1 a 4, 3 veces y asignela a un objeto llamado vector1. Ahora, cree una secuencia de números pares del 2 al 24 y asignela a un objeto llamado vector2. Genere un arreglo con ambos vectores y busque la columna 2, fila 1 de la segunda matriz y para la primera.

Vector1 <-rep(1:4,3)
vector2 <-seq(2,24,2)
vector1.vector2<-array(c(vector1,vector2),dim = c(3,4,2))
vector1.vector2
vector1.vector2[2,1,2]
vector1.vector2[2,1,1]

## Data.Frames

# Cargando un dataframe interno

data(iris)

iris

class(iris)


#Podemos extraer columnas usando el nombre de cada una, por ejemplo para obtener la variable Longitud del Sepalo

iris$Sepal.Length

# Longitud del Sepalo del individuo 36, tenemos dos formas posibles:

iris$Sepal.Length[36]

iris[36,1]

##Ejer:  tome la primera columna  y la segunda, concatenelas con c() ¿Qué encuentra? Ahora, tome amabas columnas y use la funcion cbind(), asignelo a un objeto llamado minuevatabla. Haga lo mismo, con las filas del 1:5 y del 10:30, use primero c() y luego rbind() ¿Qué encuentra? 

iris1=iris$Sepal.Length
iris2=iris$Sepal.Width
minuevatabla.<-cbind(iris1,iris2)
minuevatabla.

iris.a=iris$Sepal.Length[1:5]
iris.a
iris.b=iris$Sepal.Width[10:30]
iris.b
minuevatabla.2=c(iris.a,iris.b)
minuevatabla.2


#Busque el archivo suministrado por el profesor, carguelo a R y revise qué contien. Extraiga las 5 primeras columnas con las 10 primeras filas, escriba esa nueva matriz como csv en su computador.
> library(readxl)
csv <- read_excel("~/Laboratorio Estd/Matrix_Multivariate_Mega.xlsx")
csvmatriz <- csv[1:10, 1:5]
View(csvmatriz) 
#archivo final
write.csv(x = csvmatriz, file = 'csvmatriz.csv')
