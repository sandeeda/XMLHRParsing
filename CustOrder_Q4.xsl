<?xml version="1.0" encoding="UTF-8" ?>
<!-- /***************************************************************************** 
* ITC5202 – Project1 * We declare that this assignment is our own work in accordance with Humber Academic * Policy. 
* No part of this assignment has been copied manually or electronically from any other * source (including web sites) or distributed to other students. * 
*	Names: Sandeep Das, Rohan Vasudev Patel 
*	Student ID: N01472825 , N01469929
*	Date: 28th Feb 2022 
* * **************************
 -->
<xsl:stylesheet version="1.0"
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:template match="/">
      <html>
         <head>
            <title>Companies</title>
         </head>
         <body>  
         <h1>Customer</h1> 
               <table border="1" >
                  <tr>
                     <th>Customer Id</th>
                     <th>Company Name</th>
                     <th>Contact Name</th>
                     <th>Contact Title</th>
                     <th>Phone</th>
                     <th>Fax</th>
                     <th>Address</th>
                  </tr>
                  <xsl:for-each select="/Root/Customers/Customer">      
                     <tr>
                        <td><xsl:value-of select="./@CustomerID" /></td>
                        <td><xsl:value-of select="CompanyName" /></td>
                        <td><xsl:value-of select="ContactName" /></td>
                        <td><xsl:value-of select="ContactTitle" /></td>
                        <td><xsl:value-of select="Phone" /></td>
                        <td><xsl:value-of select="Fax" /></td>     
                        <xsl:for-each select="FullAddress"> 
                           <td><xsl:value-of select="Address" /><br/><xsl:value-of select="City" /><br/><xsl:value-of select="Region" /><br/><xsl:value-of select="PostalCode" /><br/><xsl:value-of select="Country" /></td>    
                        </xsl:for-each>
                    </tr>
                  </xsl:for-each>
               </table>
          </body>
      </html>
   </xsl:template>

</xsl:stylesheet>
