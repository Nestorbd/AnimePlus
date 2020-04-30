<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : animePlus.xsl
    Created on : 3 de abril de 2020, 16:16
    Author     : Gamer
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  version="1.0">


    <xsl:template match="/">

                <div class="jumbotron jumbotron-fluid">
                    <div class="container">
                        <h1>
                            <img src="IMG/LOGO.png" class="rounded" alt="LOGO"/>
                        </h1>
                    </div>
                </div>
                <div class="container">
                    <table class="table">
                        <thead class="thead">
                            <tr>
                                <th>Total Schools</th>

                            </tr>
                        </thead>
                        <tbody id="Totals-table">
                            <xsl:for-each select="/response/row">
                                <tr>
                                    <td>
                                        <xsl:value-of select="count(row)"/>
                                    </td>

                                </tr>
                            </xsl:for-each>
                        </tbody>
                    </table>
                </div>
                <div class="container">
                    <table class="table">
                        <thead class="thead" >
                            <tr>

                                <th>Schools</th>
                                <th>Numbers of test takers</th>

                            </tr>
                        </thead>
                        <tbody id="Schools">
                            <xsl:for-each select="/response/row/row">
                                <tr>
                                    <td>
                                        <xsl:value-of select="school_name"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="number_of_test_takers"/>
                                    </td>

                                </tr>
                            </xsl:for-each>

                        </tbody>
                    </table>
                </div>

    </xsl:template>

</xsl:stylesheet>