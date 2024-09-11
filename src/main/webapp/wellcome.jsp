<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<!DOCTYPE html>
<html>
<head>
  <title><s:text name="hello.message"/></title>
  <s:head/>
  <sx:head/>
</head>

<body>

    <h1>Resumen de factura: </h1>
    <table>
        <tr>
            <td>Asunto:</td>
            <td><s:property value="invoiceBean.subject"/></td>
        </tr>
        <tr>
            <td>Fecha desde:</td>
            <td><s:date name="invoiceBean.dateFrom" format="dd/MM/yyyy"/></td>
        </tr>
        <tr>
            <td>Fecha hasta:</td>
            <td><s:date name="invoiceBean.dateTo" format="dd/MM/yyyy"/></td>
        </tr>
        <tr>
            <td>Importe bruto:</td>
            <td><s:property value="invoiceBean.grossAmount"/></td>
        </tr>
        <tr>
            <td>IVA (21%):</td>
            <td><s:property value="invoiceBean.grossAmount * 0.21"/></td>
        </tr>
        <tr>
            <td>Importe total:</td>
            <td><s:property value="invoiceBean.grossAmount * 1.21"/></td>
        </tr>
    </table>

</body>
</html>