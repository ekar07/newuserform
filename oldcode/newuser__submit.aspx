
<%@ Page Language="C#" Debug="true" %>

<%@ Import Namespace="System" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Net" %>
<%@ Import Namespace="System.Net.Mail" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	void Page_Load( object sender , System . EventArgs e )
	{
		Response . Cache . SetNoStore();
		Response . Cache . SetCacheability( HttpCacheability . NoCache );

		String string__LOGGED_IN_USER = Request . ServerVariables[ "AUTH_USER" ] . Replace( @"NEUROLOGY\" , "" ).ToLower();

		String string__SEND_THIS_MESSAGE = null;
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "<html xmlns='http://www.w3.org/1999/xhtml'>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "<head>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "   <style type='text/css'>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      table";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      {";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         border-collapse: collapse;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         border: none;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         font-family: Arial, Sans-Serif;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         font-size: 12pt;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         font-weight: bold;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         width: 960px;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      }";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      td.blank";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      {";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         background-color: transparent;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         border: none;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         font-family: Arial, Sans-Serif;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         padding: 0px;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      }";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      td.blank1";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      {";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         background-color: transparent;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         border: none;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         font-family: Arial, Sans-Serif;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         font-size: 36px;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         padding: 0px;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      }";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      td.blank2";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      {";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         background-color: transparent;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         border: none;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         font-family: Arial, Sans-Serif;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         font-size: 6px;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         padding: 0px;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      }";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      td.leftside";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      {";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         background-color: #ffffff;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         border: 1px solid #ddddff;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         padding: 6px;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         text-align: left;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         width: 360px;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      }";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      td.rightside";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      {";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         background-color: #ffffdd;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         border: 1px solid #ddddff;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         color: #cc0000;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         font-family: Arial, Sans-Serif;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         font-size: 14pt;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         font-weight: bold;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         padding: 6px;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         text-align: left;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         width: 600px;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      }";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      td.selected";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      {";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         background-color: #aa0000;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         border: 1px solid #dddddd;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         color: #ffff00;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         font-family: Arial, Sans-Serif;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         padding: 6px;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         text-align: left;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      }";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      td.unselected";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      {";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         background-color: #ffffff;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         border: 1px solid #dddddd;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         color: #000000;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         font-family: Arial, Sans-Serif;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         padding: 6px;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         text-align: left;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      }";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      td.title1";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      {";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         background-color: #ddddff;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         border: 3px solid #bbbbdd;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         font-family: Arial, Sans-Serif;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         font-size: 14pt;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         font-weight: bold;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         padding: 9px;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         text-align: left;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      }";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      td.title2";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      {";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         background-color: #ffdddd;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         border: 6px solid #ccaaaa;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         font-family: Arial, Sans-Serif;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         font-size: 18pt;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         font-weight: bold;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         padding: 9px;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         text-align: center;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      }";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      td.textarea";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      {";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         background-color: #ffffdd;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         border: 1px solid #ddddff;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         color: #cc0000;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         font-family: Arial, Sans-Serif;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         font-size: 14pt;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         font-weight: bold;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         padding: 6px;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         vertical-align: top;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         width: 100%;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      }";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "   </style>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "</head>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "<body>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "   <center>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      <table>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__3( "New User Information" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + dsb__BLANK( "4px" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__2( "Name" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__1( "First Name" , "input__FIRST_NAME" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__1( "Middle Name" , "input__MIDDLE_NAME" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__1( "Last Name" , "input__LAST_NAME" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + dsb__BLANK( "20px" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__2( "Contact Information" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__1( "Best Email Address <i>(e.g. personal, school)</i>" , "input__BEST_EMAIL_ADDRESS" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__1( "Best Phone Number <i>(e.g. home, cell)</i>" , "input__BEST_PHONE_NUMBER" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__1( "Work Email Address" , "input__WORK_EMAIL_ADDRESS" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__1( "Work Phone Number" , "input__WORK_PHONE_NUMBER" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__1( "Work Location / Address" , "input__WORK_LOCATION" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + dsb__BLANK( "20px" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__2( "Employment Information" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__1( "Employee Type" , "input__EMPLOYEE_TYPE" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__1( "Work Title" , "input__WORK_TITLE" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__1( "Supervisor / PI" , "input__SUPERVISOR" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__1( "Percent Appointment" , "input__PERCENT_APPOINTMENT" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__1( "Grant / Award" , "input__GRANT" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__1( "UW NetID" , "input__UW_NET_ID" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + dsb__BLANK( "20px" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__2( "Access Requirements" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__1( "If applicable, what is the full name of an existing user who has the same access requirements as the new user?" , "input__SIMILAR_USER" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__1( "Will the user require local network access to Neurology computers and / or printers?" , "input__LOCAL_ACCESS" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__1( "Will the user require remote network access to Neurology computers and / or printers?" , "input__REMOTE_ACCESS" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__1( "Will the user require a @neurology.wisc.edu Email address?" , "input__NEUROLOGY_EMAIL_ADDRESS" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__1( "Should the user’s @neurology.wisc.edu Email be forwarded to their “Best Email Address”" , "input__FORWARD_EMAIL" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__1( "Will the user have access to human clinic / research information?" , "input__EPHI_ACCESS" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      </table>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      <table>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + dsb__BLANK( "30px" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__3( "Dates" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + dsb__BLANK( "4px" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__1( "Today’s Date" , "input__TODAYS_DATE" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__1( "Work Start Date" , "input__WORK_START_DATE" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__1( "Work End Date <i>(approximate if necessary)</i>" , "input__WORK_END_DATE" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__1( "HIPAA Privacy Certificate Date" , "input__HIPAA_PRIVACY_CERT_DATE" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__1( "HIPAA Security Certificate Date" , "input__HIPAA_SECURITY_CERT_DATE" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__1( "Effort Certificate Training Date" , "input__EFFORT_CERT_TRAINING_DATE" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__1( "Animal Training Date" , "input__ANIMAL_TRAINING_DATE" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__1( "Human Subject Training Date" , "input__HUMAN_SUBJECT_TRAINING_DATE" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__1( "Outside Activities Report Date" , "input__OUTSIDE_ACTIVITIES_REPORT_DATE" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      </table>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      <table>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + dsb__BLANK( "30px" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__3( "Requestor Information" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + dsb__BLANK( "4px" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__2( "Name" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__1( "First Name" , "input__REQUESTOR__FIRST_NAME" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__1( "Last Name" , "input__REQUESTOR__LAST_NAME" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + dsb__BLANK( "20px" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__2( "Employment Information" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__1( "Work Title" , "input__REQUESTOR__WORK_TITLE" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__1( "Work Email Address" , "input__REQUESTOR__WORK_EMAIL_ADDRESS" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__1( "Work Phone Number" , "input__REQUESTOR__WORK_PHONE_NUMBER" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__1( "Work Location / Address" , "input__REQUESTOR__WORK_LOCATION" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      </table>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      <table>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + dsb__BLANK( "30px" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__3( "Distribution Lists" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + dsb__BLANK( "4px" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__2( "Faculty" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__8( "All Faculty" , "FACULTY__ALL_FACULTY" , "faculty@neurology.wisc.edu" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__8( "CSC Faculty" , "FACULTY__CSC_FACULTY" , "cscfaculty@neurology.wisc.edu" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__8( "MSC Faculty" , "FACULTY__MSC_FACULTY" , "mscfaculty@neurology.wisc.edu" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__8( "South Park Street Faculty" , "FACULTY__SOUTH_PARK_STREET_FACULTY" , "southpark@neurology.wisc.edu" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__8( "UWMF Providers" , "FACULTY__UWMF_PROVIDERS" , "uwmf@neurology.wisc.edu" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + dsb__BLANK( "20px" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__2( "Faculty and Staff" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__8( "All Faculty and Staff" , "FACULTY_AND_STAFF__ALL_FACULTY_AND_STAFF" , "everyone@neurology.wisc.edu" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__8( "MFCB Faculty and Staff" , "FACULTY_AND_STAFF__MFCB_FACULTY_AND_STAFF" , "mfcb@neurology.wisc.edu" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__8( "Researchers" , "FACULTY_AND_STAFF__RESEARCHERS" , "researchers@neurology.wisc.edu" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__8( "Residents" , "FACULTY_AND_STAFF__RESIDENTS" , "residents@neurology.wisc.edu" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + dsb__BLANK( "20px" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__2( "Administration" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__8( "Administration Staff" , "ADMINISTRATION__ADMINISTRATION_STAFF" , "admin@neurology.wisc.edu" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__8( "Aspirus EEGs" , "ADMINISTRATION__ASPIRUS_EEGS" , "aspiruseeg@neurology.wisc.edu" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__8( "Employment Applications" , "ADMINISTRATION__EMPLOYMENT_APPLICATIONS" , "applications@neurology.wisc.edu" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__8( "Employment Verification" , "ADMINISTRATION__EMPLOYMENT_VERIFICATION" , "employmentverification@neurology.wisc.edu" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + dsb__BLANK( "20px" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__2( "Neuroscience Mailing List" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__8( "Faculty and Researchers" , "NEUROSCIENCE_MAILING_LIST__FACULTY_AND_RESEARCHERS" , "nsc@neuroscience.wisc.edu" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__8( "Undergraduates" , "NEUROSCIENCE_MAILING_LIST__UNDERGRADUATES" , "nsc@neuroscience.wisc.edu" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + dsb__BLANK( "20px" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__2( "Neuropsychology Study Groups" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__8( "Camp Cope–A–Lot" , "NEUROPSYCHOLOGY_STUDY_GROUPS__CAMP_COPE_A_LOT" , "nps__ccal@neurology.wisc.edu" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__8( "Pediatric EEG" , "NEUROPSYCHOLOGY_STUDY_GROUPS__PEDIATRIC_EEG" , "nps__peds@neurology.wisc.edu" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      </table>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      <table>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + dsb__BLANK( "30px" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__3( "Notes / Comments" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + dsb__BLANK( "4px" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__7( "textarea__NOTES" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      </table>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "   </center>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "</body>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "</html>";

		MailMessage smtp__MESSAGE = new MailMessage();
		smtp__MESSAGE . To . Add( "broihahn@neurology.wisc.edu" );
		smtp__MESSAGE . To . Add( "is@neurology.wisc.edu" );
		smtp__MESSAGE . To . Add( "m.malphy@neurology.wisc.edu" );
		smtp__MESSAGE . To . Add( "patchak@neurology.wisc.edu" );
		smtp__MESSAGE . To . Add( "white@neurology.wisc.edu" );
		smtp__MESSAGE . To . Add( "dziuk@neurology.wisc.edu" );
		
		smtp__MESSAGE . Subject = "[WEB FORM] New User Request";
		smtp__MESSAGE . From = new MailAddress( string__LOGGED_IN_USER + "@neurology.wisc.edu" );
		smtp__MESSAGE . Body = string__SEND_THIS_MESSAGE;
		smtp__MESSAGE . IsBodyHtml = true;
		SmtpClient smtp__CLIENT = new SmtpClient( "hector.neurology.wisc.edu" );
		smtp__CLIENT . Send( smtp__MESSAGE );

		Response . Write( string__SEND_THIS_MESSAGE );

		//		String string__WHO_UPDATED_THIS_RECORD = Request . ServerVariables[ "AUTH_USER" ] . Replace( @"NEUROLOGY\" , "" );
		//		Int32 integer__DATABASE_ID_NUMBER = 0;
		//		String string__WHEN_WAS_THIS_RECORD_LAST_UPDATED = DateTime . Now . ToString( "MMM dd, yyyy HH:mm:ss.fff" );
		//		foreach( String string__FIELD__SHORT_NAME in Request . Form . AllKeys )
		//		{
		//			if( string__FIELD__SHORT_NAME != "__VIEWSTATE" )
		//			{
		//				String string__FIELD__VALUE = Request . Form[ string__FIELD__SHORT_NAME ];
		//				if( string__FIELD__VALUE != "" )
		//				{
		//					String string__CONNECTION_STRING = @"Data Source=(local);Initial Catalog=dsb__ADMIN;User ID=KATE__SQL;Password=6!rutRef";
		//					SqlConnection sql__CONNECTION = new SqlConnection( string__CONNECTION_STRING );
		//					sql__CONNECTION . Open();
		//					string string__SQL = "INSERT   INTO   table__NEWUSER(   integer__DATABASE_ID_NUMBER,   datetime__WHEN_WAS_THIS_RECORD_LAST_UPDATED,   text__WHO_UPDATED_THIS_RECORD,   text__FIELD__NAME,   text__FIELD__VALUE   )VALUES(   " + integer__DATABASE_ID_NUMBER + ",   '" + string__WHEN_WAS_THIS_RECORD_LAST_UPDATED + "', '" + string__WHO_UPDATED_THIS_RECORD + "',   '" + string__FIELD__SHORT_NAME + "',   '" + string__FIELD__VALUE + "'   );";
		//					SqlCommand sql__COMMAND = new SqlCommand( string__SQL , sql__CONNECTION );
		//					sql__COMMAND . ExecuteNonQuery();
		//					sql__CONNECTION . Close();
		//					sql__CONNECTION . Dispose();
		//					Response . Write( string__SQL + "<br><br>" );
		//				}
		//			}
		//		}
	}
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
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
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	string renamethis__1( String string__LEFT_SIDE , String string__RIGHT_SIDE )
	{
		string string__RETURN_THIS = null;
		string__RETURN_THIS = string__RETURN_THIS + "<tr>";
		string__RETURN_THIS = string__RETURN_THIS + "<td class='leftside'>";
		string__RETURN_THIS = string__RETURN_THIS + string__LEFT_SIDE;
		string__RETURN_THIS = string__RETURN_THIS + "</td>";
		string__RETURN_THIS = string__RETURN_THIS + "<td class='rightside'>";
		string__RETURN_THIS = string__RETURN_THIS + Request . Form[ string__RIGHT_SIDE ];
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
	string renamethis__7( String string__RIGHT_SIDE )
	{
		string string__RETURN_THIS = null;
		string__RETURN_THIS = string__RETURN_THIS + "<tr>";
		string__RETURN_THIS = string__RETURN_THIS + "<td class='textarea'>";
		string__RETURN_THIS = string__RETURN_THIS + Request . Form[ string__RIGHT_SIDE ] . Replace( "\n" , "<BR>" );
		string__RETURN_THIS = string__RETURN_THIS + "</td>";
		string__RETURN_THIS = string__RETURN_THIS + "</tr>";
		return string__RETURN_THIS;
	}
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	String renamethis__8( String string__LABEL , String string__ID , String string__EMAIL_ADDRESS )
	{
		String string__CLASS = "unselected";
		if( Request . Form[ "hidden__" + string__ID ] == "true" )
		{
			string__CLASS = "selected";
		}

		String string__RETURN_THIS = null;
		string__RETURN_THIS = string__RETURN_THIS + "<tr>";
		string__RETURN_THIS = string__RETURN_THIS + "<td class='" + string__CLASS + "' style='width:230px;'>";
		string__RETURN_THIS = string__RETURN_THIS + string__LABEL;
		string__RETURN_THIS = string__RETURN_THIS + "</td>";
		string__RETURN_THIS = string__RETURN_THIS + "<td class='" + string__CLASS + "' style='width:670px;'>";
		string__RETURN_THIS = string__RETURN_THIS + string__EMAIL_ADDRESS;
		string__RETURN_THIS = string__RETURN_THIS + "</td>";
		string__RETURN_THIS = string__RETURN_THIS + "</tr>";
		return string__RETURN_THIS;
	}
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
</head>
<body>
</body>
</html>
