<?xml version = "1.0" encoding = "UTF-8"?>
<xsl:stylesheet version = "1.0"
   xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">  

   <xsl:template match = "/">
      <html>
         <body>
            <h2 align="center">Reviews</h2>
            <table align="center" border = "1" style="padding: 2px;
         border: 2px ;
         background-color: rgba(0,0,0,0);
         font-family=wilmina;
      height:100%;
      width:50%;">
               <tr bgcolor = "#9acd32">
                  <th>Name</th>
                  <th>Rating</th>
                  <th>Comment</th>
                  
               </tr>
               <xsl:for-each select = "REVIEWS/R">
                  <tr>
                     <td> <xsl:value-of select = "NAME"/></td>
                     <td><xsl:value-of select = "RATING"/>Stars</td>
                     <td><xsl:value-of select = "COMMENT"/></td>
                     
                  </tr>
               </xsl:for-each>
            </table>
            <h2 align="center">Reviews with 3+ ratings</h2>
            <table align="center" border = "1" style="padding: 2px;
         border: 2px ;
         background-color: rgba(0,0,0,0);
         font-family=wilmina;
      height:100%;
      width:50%;">
               <tr bgcolor = "#9acd32">
                  <th>Name</th>
                  <th>Rating</th>
                  <th>Comment</th>
                  
               </tr>
               <xsl:for-each select = "REVIEWS/R">
                  <xsl:if test="RATING > 3">
                  <tr>
                     <td> <xsl:value-of select = "NAME"/></td>
                     <td><xsl:value-of select = "RATING"/>Stars</td>
                     <td><xsl:value-of select = "COMMENT"/></td>
                     
                  </tr>
               </xsl:if>
               </xsl:for-each>
            </table>

            <h2 align="center">Reviews with 3 or less Stars</h2>
            <table align="center" border = "1" style="padding: 2px;
         border: 2px ;
         background-color: rgba(0,0,0,0);
         font-family=wilmina;
      height:100%;
      width:50%;">
               <tr bgcolor = "#9acd32">
                  <th>Name</th>
                  <th>Rating</th>
                  <th>Comment</th>
                  
               </tr>
               <xsl:for-each select = "REVIEWS/R">
                  <xsl:if test="RATING &lt; 4">
                  <tr>
                     <td> <xsl:value-of select = "NAME"/></td>
                     <td><xsl:value-of select = "RATING"/>Stars</td>
                     <td><xsl:value-of select = "COMMENT"/></td>
                     
                  </tr>
               </xsl:if>
               </xsl:for-each>
            </table>

         </body>
      </html>
   </xsl:template>

</xsl:stylesheet>