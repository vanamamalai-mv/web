<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/course">
    <html>
      <head>
        <title>Course Details</title>
        <style>
          body { font-family: Arial, sans-serif; margin: 30px; }
          table { border-collapse: collapse; width: 350px; }
          th, td { border: 1px solid #333; padding: 8px; text-align: left; }
          th { background-color: #4a6fa5; color: white; }
        </style>
      </head>
      <body>
        <h2>Course Details</h2>
        <p><b>Course ID:</b> <xsl:value-of select="@cid"/></p>
        <p><b>Code:</b> <xsl:value-of select="code"/></p>
        <p><b>Name:</b> <xsl:value-of select="name"/></p>
        <p><b>Credits:</b> <xsl:value-of select="credits"/></p>

        <h3>Students</h3>
        <table>
          <tr>
            <th>Student ID</th>
            <th>Register No</th>
          </tr>
          <xsl:for-each select="students/student">
            <tr>
              <td><xsl:value-of select="@sid"/></td>
              <td><xsl:value-of select="regno"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>