<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
	private void Page_Load( object sender , System . EventArgs e )
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	{
		Response . Cache . SetCacheability( HttpCacheability . NoCache );
		Response . Buffer = true;
	}
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	string dsb__BLANK( String string__HEIGHT )
	{
		string string__RETURN_THIS = null;
		string__RETURN_THIS = string__RETURN_THIS + "<tr>";
		string__RETURN_THIS = string__RETURN_THIS + "<td class='blank' colspan='2' style='font-size:" + string__HEIGHT + ";'>";
		string__RETURN_THIS = string__RETURN_THIS + "&nbsp;";
		string__RETURN_THIS = string__RETURN_THIS + "</td>";
		string__RETURN_THIS = string__RETURN_THIS + "</tr>";
		return string__RETURN_THIS;
	}
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	string renamethis__1( String string__LABEL , String string__ID , String string__EMAIL_ADDRESS )
	{
		string string__RETURN_THIS = null;
		string__RETURN_THIS = string__RETURN_THIS + "<tr>";
		string__RETURN_THIS = string__RETURN_THIS + "<td class='unselected' id='string__" + string__ID + "__label' name='string__" + string__ID + "__label' onclick='dsb__TOGGLE_BUTTON(\"" + string__ID + "\");' style='width:260px;'>";
		string__RETURN_THIS = string__RETURN_THIS + string__LABEL;
		string__RETURN_THIS = string__RETURN_THIS + "</td>";
		string__RETURN_THIS = string__RETURN_THIS + "<td class='unselected' id='string__" + string__ID + "__email_address' name='string__" + string__ID + "__email_address' onclick='dsb__TOGGLE_BUTTON(\"" + string__ID + "\");' style='width:490px;'>";
		string__RETURN_THIS = string__RETURN_THIS + string__EMAIL_ADDRESS;
		string__RETURN_THIS = string__RETURN_THIS + "</td>";
		string__RETURN_THIS = string__RETURN_THIS + "</tr>";
		return string__RETURN_THIS;
	}
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	string renamethis__2( String string__LEFT_SIDE )
	{
		string string__RETURN_THIS = null;
		string__RETURN_THIS = string__RETURN_THIS + "<tr>";
		string__RETURN_THIS = string__RETURN_THIS + "<td class='title1' colspan='2'>";
		string__RETURN_THIS = string__RETURN_THIS + string__LEFT_SIDE;
		string__RETURN_THIS = string__RETURN_THIS + "</td>";
		string__RETURN_THIS = string__RETURN_THIS + "</tr>";
		return string__RETURN_THIS;
	}
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<script type="text/javascript">
		function dsb__TOGGLE_BUTTON(string__ID) {
			var element__THIS__LABEL = document.getElementById("string__" + string__ID + "__label");
			var element__THIS__EMAIL_ADDRESS = document.getElementById("string__" + string__ID + "__email_address");
			var string__CLASSNAME = element__THIS__LABEL.className;
			switch (string__CLASSNAME) {
				case "selected":
					element__THIS__LABEL.className = "unselected";
					element__THIS__EMAIL_ADDRESS.className = "unselected";
					break;
				case "unselected":
					element__THIS__LABEL.className = "selected";
					element__THIS__EMAIL_ADDRESS.className = "selected";
					break;
			}
		}
	</script>
	<style type="text/css">
		table
		{
			border-collapse: collapse;
			border: none;
			font-weight: bold;
			width: 750px;
		}
		td.blank
		{
			background-color: transparent;
			border: none;
			font-family: Arial, Sans-Serif;
			padding: 0px;
		}
		td.selected
		{
			background-color: #aa0000;
			border: 1px solid #dddddd;
			color: #ffff00;
			cursor: pointer;
			font-family: Arial, Sans-Serif;
			font-size: 14pt;
			padding: 6px;
		}
		td.unselected
		{
			background-color: #ffffff;
			border: 1px solid #dddddd;
			color: #000000;
			cursor: pointer;
			font-family: Arial, Sans-Serif;
			font-size: 11pt;
			padding: 6px;
		}
		td.title1
		{
			background-color: #ffffdd;
			border: 3px solid #cccccc;
			color: #0000aa;
			font-family: Arial, Sans-Serif;
			font-size: 12pt;
			font-weight: bold;
			padding: 6px;
		}
	</style>
	<title></title>
