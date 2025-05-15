<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/rss/channel">
    <html>
      <head>
        <title><xsl:value-of select="title"/></title>
        <style>
          body { font-family: sans-serif; margin: 2em; background: #f7f7f7; }
          h1 { color: #222; }
          .item { margin-bottom: 2em; padding: 1em; background: white; border-radius: 8px; box-shadow: 0 2px 4px rgba(0,0,0,0.1); }
          .item img { max-width: 100%; margin-top: 10px; }
        </style>
      </head>
      <body>
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIi0dldOsrHYUZrwZ3bcnSYQ_xn-2fhjeUsg&amp;s" style="max-height: 80px; margin-bottom: 20px;" alt="Logo"/>
        <h1><xsl:value-of select="title"/></h1>
        <xsl:for-each select="item">
          <div class="item">
            <h2><xsl:value-of select="title"/></h2>
            <p><xsl:value-of select="pubDate"/></p>
            <div><xsl:value-of select="description" disable-output-escaping="yes"/></div>
          </div>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
