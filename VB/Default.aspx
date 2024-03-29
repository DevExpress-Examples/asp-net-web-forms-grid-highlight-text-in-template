<%@ Page Language="VB" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASPxGridView - Search Panel - How to highlight the text placed inside a DataItem template</title>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxGridView ID="gridView" runat="server" AutoGenerateColumns="False" DataSourceID="ads" KeyFieldName="CategoryID" ClientInstanceName="gridView">
            <SettingsSearchPanel Visible="true" />
            <Columns>
                <dx:GridViewDataTextColumn FieldName="CategoryID" />
                <dx:GridViewDataTextColumn FieldName="CategoryName" >
                    <DataItemTemplate>
                        <dx:ASPxImage ID="ASPxImage1" runat="server" ShowLoadingImage="true" Width="50" ImageUrl='<%# string.Format("~/Images/{0}.jpg", Eval("CategoryID")) %>' />
                        <dx:ASPxLabel ID="label" runat="server" Text='<%# Eval("CategoryName") %>' EncodeHtml="false" OnDataBound="label_DataBound" />
                    </DataItemTemplate>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Description" />
            </Columns>
        </dx:ASPxGridView>
        <asp:AccessDataSource ID="ads" runat="server" DataFile="~/App_Data/nwind.mdb" SelectCommand="SELECT * FROM [Categories]"></asp:AccessDataSource>
    </form>
</body>
</html>
