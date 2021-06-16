<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html"/>
  <xsl:template match="/">
  <html>
  <head>
  <link rel="stylesheet" type="text/css" href="estilos.css"/>
  </head>
  <body>
  <header><h1>LA MEJOR MÚSICA</h1></header>
  <div class="caja1">
  <table border="1">
  <tr bgcolor="#a0a0ff">
  <th colspan="2">Generos musicales</th>
  </tr>
  <xsl:for-each select = "//genero">
  <tr>
   <td rowspan="3"><img src="imagenes/{foto}"/></td>
  <td><xsl:value-of select = "nombre"/></td>
  </tr>
  <tr>
  <td><xsl:value-of select = "@origen"/>
  </td>
  </tr>
  <tr>
  <td>
  <a href="{enlace}" target="_blank">enlace ...</a>
  </td>
  </tr>
  </xsl:for-each>
  </table>
  </div>
  <div class="caja2" >
  <table border="1">
  <tr bgcolor="#a0a0ff">
  <th colspan="5">Estados de animo</th>
  </tr>
  <xsl:for-each select = "//estado">
  <tr>
   <td rowspan="1"><img src="imagenes/{foto}"/></td>
  <td><xsl:value-of select = "nombre"/></td>
  </tr>
  <tr>
  </tr>
  </xsl:for-each>
  </table>
  </div>
  </body>
  </html>
  </xsl:template>
</xsl:stylesheet>
