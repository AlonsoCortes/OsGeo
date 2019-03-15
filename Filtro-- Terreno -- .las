Este codigo en json permite hacer la distinción entre el terreno y las elevaciones encima de el
Esta información se presenta en la columna clasification

Filtro básico
--
{
  "pipeline":[
    "I38.las",
    {
    "type":"filters.smrf" 
    },
    "I38_filtrado.las"
  ]
}

--

Filtro avanzado
--
  "pipeline":[
    "R34.las",
    {
      "type":"filters.smrf",
      "scalar":1.2,
      "slope":0.2,
      "threshold":0.45,
      "window":16.0
    },
    {
      "type":"filters.range",
      "limits":"Classification[2:2]"
    },
    "R34_filtrado.las"
  ]
}