</head>
<body>
	<center>
		<form id="form1" runat="server">
		<table>
			<%Response . Write( renamethis__2( "Faculty" ) );%>
			<%Response . Write( renamethis__1( "All Faculty" , "FACULTY__ALL_FACULTY" , "faculty@neurology.wisc.edu" ) );%>
			<%Response . Write( renamethis__1( "CSC Faculty" , "FACULTY__CSC_FACULTY" , "cscfaculty@neurology.wisc.edu" ) );%>
			<%Response . Write( renamethis__1( "MSC Faculty" , "FACULTY__MSC_FACULTY" , "mscfaculty@neurology.wisc.edu" ) );%>
			<%Response . Write( renamethis__1( "South Park Street Faculty" , "FACULTY__SOUTH_PARK_STREET_FACULTY" , "southpark@neurology.wisc.edu" ) );%>
			<%Response . Write( renamethis__1( "UWMF Providers" , "FACULTY__UWMF_PROVIDERS" , "uwmf@neurology.wisc.edu" ) );%>
			<%Response . Write( dsb__BLANK( "20px" ) );%>
			<%Response . Write( renamethis__2( "Faculty and Staff" ) );%>
			<%Response . Write( renamethis__1( "All Faculty and Staff" , "FACULTY_AND_STAFF__ALL_FACULTY_AND_STAFF" , "everyone@neurology.wisc.edu" ) );%>
			<%Response . Write( renamethis__1( "MFCB Faculty and Staff" , "FACULTY_AND_STAFF__MFCB_FACULTY_AND_STAFF" , "mfcb@neurology.wisc.edu" ) );%>
			<%Response . Write( renamethis__1( "Researchers" , "FACULTY_AND_STAFF__RESEARCHERS" , "researchers@neurology.wisc.edu" ) );%>
			<%Response . Write( renamethis__1( "Residents" , "FACULTY_AND_STAFF__RESIDENTS" , "residents@neurology.wisc.edu" ) );%>
			<%Response . Write( dsb__BLANK( "20px" ) );%>
			<%Response . Write( renamethis__2( "Administration" ) );%>
			<%Response . Write( renamethis__1( "Administration Staff" , "ADMINISTRATION__ADMINISTRATION_STAFF" , "admin@neurology.wisc.edu" ) );%>
			<%Response . Write( renamethis__1( "Aspirus EEGs" , "ADMINISTRATION__ASPIRUS_EEGS" , "aspiruseeg@neurology.wisc.edu" ) );%>
			<%Response . Write( renamethis__1( "Employment Applications" , "ADMINISTRATION__EMPLOYMENT_APPLICATIONS" , "applications@neurology.wisc.edu" ) );%>
			<%Response . Write( renamethis__1( "Employment Verification" , "ADMINISTRATION__EMPLOYMENT_VERIFICATION" , "employmentverification@neurology.wisc.edu" ) );%>
			<%Response . Write( dsb__BLANK( "20px" ) );%>
			<%Response . Write( renamethis__2( "Neuroscience Mailing List" ) );%>
			<%Response . Write( renamethis__1( "Faculty and Researchers" , "NEUROSCIENCE_MAILING_LIST__FACULTY_AND_RESEARCHERS" , "nsc@neuroscience.wisc.edu" ) );%>
			<%Response . Write( renamethis__1( "Undergraduates" , "NEUROSCIENCE_MAILING_LIST__UNDERGRADUATES" , "nsc@neuroscience.wisc.edu" ) );%>
			<%Response . Write( dsb__BLANK( "20px" ) );%>
			<%Response . Write( renamethis__2( "Neuropsychology Study Groups" ) );%>
			<%Response . Write( renamethis__1( "Camp Cope–A–Lot" , "NEUROPSYCHOLOGY_STUDY_GROUPS__CAMP_COPE_A_LOT" , "nps__ccal@neurology.wisc.edu" ) );%>
			<%Response . Write( renamethis__1( "Pediatric EEG" , "NEUROPSYCHOLOGY_STUDY_GROUPS__PEDIATRIC_EEG" , "nps__peds@neurology.wisc.edu" ) );%>
		</table>
		</form>
	</center>
</body>
</html>
