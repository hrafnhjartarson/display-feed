<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/rss/channel">
    <html>
      <head>
        <title><xsl:value-of select="title"/></title>
        <style>
          body {
            font-family: sans-serif;
            margin: 2em;
            background: #f7f7f7;
          }
          img.logo {
            max-height: 60px;
            margin-bottom: 20px;
          }
          h1 {
            color: #222;
            margin-bottom: 1em;
          }
          .item {
            margin-bottom: 2em;
            padding: 1em;
            background: white;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
          }
          .item h2 {
            margin: 0 0 0.5em;
          }
          .item p {
            color: #555;
            font-size: 0.9em;
          }
          .item img {
            max-width: 100%;
            margin-top: 10px;
          }
        </style>
      </head>
      <body>
        <!-- Logo at top -->
        <img src="https://upload.wikimedia.org/wikipedia/commons/4/4a/Logo_2013_Google.png"
             alt="Logo" class="logo" />

        <h1><xsl:value-of select="title"/></h1>

        <xsl:for-each select="item">
          <div class="item">
            <h2><xsl:value-of select="title"/></h2>
            <p><xsl:value-of select="pubDate"/></p>
            <div>
              <xsl:value-of select="description" disable-output-escaping="yes"/>
            </div>
          </div>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
