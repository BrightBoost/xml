### Exercise: Transform Financial Transactions to HTML

#### XML Document (transactions.xml)

Create an XML document representing a list of financial transactions for multiple accounts. Each transaction should include a date, amount, and description.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<transactions>
  <transaction>
    <date>2023-06-01</date>
    <amount>150.75</amount>
    <description>Deposit</description>
  </transaction>
  <transaction>
    <date>2023-06-02</date>
    <amount>-50.25</amount>
    <description>Withdrawal</description>
  </transaction>
  <transaction>
    <date>2023-06-03</date>
    <amount>200.00</amount>
    <description>Transfer</description>
  </transaction>
</transactions>
```

#### Task

1. **Create an XSLT stylesheet (`transactions.xsl`)** to transform the above XML document into an HTML representation.
2. **Include a table in the HTML** that displays the date, amount, and description of each transaction.
3. **Style the table** using basic CSS for better presentation.
4. **Create an HTML file (`transactions.html`)** that references the XML and XSL files and apply the XSLT transformation.
5. **Verify that the XML data is correctly transformed** and displayed in the HTML format by opening the HTML file in a web browser.

