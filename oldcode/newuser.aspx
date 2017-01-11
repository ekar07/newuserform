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
	string renamethis__1( String string__LEFT_SIDE , String string__RIGHT_SIDE )
	{
		string string__RETURN_THIS = null;
		string__RETURN_THIS = string__RETURN_THIS + "<tr>";
		string__RETURN_THIS = string__RETURN_THIS + "<td class='leftside'>";
		string__RETURN_THIS = string__RETURN_THIS + string__LEFT_SIDE;
		string__RETURN_THIS = string__RETURN_THIS + "</td>";
		string__RETURN_THIS = string__RETURN_THIS + "<td class='rightside'>";
		string__RETURN_THIS = string__RETURN_THIS + "<input class='text' id='" + string__RIGHT_SIDE + "' name='" + string__RIGHT_SIDE + "' />";
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
	string renamethis__3( String string__LEFT_SIDE )
	{
		string string__RETURN_THIS = null;
		string__RETURN_THIS = string__RETURN_THIS + "<tr>";
		string__RETURN_THIS = string__RETURN_THIS + "<td class='title2' colspan='2'>";
		string__RETURN_THIS = string__RETURN_THIS + string__LEFT_SIDE;
		string__RETURN_THIS = string__RETURN_THIS + "</td>";
		string__RETURN_THIS = string__RETURN_THIS + "</tr>";
		return string__RETURN_THIS;
	}
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	string blank__4()
	{
		string string__RETURN_THIS = null;
		string__RETURN_THIS = string__RETURN_THIS + "<tr>";
		string__RETURN_THIS = string__RETURN_THIS + "<td class='blank1' colspan='2'>";
		string__RETURN_THIS = string__RETURN_THIS + "&nbsp;";
		string__RETURN_THIS = string__RETURN_THIS + "</td>";
		string__RETURN_THIS = string__RETURN_THIS + "</tr>";
		return string__RETURN_THIS;
	}
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	string blank__5()
	{
		string string__RETURN_THIS = null;
		string__RETURN_THIS = string__RETURN_THIS + "<tr>";
		string__RETURN_THIS = string__RETURN_THIS + "<td class='blank2' colspan='2'>";
		string__RETURN_THIS = string__RETURN_THIS + "&nbsp;";
		string__RETURN_THIS = string__RETURN_THIS + "</td>";
		string__RETURN_THIS = string__RETURN_THIS + "</tr>";
		return string__RETURN_THIS;
	}
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	string renamethis__6( String string__LEFT_SIDE , String string__ID , String string__OPTION_LIST )
	{
		string__OPTION_LIST = "!" + string__OPTION_LIST;
		char[] char__SPLIT_DELIMITER = { '!' };
		String[] array__OPTION_LIST = string__OPTION_LIST . Split( char__SPLIT_DELIMITER );

		string string__RETURN_THIS = null;
		string__RETURN_THIS = string__RETURN_THIS + "<tr>";
		string__RETURN_THIS = string__RETURN_THIS + "<td class='leftside'>";
		string__RETURN_THIS = string__RETURN_THIS + string__LEFT_SIDE;
		string__RETURN_THIS = string__RETURN_THIS + "</td>";
		string__RETURN_THIS = string__RETURN_THIS + "<td class='rightside'>";
		string__RETURN_THIS = string__RETURN_THIS + "<select id='" + string__ID + "' name='" + string__ID + "' />";
		foreach( String string__OPTION in array__OPTION_LIST )
		{
			string__RETURN_THIS = string__RETURN_THIS + "<OPTION   VALUE='" + string__OPTION + "'>" + string__OPTION + "</option>";
		}
		string__RETURN_THIS = string__RETURN_THIS + "</select>";
		string__RETURN_THIS = string__RETURN_THIS + "</td>";
		string__RETURN_THIS = string__RETURN_THIS + "</tr>";
		return string__RETURN_THIS;
	}
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	string renamethis__7( String string__ID )
	{
		string string__RETURN_THIS = null;
		string__RETURN_THIS = string__RETURN_THIS + "<tr>";
		string__RETURN_THIS = string__RETURN_THIS + "<td class='textarea'>";
		string__RETURN_THIS = string__RETURN_THIS + "<textarea id='" + string__ID + "' name='" + string__ID + "'></textarea>";
		string__RETURN_THIS = string__RETURN_THIS + "</td>";
		string__RETURN_THIS = string__RETURN_THIS + "</tr>";
		return string__RETURN_THIS;
	}
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	string renamethis__8( String string__LABEL , String string__ID , String string__EMAIL_ADDRESS )
	{
		string string__RETURN_THIS = null;
		string__RETURN_THIS = string__RETURN_THIS + "<tr>";
		string__RETURN_THIS = string__RETURN_THIS + "<td class='unselected' id='string__" + string__ID + "__label' name='string__" + string__ID + "__label' onclick='dsb__TOGGLE_BUTTON(\"" + string__ID + "\");' style='width:230px;'>";
		string__RETURN_THIS = string__RETURN_THIS + string__LABEL;
		string__RETURN_THIS = string__RETURN_THIS + "</td>";
		string__RETURN_THIS = string__RETURN_THIS + "<td class='unselected' id='string__" + string__ID + "__email_address' name='string__" + string__ID + "__email_address' onclick='dsb__TOGGLE_BUTTON(\"" + string__ID + "\");' style='width:670px;'>";
		string__RETURN_THIS = string__RETURN_THIS + string__EMAIL_ADDRESS;
		string__RETURN_THIS = string__RETURN_THIS + "<input id='hidden__" + string__ID + "' name='hidden__" + string__ID + "' style='display:none;' value='false' />";
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
			var element__THIS__EMAIL_ADDRESS = document.getElementById("string__" + string__ID + "__email_address");
			var element__THIS__INPUT = document.getElementById("hidden__" + string__ID);
			var element__THIS__LABEL = document.getElementById("string__" + string__ID + "__label");
			var string__CLASSNAME = element__THIS__LABEL.className;
			switch (string__CLASSNAME) {
				case "selected":
					element__THIS__EMAIL_ADDRESS.className = "unselected";
					element__THIS__INPUT.value = "false";
					element__THIS__LABEL.className = "unselected";
					break;
				case "unselected":
					element__THIS__EMAIL_ADDRESS.className = "selected";
					element__THIS__INPUT.value = "true";
					element__THIS__LABEL.className = "selected";
					break;
			}
		}
	</script>
	<style type="text/css">
		input.button
		{
			font-family: Arial, Sans-Serif;
			font-size: 14pt;
			font-weight: bold;
			padding: 6px;
			width: 250px;
		}
		input.text
		{
			background-color: transparent;
			border: none;
			color: #cc0000;
			font-family: Arial, Sans-Serif;
			font-size: 14pt;
			font-weight: bold;
			padding: 0px;
			width: 100%;
		}
		select
		{
			background-color: #ffffdd;
			color: #cc0000;
			font-size: 14pt;
			font-weight: bold;
			padding: 0px;
			width: 99%;
		}
		table
		{
			border-collapse: collapse;
			border: none;
			font-family: Arial, Sans-Serif;
			font-size: 12pt;
			font-weight: bold;
			width: 960px;
		}
		td.blank
		{
			background-color: transparent;
			border: none;
			font-family: Arial, Sans-Serif;
			padding: 0px;
		}
		td.blank1
		{
			background-color: transparent;
			border: none;
			font-family: Arial, Sans-Serif;
			font-size: 36px;
			padding: 0px;
		}
		td.blank2
		{
			background-color: transparent;
			border: none;
			font-family: Arial, Sans-Serif;
			font-size: 6px;
			padding: 0px;
		}
		td.leftside
		{
			background-color: #ffffff;
			border: 1px solid #ddddff;
			padding: 6px;
			text-align: left;
			width: 360px;
		}
		td.rightside
		{
			background-color: #ffffdd;
			border: 1px solid #ddddff;
			height: 34px;
			padding: 0px 0px 3px 6px;
			text-align: left;
			width: 600px;
		}
		td.selected
		{
			background-color: #aa0000;
			border: 1px solid #dddddd;
			color: #ffff00;
			cursor: pointer;
			font-family: Arial, Sans-Serif;
			padding: 6px;
			text-align: left;
		}
		td.unselected
		{
			background-color: #ffffff;
			border: 1px solid #dddddd;
			color: #000000;
			cursor: pointer;
			font-family: Arial, Sans-Serif;
			padding: 6px;
			text-align: left;
		}
		td.title1
		{
			background-color: #ddddff;
			border: 3px solid #bbbbdd;
			font-family: Arial, Sans-Serif;
			font-size: 14pt;
			font-weight: bold;
			padding: 9px;
			text-align: left;
		}
		td.title2
		{
			background-color: #ffdddd;
			border: 6px solid #ccaaaa;
			font-family: Arial, Sans-Serif;
			font-size: 18pt;
			font-weight: bold;
			padding: 9px;
			text-align: center;
		}
		td.textarea
		{
			background-color: #ffffdd;
			padding: 0px;
			text-align: center;
			width: 100%;
		}
		textarea
		{
			background-color: #ffffdd;
			border: 1px solid #ddddff;
			color: #cc0000;
			font-family: Arial, Sans-Serif;
			font-size: 14pt;
			font-weight: bold;
			height: 150px;
			padding: 6px;
			width: 98%;
		}
	</style>
	<title></title>
</head>
<body>
	<center>
		<form action="./newuser__submit.aspx" id="form1" runat="server" method="post">
		<table>
			<!-- [BEGIN] New User Information -->
			<%Response . Write( renamethis__3( "New User Information" ) );%>
			<!-- -->
			<%Response . Write( blank__5() );%>
			<!-- -->
			<%Response . Write( renamethis__2( "Name" ) );%>
			<%Response . Write( renamethis__1( "First Name" , "input__FIRST_NAME" ) );%>
			<%Response . Write( renamethis__1( "Middle Name" , "input__MIDDLE_NAME" ) );%>
			<%Response . Write( renamethis__1( "Last Name" , "input__LAST_NAME" ) );%>
			<!-- -->
			<%Response . Write( blank__5() );%>
			<!-- -->
			<%Response . Write( renamethis__2( "Contact Information" ) );%>
			<%Response . Write( renamethis__1( "Best Email Address <i>(e.g. personal, school)</i>" , "input__BEST_EMAIL_ADDRESS" ) );%>
			<%Response . Write( renamethis__1( "Best Phone Number <i>(e.g. home, cell)</i>" , "input__BEST_PHONE_NUMBER" ) );%>
			<%Response . Write( renamethis__1( "Work Email Address" , "input__WORK_EMAIL_ADDRESS" ) );%>
			<%Response . Write( renamethis__1( "Work Phone Number" , "input__WORK_PHONE_NUMBER" ) );%>
			<%Response . Write( renamethis__1( "Work Location / Address" , "input__WORK_LOCATION" ) );%>
			<!-- -->
			<%Response . Write( blank__5() );%>
			<!-- -->
			<%Response . Write( renamethis__2( "Employment Information" ) );%>
			<%Response . Write( renamethis__6( "Employee Type" , "input__EMPLOYEE_TYPE" , "Academic Staff — Administrative!Academic Staff — Research!Faculty — Research!Faculty — UWMF!Fellow!Resident!Student — Graduate!Student — Undergraduate — For Credit!Student — Undergraduate — Paid!Support Staff!Other" ) );%>
			<%Response . Write( renamethis__1( "Work Title" , "input__WORK_TITLE" ) );%>
			<%Response . Write( renamethis__1( "Supervisor / PI" , "input__SUPERVISOR" ) );%>
			<%Response . Write( renamethis__1( "Percent Appointment" , "input__PERCENT_APPOINTMENT" ) );%>
			<%Response . Write( renamethis__1( "Grant / Award" , "input__GRANT" ) );%>
			<%Response . Write( renamethis__1( "UW NetID" , "input__UW_NET_ID" ) );%>
			<!-- -->
			<%Response . Write( blank__5() );%>
			<!-- -->
			<%Response . Write( renamethis__2( "Access Requirements" ) );%>
			<!-- -->
			<%Response . Write( renamethis__1( "If applicable, what is the full name of an existing user who has the same access requirements as the new user?" , "input__SIMILAR_USER" ) );%>
			<%Response . Write( renamethis__6( "Will the user require local network access to Neurology computers and / or printers?" , "input__LOCAL_ACCESS" , "No!Yes" ) );%>
			<%Response . Write( renamethis__6( "Will the user require remote network access to Neurology computers and / or printers?" , "input__REMOTE_ACCESS" , "No!Yes" ) );%>
			<%Response . Write( renamethis__6( "Will the user require a @neurology.wisc.edu Email address?" , "input__NEUROLOGY_EMAIL_ADDRESS" , "No!Yes" ) );%>
			<%Response . Write( renamethis__6( "Should the user’s @neurology.wisc.edu Email be forwarded to their “Best Email Address”?" , "input__FORWARD_EMAIL" , "No!Yes" ) );%>
			<%Response . Write( renamethis__6( "Will the user have access to human clinic / research information?" , "input__EPHI_ACCESS" , "No!Yes" ) );%>
			<!-- [end] New User Information -->
		</table>
		<!-- -->
		<!-- -->
		<!-- -->
		<table>
			<!-- [BEGIN] Dates -->
			<%Response . Write( blank__4() );%>
			<!-- -->
			<%Response . Write( renamethis__3( "Dates" ) );%>
			<!-- -->
			<%Response . Write( blank__5() );%>
			<!-- -->
			<%Response . Write( renamethis__1( "Today’s Date" , "input__TODAYS_DATE" ) );%>
			<%Response . Write( renamethis__1( "Work Start Date" , "input__WORK_START_DATE" ) );%>
			<%Response . Write( renamethis__1( "Work End Date <i>(approximate if necessary)</i>" , "input__WORK_END_DATE" ) );%>
			<%Response . Write( renamethis__1( "HIPAA Privacy Certificate Date" , "input__HIPAA_PRIVACY_CERT_DATE" ) );%>
			<%Response . Write( renamethis__1( "HIPAA Security Certificate Date" , "input__HIPAA_SECURITY_CERT_DATE" ) );%>
			<%Response . Write( renamethis__1( "Effort Certificate Training Date" , "input__EFFORT_CERT_TRAINING_DATE" ) );%>
			<%Response . Write( renamethis__1( "Animal Training Date" , "input__ANIMAL_TRAINING_DATE" ) );%>
			<%Response . Write( renamethis__1( "Human Subject Training Date" , "input__HUMAN_SUBJECT_TRAINING_DATE" ) );%>
			<%Response . Write( renamethis__1( "Outside Activities Report Date" , "input__OUTSIDE_ACTIVITIES_REPORT_DATE" ) );%>
			<!-- [end] Dates -->
		</table>
		<!-- [BEGIN] Requestor Information -->
		<table>
			<%Response . Write( blank__4() );%>
			<%Response . Write( renamethis__3( "Requestor Information" ) );%>
			<%Response . Write( blank__5() );%>
			<%Response . Write( renamethis__2( "Name" ) );%>
			<%Response . Write( renamethis__1( "First Name" , "input__REQUESTOR__FIRST_NAME" ) );%>
			<%Response . Write( renamethis__1( "Last Name" , "input__REQUESTOR__LAST_NAME" ) );%>
			<%Response . Write( blank__5() );%>
			<%Response . Write( renamethis__2( "Employment Information" ) );%>
			<%Response . Write( renamethis__1( "Work Title" , "input__REQUESTOR__WORK_TITLE" ) );%>
			<%Response . Write( renamethis__1( "Work Email Address" , "input__REQUESTOR__WORK_EMAIL_ADDRESS" ) );%>
			<%Response . Write( renamethis__1( "Work Phone Number" , "input__REQUESTOR__WORK_PHONE_NUMBER" ) );%>
			<%Response . Write( renamethis__1( "Work Location / Address" , "input__REQUESTOR__WORK_LOCATION" ) );%>
		</table>
		<!-- [end] Requestor Information -->
		<!-- [BEGIN] Distribution Lists -->
		<table>
			<%Response . Write( dsb__BLANK( "30px" ) );%>
			<%Response . Write( renamethis__3( "Distribution Lists" ) );%>
			<%Response . Write( dsb__BLANK( "5px" ) );%>
			<%Response . Write( renamethis__2( "Faculty" ) );%>
			<%Response . Write( renamethis__8( "All Faculty" , "FACULTY__ALL_FACULTY" , "faculty@neurology.wisc.edu" ) );%>
			<%Response . Write( renamethis__8( "CSC Faculty" , "FACULTY__CSC_FACULTY" , "cscfaculty@neurology.wisc.edu" ) );%>
			<%Response . Write( renamethis__8( "MSC Faculty" , "FACULTY__MSC_FACULTY" , "mscfaculty@neurology.wisc.edu" ) );%>
			<%Response . Write( renamethis__8( "South Park Street Faculty" , "FACULTY__SOUTH_PARK_STREET_FACULTY" , "southpark@neurology.wisc.edu" ) );%>
			<%Response . Write( renamethis__8( "UWMF Providers" , "FACULTY__UWMF_PROVIDERS" , "uwmf@neurology.wisc.edu" ) );%>
			<%Response . Write( dsb__BLANK( "20px" ) );%>
			<%Response . Write( renamethis__2( "Faculty and Staff" ) );%>
			<%Response . Write( renamethis__8( "All Faculty and Staff" , "FACULTY_AND_STAFF__ALL_FACULTY_AND_STAFF" , "everyone@neurology.wisc.edu" ) );%>
			<%Response . Write( renamethis__8( "MFCB Faculty and Staff" , "FACULTY_AND_STAFF__MFCB_FACULTY_AND_STAFF" , "mfcb@neurology.wisc.edu" ) );%>
			<%Response . Write( renamethis__8( "Researchers" , "FACULTY_AND_STAFF__RESEARCHERS" , "researchers@neurology.wisc.edu" ) );%>
			<%Response . Write( renamethis__8( "Residents" , "FACULTY_AND_STAFF__RESIDENTS" , "residents@neurology.wisc.edu" ) );%>
			<%Response . Write( dsb__BLANK( "20px" ) );%>
			<%Response . Write( renamethis__2( "Administration" ) );%>
			<%Response . Write( renamethis__8( "Administration Staff" , "ADMINISTRATION__ADMINISTRATION_STAFF" , "admin@neurology.wisc.edu" ) );%>
			<%Response . Write( renamethis__8( "Aspirus EEGs" , "ADMINISTRATION__ASPIRUS_EEGS" , "aspiruseeg@neurology.wisc.edu" ) );%>
			<%Response . Write( renamethis__8( "Employment Applications" , "ADMINISTRATION__EMPLOYMENT_APPLICATIONS" , "applications@neurology.wisc.edu" ) );%>
			<%Response . Write( renamethis__8( "Employment Verification" , "ADMINISTRATION__EMPLOYMENT_VERIFICATION" , "employmentverification@neurology.wisc.edu" ) );%>
			<%Response . Write( dsb__BLANK( "20px" ) );%>
			<%Response . Write( renamethis__2( "Neuroscience Mailing List" ) );%>
			<%Response . Write( renamethis__8( "Faculty and Researchers" , "NEUROSCIENCE_MAILING_LIST__FACULTY_AND_RESEARCHERS" , "nsc@neuroscience.wisc.edu" ) );%>
			<%Response . Write( renamethis__8( "Undergraduates" , "NEUROSCIENCE_MAILING_LIST__UNDERGRADUATES" , "nsc@neuroscience.wisc.edu" ) );%>
			<%Response . Write( dsb__BLANK( "20px" ) );%>
			<%Response . Write( renamethis__2( "Neuropsychology Study Groups" ) );%>
			<%Response . Write( renamethis__8( "Camp Cope–A–Lot" , "NEUROPSYCHOLOGY_STUDY_GROUPS__CAMP_COPE_A_LOT" , "nps__ccal@neurology.wisc.edu" ) );%>
			<%Response . Write( renamethis__8( "Pediatric EEG" , "NEUROPSYCHOLOGY_STUDY_GROUPS__PEDIATRIC_EEG" , "nps__peds@neurology.wisc.edu" ) );%>
		</table>
		<!-- [end] Distribution Lists -->
		<!-- [BEGIN] Notes / Comments -->
		<table>
			<%Response . Write( dsb__BLANK( "30px" ) );%>
			<%Response . Write( renamethis__3( "Notes / Comments" ) );%>
			<%Response . Write( dsb__BLANK( "5px" ) );%>
			<%Response . Write( renamethis__7( "textarea__NOTES" ) );%>
		</table>
		<!-- [end] Notes / Comments -->
		<!-- [BEGIN] Buttons -->
		<table>
			<%Response . Write( dsb__BLANK( "30px" ) );%>
			<tr>
				<td>
					<input class="button" style="color: #aa0000;" type="reset" value="Reset" />
				</td>
				<!-- <td><input class="button" style="color: #008800;" type="submit" value="Save" /></td> -->
				<td>
					<input class="button" style="color: #008800;" type="submit" value="Send Request" />
				</td>
			</tr>
		</table>
		<!-- [end] Buttons -->
		</form>
	</center>
</body>
</html>
