<xsl:stylesheet version = '1.0'
                xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
    <xsl:template match="requests">
        <xsl:for-each select="request">
            <xsl:if test="@paid='true'">
                <DIV style="color:black; font-weight:bold; font-size:20; display:inline">
                    <xsl:text>ID заявки: </xsl:text>
                </DIV>
                <DIV style="color:blue;font-weight:bold; font-size:20; display:inline">
                    <xsl:value-of select="@id"/>
                </DIV>
                <xsl:for-each select="person">
                    <DIV style="color:black; font-size:20">
                        <xsl:text>Идентификационный код: </xsl:text>
                    </DIV>
                    <DIV style="color:blue;font-weight:bold; font-size:20; display:inline">
                        <xsl:value-of select="@identification_number"/>
                    </DIV>
                    <DIV style="color:black; font-size:20">
                        <xsl:text>ФИО: </xsl:text>
                    </DIV>
                    <DIV style="color:blue;font-weight:bold; font-size:20; display:inline">
                        <xsl:value-of select="surname"/>
                    </DIV>
                    <xsl:text> </xsl:text>
                    <DIV style="color:blue;font-weight:bold; font-size:20; display:inline">
                        <xsl:value-of select="first_name"/>
                    </DIV>
                    <xsl:text> </xsl:text>
                    <DIV style="color:blue;font-weight:bold; font-size:20; display:inline">
                        <xsl:value-of select="last_name"/>
                    </DIV>
                    <DIV style="color:black; font-size:20">
                        <xsl:text>Адрес: </xsl:text>
                    </DIV>
                    <DIV style="color:blue;font-weight:bold; font-size:20">
                        <xsl:value-of select="address"/>
                    </DIV>
                    <DIV style="color:black; font-size:20">
                        <xsl:text>Национальность: </xsl:text>
                    </DIV>
                    <DIV style="color:blue;font-weight:bold; font-size:20; display:inline">
                        <xsl:value-of select="nationality"/>
                    </DIV>
                    <DIV style="color:black; font-size:20">
                        <xsl:text>Пол:  </xsl:text>
                    </DIV>
                    <DIV style="color:blue;font-weight:bold; font-size:20; display:inline">
                        <xsl:value-of select="gender"/>
                    </DIV>
                    <DIV style="color:black; font-size:20">
                        <xsl:text>Дата рождения:  </xsl:text>
                    </DIV>
                    <DIV style="color:blue;font-weight:bold; font-size:20; display:inline">
                        <xsl:value-of select="date"/>
                    </DIV>
                </xsl:for-each>
                <xsl:for-each select="passport">
                    <DIV style="color:black; font-size:20;">
                        <xsl:text>Номер паспорта: </xsl:text>
                    </DIV>
                    <DIV style="color:blue;font-weight:bold; font-size:20; display:inline">
                        <xsl:value-of select="@serial_number"/>
                    </DIV>
                    <DIV style="color:black; font-size:20;">
                        <xsl:text>Годен до: </xsl:text>
                    </DIV>
                    <DIV style="color:blue;font-weight:bold; font-size:20; display:inline">
                        <xsl:value-of select="validity"/>
                    </DIV>
                    <DIV style="color:black; font-size:20;">
                        <xsl:text>Выдан: </xsl:text>
                    </DIV>
                    <DIV style="color:blue;font-weight:bold; font-size:20; display:inline">
                        <xsl:value-of select="issued_by"/>
                    </DIV>
                    <DIV style="color:black; font-size:20;">
                        <xsl:text>Дата видачи: </xsl:text>
                    </DIV>
                    <DIV style="color:blue;font-weight:bold; font-size:20; display:inline">
                        <xsl:value-of select="data"/>
                    </DIV>
                </xsl:for-each>
                <xsl:for-each select="passport">
                    <DIV style="color:black; font-size:20;">
                        <xsl:text>Номер паспорта: </xsl:text>
                    </DIV>
                    <DIV style="color:blue;font-weight:bold; font-size:20; display:inline">
                        <xsl:value-of select="@serial_number"/>
                    </DIV>
                    <DIV style="color:black; font-size:20;">
                        <xsl:text>Годен до: </xsl:text>
                    </DIV>
                    <DIV style="color:blue;font-weight:bold; font-size:20; display:inline">
                        <xsl:value-of select="validity"/>
                    </DIV>
                    <DIV style="color:black; font-size:20;">
                        <xsl:text>Выдан: </xsl:text>
                    </DIV>
                    <DIV style="color:blue;font-weight:bold; font-size:20; display:inline">
                        <xsl:value-of select="issued_by"/>
                    </DIV>
                    <DIV style="color:black; font-size:20;">
                        <xsl:text>Дата видачи: </xsl:text>
                    </DIV>
                    <DIV style="color:blue;font-weight:bold; font-size:20; display:inline">
                        <xsl:value-of select="data"/>
                    </DIV>
                </xsl:for-each>
                <xsl:for-each select="worker">
                    <DIV style="color:black; font-size:20;">
                        <xsl:text>ID сотрудника: </xsl:text>
                    </DIV>
                    <DIV style="color:blue;font-weight:bold; font-size:20; display:inline">
                        <xsl:value-of select="@worker_id"/>
                    </DIV>
                    <DIV style="color:black; font-size:20;">
                        <xsl:text>Должность сотрудника: </xsl:text>
                    </DIV>
                    <DIV style="color:blue;font-weight:bold; font-size:20; display:inline">
                        <xsl:value-of select="post"/>
                    </DIV>
                </xsl:for-each>
                <hr color="red"/>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>