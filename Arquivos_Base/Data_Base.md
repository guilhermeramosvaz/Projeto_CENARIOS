#
# Dados de Temas do Tipo Antrópico

<br>

| Dado | Descrição | Fonte |
| :---: | :--- | :---: |
| Distância de Estradas Pavimentadas | Vetor reprojetado para Albers; Recorte para a área de interesse; Rasterização do vetor; Mudança de resolução para 30m; Cálculo de distância euclidiana. | [DNIT](https://servicos.dnit.gov.br/vgeo/) |
| Distância de Estradas Vicinais | Vetor reprojetado para Albers; Recorte para a área de interesse; Rasterização do vetor; Mudança de resolução para 30m; Cálculo de distância euclidiana. | [IBGE](https://geoftp.ibge.gov.br/cartas_e_mapas/bases_cartograficas_continuas/bc250/versao2023/shapefile/) |
| Distância de ferrovias | Vetor reprojetado para Albers; Recorte para a área de interesse; Rasterização do vetor; Mudança de resolução para 30m; Cálculo de distância euclidiana. | [DNIT](https://servicos.dnit.gov.br/vgeo/) |
| Distância de Hidrovias | Vetor reprojetado para Albers; Recorte para a área de interesse; Rasterização do vetor; Mudança de resolução para 30m; Cálculo de distância euclidiana. | [DNIT](https://servicos.dnit.gov.br/vgeo/) |
| Distância de Silos | Vetor reprojetado para Albers; Recorte para a área de interesse; Rasterização do vetor; Mudança de resolução para 30m; Cálculo de distância euclidiana. | [MapBiomas](https://brasil.mapbiomas.org/dados-de-infraestrutura/) |
| Distância de Frigoríficos | Vetor reprojetado para Albers; Recorte para a área de interesse; Rasterização do vetor; Mudança de resolução para 30m; Cálculo de distância euclidiana. | ABIEC, IMAZON, GISMAPS, IMAFLORA e [ABRAFRIGO](https://www.abrafrigo.com.br/index.php/links-uteis/); |
| Densidade Populacional | A partir dos dados vetoriais brutos em grade, foi realizada a junção dos arquivos, seguida do recorte para a área de interesse e da conversão para o formato raster. Posteriormente, os arquivos foram reprojetados, redimensionados e alinhados com os demais rasters. | [IBGE](https://www.ibge.gov.br/geociencias/downloads-geociencias.html); |
| Idade do Desmatamento | Processados dados de uso e cobertura de áreas naturais de toda a série histórica do Mapbiomas coleção 9, para identificar o ano de desmatamento. O resultado foi reprojetado e teve sua resolução espacial redimensionada para 30 metros. | [MapBiomas](https://brasil.mapbiomas.org/dados-de-infraestrutura/); |
| Idade da Pastagem | Raster adquirido do Mapbiomas coleção 9 já processados. Foi então realizado recorte, reprojetado e sua resolução espacial foi redimensionada para 30 metros quadrados. | [MapBiomas](https://brasil.mapbiomas.org/dados-de-infraestrutura/); |
| Vigor - GPP | Os dados brutos (MODIS-EVI) foram reclassificados em três classes, de 1 a 3, correspondendo a baixo vigor (1), vigor moderado (2) e alto vigor (3). Em seguida, o dado foi reprojetado, redimensionado e alinhado com os demais. | [LAPIG/MapBiomas](https://brasil.mapbiomas.org/wp-content/uploads/sites/4/2024/08/ATBD-Collection-9-v2.docx-1.pdf); |
| Aptidão para soja | Filtragem das áreas com potencial para o cultivo de soja; recorte para a área de estudo; reclassificação das classes conforme o grau de potencialidade, sendo elas: moderada, boa e muito boa; Redimensionado para 30m e reprojetado para Albers. | [IBGE](https://agenciadenoticias.ibge.gov.br/agencia-noticias/2012-agencia-de-noticias/noticias/35693-publicacao-inedita-do-ibge-mostra-elevado-potencial-natural-para-a-agricultura-no-pais) |


<br>

#
# Dados de Temas do Tipo Natural

<br>

| Dado | Descrição | Fonte |
| :---: | :--- | :---: |
| Distância de Rios | Vetor reprojetado para Albers; Recorte para a área de interesse; Rasterização do vetor; Mudança de resolução para 30m; Cálculo de distância euclidiana. | [SNIRH](https://metadados.snirh.gov.br/geonetwork/srv/por/catalog.search#/home) |
