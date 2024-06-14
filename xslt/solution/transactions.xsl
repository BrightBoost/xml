<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Financial Transactions</title>
        <style>
          table {
            width: 100%;
            border-collapse: collapse;
          }
          table, th, td {
            border: 1px solid black;
          }
          th, td {
            padding: 8px;
            text-align: left;
          }
          th {
            background-color: #f2f2f2;
          }
          .positive {
            color: green;
          }
          .negative {
            color: red;
          }
        </style>
      </head>
      <body>
        <h2>Financial Transactions</h2>
        <table>
          <tr>
            <th>Date</th>
            <th>Amount</th>
            <th>Description</th>
          </tr>
          <xsl:for-each select="transactions/transaction">
            <tr>
              <td><xsl:value-of select="date"/></td>
              <td>
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="amount &gt; 0">positive</xsl:when>
                    <xsl:otherwise>negative</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:value-of select="amount"/>
              </td>
              <td><xsl:value-of select="description"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
