<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="Asesorias.Employees" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Formulario Empleados</h1>
            <hr />

            <div class="col-lg-6">
                <div class="form-group">
                    <asp:Label ID="Label17" runat="server" Text="Número de documento:"></asp:Label>
                    <div style="text-align: right">
                        <div class="col-lg-10" style="padding: unset; margin: unset">
                            <asp:TextBox ID="txtDocumentNumber" runat="server" PlaceHolder="Ejemplo 1015449222..." CssClass="form-control"></asp:TextBox>
                        </div>
                        <asp:Button ID="Button1" runat="server" Text="Buscar" CssClass="btn btn-success" Style="background-color: cadetblue; border-color: cadetblue" OnClick="btnSearch_Click" />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" Text="Tipo de Documento:"></asp:Label>
                    <asp:DropDownList ID="DropDownListDocumentType" runat="server" CssClass="form-control"></asp:DropDownList>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label3" runat="server" Text="Nombre Completo:"></asp:Label>
                    <asp:TextBox ID="txtEmployeeName" runat="server" PlaceHolder="Ejemplo Carlos Mario Espinoza..." CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label4" runat="server" Text="No. Contrato Laboral:"></asp:Label>
                    <asp:TextBox ID="txtContractNumber" runat="server" PlaceHolder="Ejemplo 0001..." CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label5" runat="server" Text="Cargo:"></asp:Label>
                    <asp:TextBox ID="txtCargo" runat="server" PlaceHolder="Ejemplo Asistente Administrativo..." CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label6" runat="server" Text="Riesgo Laboral(ARL):"></asp:Label>
                    <asp:TextBox ID="txtARL" runat="server" PlaceHolder="Ejemplo ARL Sura..." CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label7" runat="server" Text="Fecha Inicio de Contrato:"></asp:Label>
                    <asp:TextBox ID="txtStartContractDate" runat="server" PlaceHolder="Ejemplo 01/01/2021..." CssClass="form-control" TextMode="Date"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label8" runat="server" Text="Fecha Final de Contrato:"></asp:Label>
                    <asp:TextBox ID="txtEndingContractDate" runat="server" PlaceHolder="Ejemplo 31/12/2021..." CssClass="form-control" TextMode="Date"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label9" runat="server" Text="Salario:"></asp:Label>
                    <asp:TextBox ID="txtSalaryValue" runat="server" PlaceHolder="Ejemplo 1.200.000..." CssClass="form-control"></asp:TextBox>
                </div>
                <br />
                <asp:Button ID="btnSaveEmployee" runat="server" Text="Crear Empleado Nuevo" CssClass="btn btn-success btn-block" Style="background-color: cadetblue; border-color: cadetblue" />
            </div>
            <div class="col-lg-1">
            </div>
            <div class="col-lg-4">
                <br />
                <div class="form-group">
                    <asp:Label ID="Label10" runat="server" Text="Periodo Laborado:"></asp:Label>
                    <asp:TextBox ID="txtLiquidationPeriod" runat="server" PlaceHolder="Ejemplo 01/2021" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label11" runat="server" Text="Horas total laboradas:"></asp:Label>
                    <asp:TextBox ID="txtTotalWorkHours" runat="server" PlaceHolder="Ejemplo 48..." CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label12" runat="server" Text="Horas Extras (Diurnas):"></asp:Label>
                    <asp:TextBox ID="txtExtraHoursDay" runat="server" PlaceHolder="Ejemplo 31..." CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label14" runat="server" Text="Horas Extras (Nocturnas):"></asp:Label>
                    <asp:TextBox ID="txtExtraHoursNight" runat="server" PlaceHolder="Ejemplo 31..." CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label15" runat="server" Text="Horas Extras (Dominal):"></asp:Label>
                    <asp:TextBox ID="txtExtraHoursSunday" runat="server" PlaceHolder="Ejemplo 31..." CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label16" runat="server" Text="Horas Extras (Festivas):"></asp:Label>
                    <asp:TextBox ID="txtExtraHoursFestive" runat="server" PlaceHolder="Ejemplo 31..." CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label13" runat="server" Text="Descuentos de Nómina:"></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server" PlaceHolder="Ejemplo 1.200.000..." CssClass="form-control"></asp:TextBox>
                </div>
                <asp:Button ID="btnAddDetailsPayroll" runat="server" Text="Agregar Datos" CssClass="btn btn-success btn-block" Style="background-color: cadetblue; border-color: cadetblue" />
            </div>
        </div>
        <div class="container">
            <hr />
            <asp:Button ID="btnCalculateContributions" runat="server" Text="Calcular Aportes Seguridad Social" CssClass="btn btn-success btn-block" Style="background-color: cadetblue; border-color: cadetblue" />
            <br />
            <table class="table table-striped">
                <tr>
                    <th>Aporte</th>
                    <th>% Empleador</th>
                    <th>Valor</th>
                    <th>% Trabajador</th>
                    <th>Valor</th>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>

            </table>
            <br />
            <hr />
            <asp:Button ID="btnLiquidatePayroll" runat="server" Text="Calcular Liquidación de Nómina" CssClass="btn btn-success btn-block" Style="background-color: cadetblue; border-color: cadetblue" />
            <br />
        </div>
    </form>
</body>
</html>
