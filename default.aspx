<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
	private void Page_Load( object sender , System . EventArgs e )
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	{
		Response . Cache . SetCacheability( HttpCacheability . NoCache );
		Response . Buffer = true;
	}
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
			width: 300px;
		}
		
		td.rightside
		{
			background-color: #ffffdd;
			border: 1px solid #ddddff;
			height: 34px;
			padding: 0px 0px 3px 6px;
			text-align: left;
			width: 640px;
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
		td.subtitle
		{
			background-color: #ddddff;
			border: 3px solid #bbbbdd;
			font-family: Arial, Sans-Serif;
			font-size: 14pt;
			font-weight: bold;
			padding: 9px;
			text-align: left;
		}
		td.subsubtitle
		{
			background-color: #C0C0C0;
			border: 0px solid #bbbbdd;
			font-family: Arial, Sans-Serif;
			font-size: 12pt;
			font-weight: bold;
			padding: 9px;
			text-align: left;
		}
		td.maintitle
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
		<form action="submit.aspx" id="form1" runat="server" method="post">
<table>
	<tr>
		<td class='maintitle' colspan='2'>
			User Access Form
		</td>
	</tr>
	<tr>
		<td class='blank2' colspan='2'>
		&nbsp
		</td>
	</tr>
	<tr>
		<td class='subtitle' colspan='3'>
		Name
		</td>
	</tr>
	<tr>
		<td class='leftside'>
		First Name
		</td>
		<td class='rightside'>
		<input class='text' id='FirstName' name='FirstName' />
		</td>
	</tr>
	<tr>
		<td class='leftside'>
		Middle Name
		</td>
		<td class='rightside'>
		<input class='text' id='MiddleName' name='MiddleName' />
		</td>
	</tr>
	<tr>
		<td class='leftside'>
		Last Name
		</td>
		<td class='rightside'>
		<input class='text' id='LastName' name='LastName' />
		</td>
	</tr>
	<tr>
		<td class='blank2' colspan='2'>
		&nbsp
		</td>
	</tr>
	<tr>
	<tr>
		<td class='subtitle' colspan='3'>
		Contact Information
		</td>
	</tr>
	<tr>
		<td class='leftside'>
		Work Email Address
		</td>
		<td class='rightside'>
		<input class='text' id='WorkEmail' name='WorkEmail' />
		</td>
	</tr>
	<tr>
		<td class='leftside'>
		Work Location / Address
		</td>
		<td class='rightside'>
		<input class='text' id='WorkAddress' name='WorkAddress' />
		</td>
	</tr>
<tr>
		<td class='blank2' colspan='2'>
		&nbsp
		</td>
	</tr>
	<tr>
	<tr>
		<td class='subtitle' colspan='3'>
		Employment Information
		</td>
	</tr>
	<tr>
		<td class='leftside'>
		Employee Appointment Type
		</td>
		<td class='rightside'>
		<select ID='WorkType' NAME='WorkType'>
		<option></option>
		<option>Academic Staff - Administrative</option>
		<option>Academic Staff - Research</option>
		<option>Faculty - Research</option>
		<option>Faculty - UWMF</option>
		<option>Fellow</option>
		<option>Resident</option>
		<option>Student - Graduate</option>
		<option>Student - Undergraduate - For Credit</option>
		<option>Student - Undergraduate - Paid</option>
		<option>Support Staff</option>
		<option>Other</option>
		</select>
		</td>
	</tr>
	<tr>
		<td class='leftside'>
		Work Title
		</td>
		<td class='rightside'>
		<input class='text' id='WorkTitle' name='WorkTitle' />
		</td>
	</tr>
	<tr>
		<td class='leftside'>
		Supervisor / PI
		</td>
		<td class='rightside'>
		<input class='text' id='Supervisor' name='Supervisor' />
		</td>
		
	</tr>		
	<tr>
		<td class='leftside'>
		Percentage Appointment
		</td>
		<td class='rightside'>
		<input class='text' id='PercentageAppointment' name='PercentageAppointment' />
		</td>
	</tr>
	<tr>
		<td class='leftside'>
		ePHI access
		</td>
		<td class='rightside'>
		<select ID='ePHI' NAME='ePHI'>
		<option></option>
		<option>No</option>
		<option>Yes</option>
		<option>N/A</option>
		
		</td>
	</tr>
	<tr>
		<td class='blank2' colspan='2'>
		&nbsp
		</td>
	</tr>
	<tr>
		<td class='subtitle' colspan='3'>
		Dates
		</td>
	</tr>
	<td class='leftside'>
		Work Start Date
		</td>
		<td class='rightside'>
		<input class='text' id='WorkStartDate' name='WorkStartDate' />
		</td>
		</tr>
		<tr>
		<td class='leftside'>
		Work End Date
		</td>
		<td class='rightside'>
		<input class='text' id='WorkEndDate' name='WorkEndDate' />
		</td>
		</tr>
		<tr>
		<td class='blank2' colspan='2'>
		&nbsp
		</td>
	</tr>

	<tr>
		<td class='subtitle' colspan='3'>
		Account Access Requirements (IT)
		</td>
	</tr>
	<tr>
	<td class='leftside'>
		Create Departmental Login
		</td>
		<td class='rightside'>
		<select ID='CreateLogin' NAME='CreateLogin'>
		<option></option>
		<option>No</option>
		<option>Yes</option>
		<option>N/A</option>
		
		</select>
		</td>
	</tr>
	<tr>
	<td class='leftside'>
		Create Neurology email address
		</td>
		<td class='rightside'>
		<select ID='NeurologyEmail' NAME='NeurologyEmail'>
		<option></option>
		<option>No</option>
		<option>Yes</option>
		<option>N/A</option>
		</select>
		</td>
	</tr>
	<tr>
	<td class='subsubtitle' colspan='3'>
		Absence Forms
		</td>
	
		
		
		<%Response . Write( renamethis__8( "UWHC Clinic" , "UWHC_Clinic" , "" ) );%>
		<%Response . Write( renamethis__8( "East Clinic" , "East_Clinic" , "" ) );%>
		<%Response . Write( renamethis__8( "20 S. Park Clinic" , "20SPark" , "" ) );%>
		<%Response . Write( renamethis__8( "Sleep Clinic" , "Sleep_Clinic" , "" ) );%>
		<%Response . Write( renamethis__8( "Fellows" , "Fellows" , "" ) );%>
		<%Response . Write( renamethis__8( "Residents" , "Residents" , "" ) );%>
		
		
		
	</tr>
	<tr>
	<td class='leftside'>
		Setup on Performance Review Application
		</td>
		<td class='rightside'>
		<select ID='Performance' NAME='Performance'>
		<option></option>
		<option>No</option>
		<option>Yes</option>
		<option>N/A</option>
		</select>
		</td>
	</tr>
	
	<tr>
	<td class='leftside'>
		Setup on Resident Electives Form (Residents Only)
		</td>
		<td class='rightside'>
		<select ID='ElectiveForms' NAME='ElectiveForms'>
		<option></option>
		<option>No</option>
		<option>Yes</option>
		<option>N/A</option>
		</select>
		</td>
	</tr>
	<tr>
	<td class='leftside'>
		Setup Remote Access
		</td>
		<td class='rightside'>
		<select ID='RemoteAccess' NAME='RemoteAccess'>
		<option></option>
		<option>No</option>
		<option>Yes</option>
		<option>N/A</option>
		</select>
		</td>
	</tr>
	<tr>
		<td class='leftside'>
		Forward Neurology email to UWHC/UWMF
		</td>
		<td class='rightside'>
		<select ID='ForwardNeurology' NAME='ForwardNeurology'>
		<option></option>
		<option>No</option>
		<option>Yes</option>

		</select>
		</td>
	</tr>
	<tr>
		<td class='leftside'>
		Forward UWMF/UWHC/WISC email to Neurology
		</td>
		<td class='rightside'>
		<select ID='ForwardExternal' NAME='ForwardExternal'>
		<option></option>
		<option>No</option>
		<option>Yes</option>

		</select>
		</td>
		</td>
	</tr>
	<tr>
		<td class='leftside'>
		Clone another users access rights
		</td>
		<td class='rightside'>
		<input class='text' id='CloneRights' name='CloneRights' />
		</td>
	</tr>
	<tr>
		<td class='blank2' colspan='2'>
		&nbsp
		</td>
	</tr>
	<tr>
		<td class='subtitle' colspan='3'>
		Calendar Permissions (IT)
		</td>
	</tr>
	<td class='leftside'>
		Allow to view/edit these calendars (Provide Names)
		</td>
		<td class='rightside'>
		<input class='text' id='CalendarPermissions' name='CalendarPermissions' />
		</td>
	</tr>

		<td class='blank2' colspan='2'>
		&nbsp
		</td>
	</tr>
	
	<tr>
		<td class='subtitle' colspan='3'>
		Distribution Lists (IT)
		</td>
	</tr>
	<tr>
		<td class='blank2' colspan='2'>
		&nbsp
		</td>
	</tr>
	<tr>
		<td class='subsubtitle' colspan='3'>
		Faculty
		</td>
	</tr>
				<%Response . Write( renamethis__8( "All Neurology Faculty" , "Faculty_All" , "faculty@neurology.wisc.edu" ) );%>
				<%Response . Write( renamethis__8( "CSC Faculty" , "Faculty_CSC" , "cscfaculty@neurology.wisc.edu" ) );%>
				<%Response . Write( renamethis__8( "20. S Park Faculty" , "Faculty_20SPark" , "southpark@neurology.wisc.edu" ) );%>
				<%Response . Write( renamethis__8( "MSC Faculty" , "Faculty_MSC" , "mscfaculty@neurology.wisc.edu" ) );%>
				<%Response . Write( renamethis__8( "Neurology UWMF Providers" , "Faculty_UWMF" , "uwmf@neurology.wisc.edu" ) );%>
				<%Response . Write( renamethis__8( "Neurology UWMF Advanced Practice Providers" , "Faculty_UWMF_APP" , "uwmfmidlevels@neurology.wisc.edu" ) );%>
				
				
				
		<tr>
		<td class='blank2' colspan='2'>
		&nbsp
		</td>
	</tr>		
	<tr>
		<td class='subsubtitle' colspan='3'>
		Faculty and Staff
		</td>
	</tr>
				<%Response . Write( renamethis__8( "All Faculty  & Staff" , "FacultyStaff_Everyone" , "everyone@neurology.wisc.edu" ) );%>
				<%Response . Write( renamethis__8( "MFCB Faculty & Staff" , "FacultyStaff_MFCB" , "mfcb@neurology.wisc.edu" ) );%>
				<%Response . Write( renamethis__8( "MSC Faculty & Staff" , "FacultyStaff_MSC" , "msc@neurology.wisc.edu" ) );%>
				<%Response . Write( renamethis__8( "Researchers" , "FacultyStaff_Researchers" , "researchers@neurology.wisc.edu" ) );%>
				<%Response . Write( renamethis__8( "Residents" , "FacultyStaff_Residents" , "residents@neurology.wisc.edu" ) );%>
				
				
	<tr>
		<td class='blank2' colspan='2'>
		&nbsp
		</td>
	</tr>		
	<tr>
		<td class='subsubtitle' colspan='3'>
		Administration
		</td>
	</tr>
				<%Response . Write( renamethis__8( "Administration Staff" , "Admin_AllAdmin" , "admin@neurology.wisc.edu" ) );%>
				<%Response . Write( renamethis__8( "Employment Applications" , "Admin_Applications" , "applications@neurology.wisc.edu" ) );%>
				<%Response . Write( renamethis__8( "Employment Verification" , "Admin_Verification" , "employmentverification@neurology.wisc.edu" ) );%>
				<%Response . Write( renamethis__8( "Appointment Letters" , "Admin_AppointmentLetters" , "appointmentlettersdistribution@neurology.wisc.edu" ) );%>
				<%Response . Write( renamethis__8( "Faculty Staff Hire" , "Admin_FacStaffHire" , "facstaffhire@neurology.wisc.edu" ) );%>
				<%Response . Write( renamethis__8( "Classified Hire" , "Admin_ClassifiedHire" , "classifiedhire@neurology.wisc.edu" ) );%>
				<%Response . Write( renamethis__8( "Sutula Support" , "Admin_SutulaSupport" , "tsutula@neurology.wisc.edu" ) );%>
				
				

	<tr>
		<td class='blank2' colspan='2'>
		&nbsp
		</td>
	</tr>	
<tr>
		<td class='subsubtitle' colspan='3'>
		General Purpose Distribution Lists
		</td>
	</tr>	<tr>
				<%Response . Write( renamethis__8( "Neuro News" , "Gen_NeuroNews" , "neuronews@neurology.wisc.edu" ) );%>
				<%Response . Write( renamethis__8( "Grand Rounds List" , "Gen_GrandRounds" , "grandrounds@neurology.wisc.edu" ) );%>
				<%Response . Write( renamethis__8( "Research Day Mailing List" , "Gen_ResearchDay" , "researchday@neurology.wisc.edu" ) );%>
				<%Response . Write( renamethis__8( "RSP Notifications" , "Gen_RSP" , "rsp@neurology.wisc.edu" ) );%>
				<%Response . Write( renamethis__8( "Neuropsychology - Camp Cope-A-Lot Study Group" , "Gen_ccal" , "nps__ccal@neurology.wisc.edu" ) );%>
				<%Response . Write( renamethis__8( "Neuropsychology - Peds Epilepsy Study Group" , "Gen_peds" , "nps__peds@neurology.wisc.edu" ) );%>
</tr>

	<td class='blank2' colspan='2'>
		&nbsp
		</td>
	</tr>
	
	<tr>
		<td class='subtitle' colspan='3'>
		Network Drives (IT)
		</td>
	</tr>
	<tr>
		<td class='blank2' colspan='2'>
		&nbsp
		</td>
	</tr>
	<tr>
		<td class='subsubtitle' colspan='3'>
		Faculty
		</td>
	</tr>
				<%Response . Write( renamethis__8( "Personal H Drive (H)" , "Faculty_Drives_H" , "Server Name : CORONAL" ) );%>
				<%Response . Write( renamethis__8( "Rutecki Dictation (H)" , "Faculty_Drives_RuteckiDictation" , "Server Name : CORONAL" ) );%>
				<%Response . Write( renamethis__8( "HSU Lab Drive (L)" , "Faculty_Drives_HsuLab" , "Server Name : CORONAL" ) );%>
				<%Response . Write( renamethis__8( "Stroke Lab Drive (L)" , "Faculty_Drives_StrokeLab" , "Server Name : CORONAL" ) );%>
				<%Response . Write( renamethis__8( "Gallagher Movies (M)" , "Faculty_Drives_Gallagher" , "Server Name : CORONAL" ) );%>
				<%Response . Write( renamethis__8( "QI Project (Q)" , "Faculty_Drives_QI" , "Server Name : CORONAL" ) );%>
				<%Response . Write( renamethis__8( "Gallagher Research (R)" , "Faculty_Gallagher_Research" , "Server Name : CORONAL" ) );%>
				<%Response . Write( renamethis__8( "Stroke Lab Education (S)" , "Faculty_Drives_StrokeLabEducation" , "Server Name : CORONAL" ) );%>
				<%Response . Write( renamethis__8( "Sutula Recommendation (U)" , "Faculty_Drives_Sutula_Recommendation" , "Server Name : CORONAL" ) );%>
				<%Response . Write( renamethis__8( "Sutula Admin(U)" , "Faculty_Drives_SutulaAdmin" , "Server Name : CORONAL" ) );%>
				<%Response . Write( renamethis__8( "External Review(V)" , "Faculty_Drives_ExternalReview" , "Server Name : CORONAL" ) );%>

				
				
				
		<tr>
		<td class='blank2' colspan='2'>
		&nbsp
		</td>
	</tr>		
	<tr>
		<td class='subsubtitle' colspan='3'>
		Research / MSC
		</td>
	</tr>		<%Response . Write( renamethis__8( "Carrithers Lab (I)" , "Research_Drives_Carrithers" , "Server Name : PROTEAS" ) );%>
				<%Response . Write( renamethis__8( "MSC Labs - Common (L)" , "Research_Drives_MSCLabs" , "Server Name : PROTEAS" ) );%>
				<%Response . Write( renamethis__8( "Burger Lab (M)" , "Research_Drives_BurgerLab" , "Server Name : PROTEAS" ) );%>
				<%Response . Write( renamethis__8( "Maganti Lab (M)" , "Research_Drives_MagantiLab" , "Server Name : PROTEAS" ) );%>
				<%Response . Write( renamethis__8( "Rutecki Lab (R)" , "Research_Drives_RuteckiLab" , "Server Name : PROTEAS" ) );%>
				<%Response . Write( renamethis__8( "Sutula Lab Drive (S)" , "Research_Drives_Sutula" , "Server Name : PROTEAS" ) );%>
				<%Response . Write( renamethis__8( "MSC EEG Data (W)" , "Research_Drives_EEGData" , "Server Name : PROTEAS" ) );%>

				
				
	<tr>
		<td class='blank2' colspan='2'>
		&nbsp
		</td>
	</tr>		
	<tr>
		<td class='subsubtitle' colspan='3'>
		Administration
		</td>
	</tr>
				<%Response . Write( renamethis__8( "Support Staff (S)" , "Admin_Drives_Support" , "Server Name: CORONAL" ) );%>
				<%Response . Write( renamethis__8( "Grand Rounds (K)" , "Admin_Drives_GrandRounds" , "Server Name: CORONAL" ) );%>
				<%Response . Write( renamethis__8( "Admin (O)" , "Admin_Drives_AdminO" , "Server Name: CORONAL" ) );%>
				<%Response . Write( renamethis__8( "Productivity Reports (O)" , "Admin_Drives_Productivity" , "Server Name: CORONAL" ) );%>
				<%Response . Write( renamethis__8( "Archive (P)" , "Admin_Drives_Archive" , "Server Name: CORONAL" ) );%>
				<%Response . Write( renamethis__8( "Grants (Q)" , "Admin_Drives_grants" , "Server Name: CORONAL" ) );%>
				<%Response . Write( renamethis__8( "Residency Program (R)" , "Admin_Drives_Residency" , "Server Name: CORONAL" ) );%>
				<%Response . Write( renamethis__8( "Temp Drive (T)" , "Admin_Drives_Temp" , "Server Name: CORONAL" ) );%>
				<%Response . Write( renamethis__8( "Coding (Z)" , "Admin_Drives_Coding" , "Server Name: CORONAL" ) );%>
	<tr>
		<td class='blank2' colspan='2'>
		&nbsp
		</td>
	</tr>	

	
		</table>
		
		
		<br><br>
	<table>
	<tr>
		<td class='subtitle' colspan='3'>
		Requestor Information
		</td>
	</tr>
	<tr>
		<td class='leftside'>
		User Login
		</td>
		<td class='rightside'>
		<% 				String LogonName= Request . ServerVariables[ "LOGON_USER" ] . ToString();
	Response.Write (LogonName);
	%>
		</td></tr>	
		<tr>
		<td class='leftside'>
		IP Address
		</td>
		<td class='rightside'>
		<% 				   String     IPAddress           =   Request   .   ServerVariables[   "REMOTE_ADDR"   ]   ;
		Response.Write (IPAddress);
		%>
		</td></tr>
	
	</table>
		<br><br>
	<table>
	<tr>
		<td class='subtitle' colspan='3'>
		Notes / Comments
		</td>
	</tr>
	<tr>
	<td class='textarea'>
	<textarea id='Notes' name='Notes'></textarea>
	</td>
	</tr>
	</table>
	<br>
					<input class="button" style="color: #008800;" type="submit" value="Send Request" />
		
		</form>
		</body>
		</html>