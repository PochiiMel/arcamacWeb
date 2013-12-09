<!--Estableciendo propiedades del bean -->
<jsp:useBean id="analisis" class="clases.nuevoPrestamo" scope="page" />
<jsp:setProperty name="analisis" property="cantidad" param="cantidad" />
<jsp:setProperty name="analisis" property="plazo" param="plazo" />
<jsp:setProperty name="analisis" property="interes" param="interes" />
<br />
<fieldset style="width:500px; border: 1px #0099FF dashed;">
    <legend>Detalle del pr&eacute;stamo</legend>
    <p>
        El pr&eacute;stamo solicitado se desglosar&iacute;a de la siguiente manera: 
    </p>
    <table class="table">
        <tr>
            <td colspan="2"><b>Cuota mensual:</b></td>
            <td colspan="2">
                $ <jsp:getProperty name="analisis" property="cuotas" />
            </td>
        </tr>
        <tr>
            <td><b>Intereses aplicados al pr&eacute;stamo:</b></td>
            <td>
                $ <jsp:getProperty name="analisis" property="intereses_pago" />
            </td>
            <td><b>IVA aplicado: </b></td>
            <td>
                $ <jsp:getProperty name="analisis" property="iva" />
           </td>           
        </tr> 
        <tr>
            <td><b>Cargo por mora diario:</b></td>
            <td>
                $ <jsp:getProperty name="analisis" property="interes_mora" />
            </td>
        </tr>
    </table>     
</fieldset>