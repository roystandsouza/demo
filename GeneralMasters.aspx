<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="GeneralMasters.aspx.vb"
    MasterPageFile="~/Site.Master" Inherits="Health.GeneralMasters" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="main-content-inner">
        <div class="breadcrumbs ace-save-state" id="breadcrumbs">
            <ul class="breadcrumb">
                <li><i class="ace-icon fa fa-home home-icon"></i><a href="Home.aspx"><%=Resources.Resource.Home_title %></a> </li>
                <li class="active"><%=Resources.Resource.GeneralMaster_Title %></li>
            </ul>
            <!-- /.breadcrumb -->
        </div>
        <form class="form-horizontal" id="EntryForm">
            <div class="page-content" id="divContent">
                <div class="page-header">
                    <h1><%=Resources.Resource.GeneralMaster_Title %>
                    </h1>
                </div>
                <!-- /.page-header -->
                <div class="row" id="divEntry">
                    <div class="col-xs-12">
                        <div>
                            <div class="step-pane" data-step="3">
                                <form class="form-horizontal" id="Form2">
                                    <div class="form-group" id="lblGenType">
                                        <label class="col-sm-3 control-label no-padding-right" for="GeneralType">
                                            <%=Resources.Resource.GeneralMasterGeneralType_lbl %><span class="required">*</span>
                                        </label>
                                        <div id="CtrlGenType" class="col-xs-12 col-sm-9">
                                            <div class="input-group col-xs-12 col-sm-6">
                                                <select id="SelLookupType" class="form-control" data-placeholder="<%=Resources.Resource.GeneralMasterSelectGenType_pld %>" style="width: 100%;">
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group" id="lblName">
                                        <label class="col-sm-3  control-label no-padding-right" for="Name">
                                            <%=Resources.Resource.GeneralMasterName_lbl %><span class="required">*</span>
                                        </label>
                                        <div id="CtrlName" class="col-sm-9">
                                            <div class="input-group col-xs-12 col-sm-6">
                                                <input type="text" maxlength="100" id="txtLookupName" name="<%=Resources.Resource.GeneralMasterName_lbl %>" placeholder="Name"
                                                    class="col-xs-12 col-sm-12" />
                                                <input type="hidden" id="txtLookupID" value="0" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label no-padding-right" for="NameRegional">
                                            <%=Resources.Resource.GeneralMasterNameRegional_lbl %>
                                        </label>
                                        <div class="col-sm-9">
                                            <div class="input-group col-xs-12 col-sm-6">
                                                <input type="text" maxlength="100" id="txtLookupNameRegional" name="NameRegional" placeholder="<%=Resources.Resource.GeneralMasterNameRegional_lbl %>"
                                                    class="col-xs-12 col-sm-12" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label no-padding-right" for="MemberCode">
                                            <%=Resources.Resource.GeneralMasterRemark_lbl %>
                                        </label>
                                        <div class="col-sm-9">
                                            <div class="input-group  col-xs-12 col-sm-6 ">
                                                <textarea maxlength="200" rows="3" id="txtRemark" placeholder="<%=Resources.Resource.GeneralMasterRemark_lbl %>" class="col-xs-12 col-sm-12"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="clearfix">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <br />
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label no-padding-right" for="MemberCode">
                                                &nbsp;
                                            </label>
                                            <div class="col-sm-9">
                                                <a id="btnSave" href="javascript:void(0);" class="btn btn-primary"><i class="ace-icon fa fa-floppy-o bigger-120">&nbsp;</i><%=Resources.Resource.BtnSave %></a>
                                                <a id="btnCancel" href="javascript:void(0);" class="btn btn-inverse"><i class="fa fa-times-circle bigger-120">&nbsp;</i><%=Resources.Resource.BtnCancel %></a>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- /.col -->
                </div>

                <div class="row">
                    <div class="col-xs-12">
                        <div class="clearfix">
                            <div class="pull-right tableTools-container">
                            </div>
                        </div>
                        <div class="table-header">
                            <%=Resources.Resource.GeneralMasterGenList_Title %>
                            <%--<a href="javascript:void(0);" id="btnPrint" class="btn btn-white btn-info btn-bold" style="margin: 2px; float: none;">
                                <i class="ace-icon fa fa fa-print bigger-110 grey"></i>Print
                            </a>--%>
                            <a href="javascript:void(0);" id="btnAdd" class="btn btn-white btn-info btn-bold" style="margin: 2px; float: right;">
                                <i class="ace-icon fa fa-plus-circle bigger-120"></i><%=Resources.Resource.BtnAdd %>
                            </a>
                        </div>
                        <div id="DivTable">
                            <table id="DataTable" class="table table-striped table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th><%=Resources.Resource.GeneralMasterGeneralType_lbl %>
                                        </th>
                                        <th class="hidden-480"><%=Resources.Resource.GeneralMasterName_lbl %>
                                        </th>
                                        <th><%=Resources.Resource.GeneralMasterNameRegional_lbl %>
                                        </th>
                                        <th class="hidden-480"><%=Resources.Resource.GeneralMasterRemark_lbl %>
                                        </th>
                                        <th><%=Resources.Resource.BtnAction %></th>
                                    </tr>
                                </thead>
                                <tbody id="DataGrid">
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.page-content -->
        </form>
    </div>
    
    <script type="text/javascript">
        var lsLangCode = 'en-us';
        $(function () {
            waitMe("divContent", true);
            lsLangCode = $("#hdnLangCode").val();
            HideEntry();
            BindLookupType();
            GetData();

            $("#txtLookupName").keyup(function () {
                $("#txtLookupNameRegional").val($(this).val());
            });

            $("#btnAdd").click(function () {
                ShowEntry();
            });

            $("#btnCancel").click(function () {
                HideEntry();
            });

            //$('#btnPrint').click(function () {
            //    $('#DivTable').print();
            //});

        });

        function ShowEntry() {
            $("html, body").animate({ scrollTop: 0 }, "slow");
            $("#divEntry").slideDown("slow");
            $("#btnAdd").fadeOut("slow");
        }

        function GetData() {
            $("#DataTable").dataTable().fnDestroy(); // Destroy the previous table
            $("#DataGrid").empty(); // Empty (remove any DOM elements)
            $.ajax({
                cache: false,
                type: 'POST',
                crossDomain: true,
                url: 'Handlers/LookupCls.ashx?Action=BindLookupTypes&LookupTypeID=0&LookupID=0&Status=0',
                dataType: 'json',
                contentType: "application/json; charset=utf-8",
                success: function (Obj) {
                    if (Obj.response == true) {
                        var loData = Obj.data;
                        if (loData.length > 0) {
                            var ItemsData = "";
                            var OddEven = "";
                            var HealthID = "";
                            for (var i = 0; i < loData.length; i++) {
                                var data = loData[i];
                                if ((i % 2) == true) {
                                    OddEven = "even";
                                }
                                else {
                                    OddEven = "odd";
                                }
                                ItemsData += "<tr class='" + OddEven + "'>" +
                                            "<td align='left'>" +
                                                data["LookupTypeName"] + (data["LookupTypeNameRegional"].trim().length == 0 ? "" : " / " + data["LookupTypeNameRegional"]) +
                                            "</td>" +
                                            "<td align='left'>" +
                                                data["LookupName"] + (data["LookupNameRegional"].trim().length == 0 ? "" : " / " + data["LookupNameRegional"]) +
                                            "</td>" +
                                            "<td align='left'>" +
                                                data["LookupNameRegional"] +
                                            "</td>" +
                                            "<td align='left'>" +
                                                data["Remark"] +
                                            "</td>" +
                                            "<td>" +
                                                "<div class='hidden-sm hidden-xsaction-buttons'>" +
                                                    "<a class='green' href='javascript:Edit(" + data["LookupID"] + ");' style='margin:0 3px;'><i class='ace-icon fa fa-pencil bigger-170'></i></a>" +
                                                    "<a class='red' href='javascript:Active(" + data["LookupID"] + "," + (data["ActiveStatus"] == "True" ? "1" : "0") + ");' style='margin:0 3px;'><i class='ace-icon fa " + (data["ActiveStatus"] == "True" ? "fa-toggle-on" : "fa-toggle-off") + " bigger-170'></i></a>" +
                                                "</div>" +
                                            "</td>" +
                                        "</tr>";
                            }
                            $('#DataGrid').html(ItemsData);
                            $("#DataTable").DataTable({ retrieve: true, destroy: false, "order": [[0, "asc"]] });

                        }
                    }
                    else {
                        NotifyError(Obj.responseText);
                    }
                    waitMe("divContent", false);
                },
                error: function (e) {
                    waitMe("divContent", false);
                    NotifyError(Obj.responseText);
                }
            });

        }

        function Edit(ID) {
            ShowEntry();
            Get(ID);
        }

        function Get(ID) {
            $.ajax({
                type: "POST",
                url: 'Handlers/LookupCls.ashx?Action=BindLookupTypes&LookupTypeID=0&LookupID=' + ID,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (Obj) {
                    if (Obj.response == true) {
                        var loGeneralMstr = Obj.data[0];
                        $("#txtLookupID").val(loGeneralMstr.LookupID);
                        $("#SelLookupType").val(loGeneralMstr.LookupTypeID);
                        $("#SelLookupType").attr('disabled', 'disabled');
                        $("#txtLookupName").val(loGeneralMstr.LookupName);
                        $("#txtLookupNameRegional").val(loGeneralMstr.LookupNameRegional);
                        $("#txtRemark").val(loGeneralMstr.Remark);
                    }
                    else {
                        NotifyError(Obj.responseText);
                    }
                },
                failure: function (response) {
                    NotifyError(response);
                }
            });
        }


        function Active(ID, Status) {
            HideEntry();
            var Message = (Status == 1 ? "<%=Resources.Resource.InActiveConfirm_title %>" : "<%=Resources.Resource.ActiveConfirm_title %>");
            bootbox.confirm(Message, function (result) {
                if (result) {
                    $.ajax({
                        type: "POST",
                        url: "Handlers/LookupCls.ashx?Action=DELETELOOKUP&LookupID=" + ID + "&Status=" + (Status == 1 ? 0 : 1),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (Obj) {
                            if (Obj.response == true) {
                                GetData();
                            }
                            else {
                                NotifyError(Obj.responseText);
                            }
                        },
                        failure: function (response) {
                            NotifyError(response);
                        }
                    });
                }
            });
        }

        function HideEntry() {
            $("#divEntry").slideUp("slow");
            $("#btnAdd").fadeIn("slow");

            $("#txtLookupID").val("0");
            $('#SelLookupType').val("0");
            $("#SelLookupType").removeAttr('disabled');
            $('#txtLookupName').val("");
            $('#txtLookupNameRegional').val("");
            $('#txtRemark').val("");
        }

        function ValidateForm() {

            var Gentype = $('#SelLookupType');
            if (Gentype.val() == "-1") {
                NotifyError("<%=Resources.Resource.GeneralMaster_GeneralType_cv %>");
                $('#SelLookupType').focus();
            }
            else if ($('#txtLookupName').val().trim().length == 0) {
                NotifyError("<%=Resources.Resource.GeneralMaster_GeneralName_cv %>");
                $('#txtLookupName').focus();
            }
            else {
                return true;
            }

        return Success;
    }

    $("#btnSave").click(function () {
        if (ValidateForm() == true) {
            var LookupID = $("#txtLookupID").val();
            var GenTypeID = $('#SelLookupType').val();
            var Name = $('#txtLookupName').val();
            var NameRegional = $('#txtLookupNameRegional').val();
            var Remark = $('#txtRemark').val();
            $.ajax({
                cache: false,
                type: 'POST',
                crossDomain: true,
                url: 'Handlers/LookupCls.ashx?Action=SAVELOOKUP&LookupID=' + LookupID + '&LookupTypeID=' + GenTypeID + '&LookupName=' + Name + '&LookupNameRegional=' + NameRegional + '&Remark=' + Remark,
                dataType: 'json',
                success: function (Obj) {
                    if (Obj.response == true) {
                        HideEntry();
                        GetData();
                    }
                    else {
                        NotifyError(Obj.responseText);
                    }
                },
                failure: function (response) {
                    NotifyError(response.d);
                }
            });
        }
    })

    function BindLookupType() {
        $("#SelLookupType").empty();
        $("#SelLookupType").append("<option value='0' selected><%=Resources.Resource.GeneralMasterGeneralType_pld %></option>");

        $.ajax({
            type: "POST",
            url: "Handlers/LookUpCls.ashx?Action=BindLookupTypesMaster&LookupTypeID=0&Status=1",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (Obj) {
                if (Obj.response == true) {
                    var loRoles = Obj.data;
                    for (var i = 0; i < loRoles.length; i++) {
                        $("#SelLookupType").append("<option value='" + loRoles[i].LookupTypeID + "'>" + (lsLangCode == 'en-us' ? loRoles[i].LookupTypeName : loRoles[i].LookupTypeNameRegional) + "</option>");
                    }
                }
                else {
                    NotifyError(Obj.responseText);
                }
                
            },
            failure: function (response) {
                NotifyError(response);
            }
        });
    }

    </script>
</asp:Content>
