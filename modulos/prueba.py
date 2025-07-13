S01_2610_D1 = [["0", "0", "0", "0" , "0", "0", "0", "0", "0", "0", "0", "0", "0", "0"],
               ["0", "0", "0", "0" , "0", "0", "0", "0", "0", "0", "0", "0", "0", "0"],
               ["0", "0", "0", "0" , "0", "0", "0", "0", "0", "0", "0", "0", "0", "0"],
               ["0", "0", "0", "0" , "0", "0", "0", "0", "0", "0", "0", "0", "0", "0"],
               ["0", "0", "0", "a" , "0", "0", "0", "0", "0", "0", "0", "0", "0", "0"],
               ["0", "0", "0", "0" , "0", "0", "0", "0", "0", "0", "0", "0", "0", "0"]]

#materia = [1, 123, 11, 2, "Lenguaje I", 4, 2610, [[4 , 0],[5, 6]] ]

#S01_2610_D1[materia[7][0][0]][materia[7][0][1]] = materia[4]

#for bloques in materia[7]:
#    S01_2610_D1[bloques[0]][bloques[1]] = materia[4]




S01_2610_D1[1][2] = "LENGUAJE"

for filas in S01_2610_D1:
    print(filas)



"""
lista = [8, 1, 2, 3, 4, 5, 6]

S01_2610_D1.extend([["Z", "x"]])

S01_2610_D1.extend([lista])"""

#for fila in S01_2610_D1[4][3]:
#    print(fila)
"""
horario = [[[0, 0], 123], [[1, 2], 456], [[2, 3], 123], [[3, 1], 789], [[4, 0], 123]]

materia_horario = {}

for coordenada, id_materia in horario:
    if id_materia not in materia_horario:
        materia_horario[id_materia] = []
    materia_horario[id_materia].append(coordenada)

for id_materia in materia_horario:
    materia_horario[id_materia] = str(materia_horario[id_materia])


print(materia_horario)"""