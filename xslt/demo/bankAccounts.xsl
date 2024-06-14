<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Bank Accounts</title>
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
        </style>
      </head>
      <body>
        <h2>Bank Accounts</h2>
        <table>
          <tr>
            <th>Account Number</th>
            <th>Account Holder</th>
            <th>Balance</th>
          </tr>
          <xsl:for-each select="bankAccounts/account">
            <tr>
              <td><xsl:value-of select="accountNumber"/></td>
              <td><xsl:value-of select="accountHolder"/></td>
              <td><xsl:value-of select="balance"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
