¿Qué vamos a hacer esta noche?
La ciencia suele usar ratones para crear los nuevos medicamentos del mañana. A pedido de una organización protectora de la vida ratónica, se nos pide elaborar un sistema de simulación de experimentos, para dejar tranquilos a Pinky y Cerebro.

De los ratones nos interesa modelar su nombre, su edad (en años), su peso, y las enfermedades que posee.

Por ejemplo:

--Cerebro es un ratón con 9 años, 0.2 kg de peso y tiene brucelosis, sarampión y tuberculosis.
--Bicenterrata es un ratón con 256 años, 0.2kg de peso, y completamente sano.
--Huesudo es un ratón de 4 años con 10kg de peso, y alta obesidad y sinusitis.

Modelar a los ratones mencionados.

Existen distintos tipos de hierbas que afectan (modifican) de diferentes maneras al ratón. Definir dichas hierbas:

--hierbaBuena, que rejuvenece al ratón a la raíz cuadrada de su edad.
  Por ejemplo, si a cerebro le doy hierbaBuena, se transforma en un ratón de 3 años.
--hierbaVerde, elimina las enfermedades que terminen de cierta forma.
  Por ejemplo, si a cerebro le doy la hierbaVerde del tipo “sis”, queda sólo con sarampión.
--alcachofa, hace que el ratón pierda peso en un 10% si pesa más de 2kg, sino pierde un 5%.
  Por ejemplo, un raton de 3 kg queda con 2,7 kg y cerebro queda con 0.19 kg. 
--hierbaZort, hace que el ratón se transforme en Pinky, perdiendo todas sus enfermedades y quedando con 0 años de edad.
--hierbaDelDiablo, hace que el ratón pierda 0.1kg (sin disminuir de 0) y elimina todas las enfermedades con menos de 10 letras. 


Medicamentos: Los medicamentos son la administración sucesiva de un conjunto de hierbas. Se pide crear los siguientes medicamentos para luego poder administrarlos en un ratón: 

--Hacer el pondsAntiAge, que es un medicamento que está hecho con 3 hierbas buenas y una alcachofa.
  Por ejemplo, si se lo administramos al ratón Bicenterrata, queda con 2 años y 0.19 kg 
--Hacer el reduceFatFast, (que viene en distintas potencias) y es un medicamento compuesto por una hierbaVerde de “obesidad” y tantas alcachofas como indique su potencia.
  Por ejemplo administrándole a Huesudo un reduceFatFast de potencia 1 hace que huesudo pase a pesar 9 kg y sólo quede con sinusitis. Si en lugar de la 1 le administramos un reduceFatFast de   potencia 2, pasa a pesar 8.1 kg y queda también solo con sinusitis.
--Hacer la pdepCilina, que es un medicamento que usa hierbasVerdes para curar todas las enfermedades infecciosas. Las enfermedades infecciosas son aquellas cuyo nombre termina de alguna de      estas formas (utilizar esta constante):
  sufijosInfecciosas = [ "sis", "itis", "emia", "cocos"]

Experimento: Los laboratorios antes de publicar un medicamento, lo prueban con distintos ratones para evaluar los resultados:

--Hacer la función que encuentra la cantidadIdeal. Recibe una condición y dice cuál es el primer número natural que la cumple.

--Saber si un medicamento lograEstabilizar una comunidad de ratones. Esto sucede cuando, luego de aplicarle el medicamento a todos los ratones de la comunidad, se elimina el sobrepeso y       todos tienen menos de 3 enfermedades. Un ratón tiene sobrepeso si pesa más de 1kg.

Diseñar el siguiente experimento: dado una comunidad de ratones, encontrar la potencia ideal del reduceFatFast necesaria para estabilizar la comunidad.

Queremos saber si un medicamento logra estabilizar una comunidad infinita. ¿Podemos saberlo? Responder en estos dos casos:

Si todos los ratones quedan con menos de 1kg y sin enfermedades. Justificar.

Si un ratón queda con 2kg y 4 enfermedades. Justificar.

Responder en base al ejercicio

--¿Qué cambios debería hacer para agregar una nueva hierba y construir un medicamento con ella? ¿Habría que modificar las funciones existentes? 
--¿Qué concepto está involucrado en la pregunta anterior? ¿Para qué sirve en este caso?
  Si se cambia el modelo del ratón, por ejemplo, ahora queremos que se registre el peso de un ratón siempre en libras. ¿Qué funciones habría que modificar?	
