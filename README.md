# Plantilla EIIA - UCLM para realizar tu TFG en LaTeX

Navega al [repositorio oficial](https://github.com/UCLM-eiia-to/eiia_doc_tfg_latex) para
ver estas instrucciones correctamente formateadas.

Debes ser absolutamente sistemático para elaborar tu TFG. No vale con que vayas
escribiendo y luego le "des forma".  Por ejemplo, buscar las fuentes de las 
imágenes y las autorizaciones para reproducirlas a posteriori es un auténtico 
infierno.

El documento maestro es `TFG.tex`, en la misma carpeta que este archivo. Ese 
documento tiene solo la estructura, todo el contenido está en otras carpetas:

Subcarpeta | Descripción
:---|:---
`tex/` |  Esta carpeta contiene todos los subdocumentos del TFG. Si tienes mucho material puedes hacer subcarpetas para organizarlo mejor, pero procura mantener una estructura lo más plana posible, facilita las reorganizaciones del documento.
`fig/` | Esta carpeta contiene las figuras del TFG. Hay quien prefiere tener una subcarpeta dentro de `tex/`. En mi experiencia las figuras son útiles en otros contextos diferentes del documento de la memoria.  Por ejemplo, la presentación.  En ese caso tener muchas subcarpetas te supondrá mucho más trabajo de búsqueda.  Si quieres ordenarlas por capítulos utiliza un esquema de nombrado. Por ejemplo `intro-fig1.png`, `intro-fig2.eps`, ...
`bib/` | Esta carpeta contiene la bibliografía en formato BibLaTeX.  Hay muchas utilidades que pueden usarse para generar los archivos bib, pero no es mucho problema escribirlos a mano.  Imita los ejemplos.
`sty/` | Esta carpeta contiene los estilos LaTeX para tu TFG. No es necesario que edites nada de esta carpeta. Si todavía no te sientes cómodo con LaTeX no lo leas.

Empieza en `datos-tfg.tex`, edita los datos.  Abre `TFG.tex` y organiza los capítulos 
como corresponda a tu TFG.  Luego ve escribiendo cada capítulo en la carpeta `tex/`.  
Cuando necesites incluir una figura añade el archivo en la carpeta `fig/` y escribe 
en `fig/_FUENTES.txt` de dónde la has sacado.  

Asegúrate de que tienes permiso para usar las figuras en tu TFG. Si es necesario, 
pide permiso por correo electrónico al autor original. Las únicas excepciones a 
esta regla son los documentos técnicos de los fabricantes sin alterar.

## Configuración de Overleaf/LaTeX

Utilizamos `lualatex` para compilarlo y el documento principal es `TFG.tex`. Está probado con la versión de 2021 y 2022 de TeX Live. Puedes cambiar estos parámetros en el `Menu` de Overleaf, arriba a la izquierda.
