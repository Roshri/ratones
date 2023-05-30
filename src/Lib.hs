module Lib where
import Text.Show.Functions
import PdePreludat


laVerdad = True

type Nombre = String
type Edad = Number
type Peso = Number
type Enfermedad = String

data Raton = UnRaton {
    nombre :: Nombre,
    edad :: Edad,
    peso :: Peso,
    enferemedades :: [Enfermedad]
}

cerebro :: Raton
cerebro = UnRaton {
    nombre = "Cerebro",
    edad = 9,
    peso = 0.2,
    enfermedades = [brucelosis, sarampion, tuberculosis]
}

bicenterrata :: UnRaton
bicenterrata = UnRaton {
    nombre = "Bicenterrata",
    edad = 256,
    peso = 0.2,
    enfermedades = []
}

huesudo :: UnRaton
huesudo = UnRaton {
    nombre = "Huesudo",
    edad = 4,
    peso = 10,
    enfermedades = [obesidad, sinusitis] 
}


type Hierba = (Raton -> Raton)

hierbaBuena :: Hierba
hierbaBuena raton = rejuvenecer (sqrt (edad raton)) raton

rejuvenecer :: Edad -> Raton -> Raton
rejuvenecer anios raton = raton {edad = anios}


hierbaVerde :: (String -> Hierba)
hierbaVerde sufijo raton = raton {enfermedades = filter (not . terminaCon sufijo) (enfermedades raton)}


terminaCon :: String -> String -> Bool
terminaCon sufijo enfermedad = sufijo == drop (length enfermedad - length terminacion) enfermedad


alcachofa :: Hierba
alcachofa raton = perderPeso (peso raton * pesoAPerder raton) raton

pesoAPerder :: Raton -> Number
pesoAPerder raton | (peso raton) > 2 = 0.1
                  | otherwise = 0.05

perderPeso :: Peso -> Raton -> Raton
perderPeso pesoReducir raton = raton {peso = max (peso raton - pesoReducir) 0}


cambiarNombre :: Nombre -> Raton -> Raton
cambiarNombre nuevoNombre raton = raton {nombre = nuevoNombre}

perderEnfermedades :: Raton -> Raton
perderEnfermedades raton = raton {enfermedades = []}

hierbaZort :: Hierba
hierbaZort raton = cambiarNombre "Pinky" . rejuvenecer 0 . perderEnfermedades

eliminarEnfermedades :: Number -> Raton -> Raton
eliminarEnfermedades letrasNombre raton = raton {enfermedades = filter ((<= letrasNombre).lenght) (enfermedades raton)}

hierbaDelDiablo :: Hierba
hierbaDelDiablo = perderPeso 0.1 . eliminarEnfermedades 10


type Medicamento = Raton -> Raton

componer :: [Hierba] -> Medicamento
componer [] = id
componer (x:xs) = x . componer xs

pondsAntiAge :: Medicamento
pondsAntiAge = componer [hierbaBuena, hierbaBuena, hierbaBuena, alcachofa]

listaDeHierbas :: Number -> [Hierba]
listaDeHierbas potencia = replicate potencia alcachofa ++ [hierbaVerde "obesidad"]

reduceFatFast :: Medicamento
reduceFatFast = componer . listaDeHierbas

sufijosInfecciosas :: [String]
sufijosInfecciosas = ["sis", "itis", "emia", "cocos"]

pdepCilina :: Medicamento
pdepCilina = componer (map (hierbaVerde sufijosInfecciosas))


cantidadIdeal :: (Num a, Enum a) => (a -> Bool) -> a
cantidadIdeal condicion = head (filter condicion [1..])


ningunoConSobrepeso :: [Raton] -> Bool
ningunConSobrepeso ratones = all ((< 1) . peso) ratones

menosDe3Enfermedades :: [Raton] -> Bool
menosDe3Enfermedades ratones = all ((< 3) . lengh . enfermedades) ratones

lograEstabilizar :: Medicamento -> [Raton] -> Bool
lograEstabilizar medicamento ratones = ningunoConSobrepeso (map medicamento ratones) &&  menosDe3Enfermedades (map medicamento ratones)


