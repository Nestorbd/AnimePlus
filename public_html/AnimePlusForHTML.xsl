<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : animePlus.xsl
    Created on : 3 de abril de 2020, 16:16
    Author     : Gamer
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"   xmlns:x="https://www.AnimePlus.com" version="1.0">
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">

        <html lang="en">
            <head>
                <title>AnimePlus</title>
                <!-- Required meta tags -->


                <!-- Bootstrap CSS -->
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
                <!-- Optional JavaScript -->
                <!-- jQuery first, then Popper.js, then Bootstrap JS -->
                <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

                <link rel="icon" href="IMG/LOGO2.png" type="image/x-icon"/>
                <link rel="stylesheet" href="CSS/style.css"/>

            </head>
            <body>
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
                            <th>Animes Totales</th>
                            <th>TV</th>
                            <th>Movies</th>
                            <th>ONA</th>
                            <th>OAV</th>
                            <th>Mangas</th>
                            <th>Specials</th>
                            <th>Omnibus</th>
                            <th>Anthologies</th>
                        </tr>
                    </thead>
                    <tbody id="Totals-table">
                        <xsl:for-each select="/x:animeList">
                            <tr>
                                <td>
                                    <xsl:value-of select="count(x:item)"/>
                                </td>
                                <td>
                                    <xsl:value-of select="count(x:item/x:type[text()='TV'])"/>
                                </td>
                                <td>
                                    <xsl:value-of select="count(x:item/x:type[text()='movie'])"/>
                                </td>
                                <td>
                                    <xsl:value-of select="count(x:item/x:type[text()='ONA'])"/>
                                </td>
                                <td>
                                    <xsl:value-of select="count(x:item/x:type[text()='OAV'])"/>
                                </td>
                                <td>
                                    <xsl:value-of select="count(x:item/x:type[text()='manga'])"/>
                                </td>
                                <td>
                                    <xsl:value-of select="count(x:item/x:type[text()='special'])"/>
                                </td>
                                <td>
                                    <xsl:value-of select="count(x:item/x:type[text()='omnibus'])"/>
                                </td>
                                <td>
                                    <xsl:value-of select="count(x:item/x:type[text()='anthology'])"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
                </div>
<div class="container">
                <table class="table">
                    <thead class="thead">
                        <tr>
                            <th>Nombre</th>
                            <th>Formato</th>
                            <th>Fecha</th>
                        </tr>
                    </thead>
                    <tbody id="anime-table">
                        <xsl:for-each select="//x:item">
                            <tr>
                                <td>
                                    <xsl:value-of select="x:name"/>
                                </td>
                                <td>
                                    <xsl:value-of select="x:type"/>
                                </td>
                                <td>
                                    <xsl:value-of select="x:date"/>
                                </td>
                            </tr>
                        </xsl:for-each>

                    </tbody>
                </table>
</div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>