
<%@ Page Language="C#" Debug="true" %>

<%@ Import Namespace="System" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Net" %>
<%@ Import Namespace="System.Net.Mail" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
public   Dictionary<   String   ,   String   >   global__DataDictionary   =   new   Dictionary<   String   ,   String   >()   ;

	void Page_Load( object sender , System . EventArgs e )
	{
		Response . Cache . SetNoStore();
		Response . Cache . SetCacheability( HttpCacheability . NoCache );
	foreach(   String   dsb__Key   in   Request   .   Form   .   Keys   )
   {
      global__DataDictionary[   dsb__Key   ]   =   Request   .   Form[   dsb__Key   ]   .   Replace(   "\'"   ,   "\'\'"   )   ;
   }
   
    Response   .   Write(   "<CENTER><TABLE   STYLE='border-collapse:collapse;font:11pt Arial;font-weight:bold;'>"   )   ;
  Response   .   Write(   "<CENTER><TABLE   STYLE='border-collapse:collapse;font:11pt Arial;font-weight:bold;'>"   )   ;
   
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
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      td.maintitle";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      {";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         background-color: #ffdddd;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         border: 6px solid #ccaaaa;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "        font-family: Arial, Sans-Serif;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         font-size: 18pt;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         font-weight: bold;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         font-weight: bold;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         padding: 9px;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         text-align: center;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      }";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      td.subtitle";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      {";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         background-color: #ddddff;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         border: 3px solid #bbbbdd;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "        font-family: Arial, Sans-Serif;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         font-size: 14pt;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         font-weight: bold;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         padding: 9px;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         text-align: left;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      }";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      td.subsubtitle";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      {";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         background-color: #C0C0C0;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         border: 0px solid #bbbbdd;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "        font-family: Arial, Sans-Serif;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         font-size: 12pt;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         font-weight: bold;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         padding: 9px;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "         text-align: left;";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      }";
		
		
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "   </style>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "</head>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "<body>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "   <center>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      <table>";
		if(global__DataDictionary[   "WorkStartDate"   ]!=""){
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='maintitle' colspan='2'>New User Form</td></tr>";
		}
		if(global__DataDictionary[   "WorkEndDate"   ]!=""){
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='maintitle' colspan='2'>User Access Termination Form</td></tr>";
		}
		
		if(global__DataDictionary[   "WorkEndDate"   ]!="" && global__DataDictionary[   "WorkStartDate"   ]!="" ){
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='maintitle' colspan='2'>User Access Form</td></tr>";
		}
		
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='blank2' colspan='2'>&nbsp</td></tr>";
		if(global__DataDictionary[   "FirstName"   ]!="" || global__DataDictionary[   "MiddleName"   ]!=""|| global__DataDictionary[   "LastName"   ]!=""){
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='subtitle' colspan='3'>Name</td></tr>";
        }
		if(global__DataDictionary[   "FirstName"   ]!=""){
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='leftside'>First Name</td>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<td class='rightside'>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +global__DataDictionary[   "FirstName"   ];
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"</td></tr>";
		}
		
		if(global__DataDictionary[   "MiddleName"   ]!=""){
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='leftside'>Middle Name</td>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<td class='rightside'>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +global__DataDictionary[   "MiddleName"   ];
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"</td></tr>";
		}
		if(global__DataDictionary[   "LastName"   ]!=""){
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='leftside'>Last Name</td>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<td class='rightside'>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +global__DataDictionary[   "LastName"   ];
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"</td></tr>";
		}
		
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='blank2' colspan='2'>&nbsp</td></tr>";
		
		if(global__DataDictionary[   "WorkEmail"   ]!="" || global__DataDictionary[   "WorkAddress"   ]!=""){
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='subtitle' colspan='3'>Contact Information</td></tr>";
		}
		if(global__DataDictionary[   "WorkEmail"   ]!=""){
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='leftside'>Work Email Address</td>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<td class='rightside'>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +global__DataDictionary[   "WorkEmail"   ];
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"</td></tr>";
		}
		if(global__DataDictionary[   "WorkAddress"   ]!=""){
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='leftside'>Work Location / Address</td>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<td class='rightside'>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +global__DataDictionary[   "WorkAddress"   ];
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"</td></tr>";
		}
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='blank2' colspan='2'>&nbsp</td></tr>";
		
		if(global__DataDictionary[   "WorkType"   ]!="" || global__DataDictionary[   "WorkTitle"   ]!="" || global__DataDictionary[   "Supervisor"   ]!="" || global__DataDictionary[   "PercentageAppointment"   ]!="" || global__DataDictionary[   "ePHI"   ]!=""){
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='subtitle' colspan='3'>Employment Information</td></tr>";
		}
		if(global__DataDictionary[   "WorkType"   ]!=""){
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='leftside'>Employee Appointment Type</td>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<td class='rightside'>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +global__DataDictionary[   "WorkType"   ];
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"</td></tr>";
		}
		if(global__DataDictionary[   "WorkTitle"   ]!=""){
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='leftside'>Work Title</td>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<td class='rightside'>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +global__DataDictionary[   "WorkTitle"   ];
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"</td></tr>";
		}
		if(global__DataDictionary[   "Supervisor"   ]!=""){
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='leftside'>Supervisor / PI</td>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<td class='rightside'>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +global__DataDictionary[   "Supervisor"   ];
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"</td></tr>";
		}
		if(global__DataDictionary[   "PercentageAppointment"   ]!=""){
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='leftside'>Percentage Appointment</td>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<td class='rightside'>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +global__DataDictionary[   "PercentageAppointment"   ];
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"</td></tr>";
		}
		
		if(global__DataDictionary[   "ePHI"   ]!=""){
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='leftside'>ePHI (Electronic Patient Health Information) Access</td>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<td class='rightside'>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +global__DataDictionary[   "ePHI"   ];
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"</td></tr>";
		}
		
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='blank2' colspan='2'>&nbsp</td></tr>";
		if(global__DataDictionary[   "WorkStartDate"   ]!="" || global__DataDictionary[   "WorkEndDate"   ]!="" ){
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='subtitle' colspan='3'>Dates</td></tr>";
		}
		if(global__DataDictionary[   "WorkStartDate"   ]!=""){
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='leftside'>Work Start Date</td>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<td class='rightside'>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +global__DataDictionary[   "WorkStartDate"   ];
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"</td></tr>";
		}
		
		if(global__DataDictionary[   "WorkEndDate"   ]!=""){
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='leftside'>Work End Date</td>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<td class='rightside'>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +global__DataDictionary[   "WorkEndDate"   ];
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"</td></tr>";
		}
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='blank2' colspan='2'>&nbsp</td></tr>";
		if(global__DataDictionary[   "CreateLogin"   ]!="" || global__DataDictionary[   "NeurologyEmail"   ]!="" || global__DataDictionary[   "Performance"   ]!="" || global__DataDictionary[   "ElectiveForms"   ]!="" || global__DataDictionary[   "RemoteAccess"   ]!="" || global__DataDictionary[   "ForwardNeurology"   ]!="" || global__DataDictionary[   "ForwardExternal"   ]!="" || global__DataDictionary[   "CloneRights"   ]!="" ){
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='subtitle' colspan='3'>Account Access Requirements (IT)</td></tr>";
		}
		if(global__DataDictionary[   "CreateLogin"   ]!=""){
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='leftside'>Create Departmental Login</td>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<td class='rightside'>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +global__DataDictionary[   "CreateLogin"   ];
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"</td></tr>";
		}
		if(global__DataDictionary[   "NeurologyEmail"   ]!=""){
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='leftside'>Create Neurology email address</td>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<td class='rightside'>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +global__DataDictionary[   "NeurologyEmail"   ];
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"</td></tr>";
		}
		
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='leftside'>Absence Forms</td>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<td class='rightside'>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__8( "UWHC Clinic" , "UWHC_Clinic" , "" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "East Clinic" , "East_Clinic" , "" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "20 S. Park Clinic" , "20SPark" , "" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Sleep Clinic" , "Sleep_Clinic" , "" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Fellows" , "Fellows" , "" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Residents" , "Residents" , ""  );
		
		
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"</td></tr>";
		
		if(global__DataDictionary[   "Performance"   ]!=""){
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='leftside'>Setup on Performance Review Application</td>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<td class='rightside'>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +global__DataDictionary[   "Performance"   ];
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"</td></tr>";
		}
		if(global__DataDictionary[   "ElectiveForms"   ]!=""){
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='leftside'>Setup on Resident Electives Form (Residents Only)</td>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<td class='rightside'>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +global__DataDictionary[   "ElectiveForms"   ];
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"</td></tr>";
		}
		if(global__DataDictionary[   "RemoteAccess"   ]!=""){
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='leftside'>Setup Remote Access</td>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<td class='rightside'>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +global__DataDictionary[   "RemoteAccess"   ];
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"</td></tr>";
		}
		
		if(global__DataDictionary[   "ForwardNeurology"   ]!=""){
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='leftside'>Forward Neurology email to UWHC/UWMF</td>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<td class='rightside'>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +global__DataDictionary[   "ForwardNeurology"   ];
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"</td></tr>";
		}
		if(global__DataDictionary[   "ForwardExternal"   ]!=""){
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='leftside'>Forward UWMF/UWHC email to Neurology</td>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<td class='rightside'>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +global__DataDictionary[   "ForwardExternal"   ];
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"</td></tr>";
		}
		if(global__DataDictionary[   "CloneRights"   ]!=""){
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='leftside'>Clone another users access rights</td>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<td class='rightside'>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +global__DataDictionary[   "CloneRights"   ];
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"</td></tr>";
		}
		
		if(global__DataDictionary[   "CalendarPermissions"   ]!=""){
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='blank2' colspan='2'>&nbsp</td></tr>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='subtitle' colspan='3'>Calendar Permissions (IT)</td></tr>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='leftside'>Allow to view/edit these calendars (Provide Names)</td>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<td class='rightside'>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +global__DataDictionary[   "CalendarPermissions"   ];
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"</td></tr>";
		}
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='blank2' colspan='2'>&nbsp</td></tr>";
		if(global__DataDictionary[   "hidden__Faculty_All"   ]!="false" || global__DataDictionary[   "hidden__Faculty_CSC"   ]!="false" || global__DataDictionary[   "hidden__Faculty_20SPark"   ]!="false" || global__DataDictionary[   "hidden__Faculty_MSC"   ]!="false"|| global__DataDictionary[   "hidden__Faculty_UWMF"   ]!="false"|| global__DataDictionary[   "hidden__Faculty_UWMF_APP"   ]!="false" || global__DataDictionary[   "hidden__FacultyStaff_Everyone"   ]!="false" || global__DataDictionary[   "hidden__FacultyStaff_MFCB"   ]!="false" || global__DataDictionary[   "hidden__FacultyStaff_MSC"   ]!="false" || global__DataDictionary[   "hidden__FacultyStaff_Researchers"]  !="false"|| global__DataDictionary[   "hidden__FacultyStaff_Residents"   ]!="false" || global__DataDictionary[   "hidden__Admin_AllAdmin"   ]!="false" || global__DataDictionary[   "hidden__Admin_Applications"   ]!="false" || global__DataDictionary[   "hidden__Admin_Verification"   ]!="false" || global__DataDictionary[   "hidden__Admin_AppointmentLetters"   ]!="false"|| global__DataDictionary[   "hidden__Admin_FacStaffHire"   ]!="false" || global__DataDictionary[   "hidden__Admin_ClassifiedHire"   ]!="false"|| global__DataDictionary[   "hidden__Admin_SutulaSupport"   ]!="false" || global__DataDictionary[   "hidden__Gen_NeuroNews"   ]!="false" || global__DataDictionary[   "hidden__Gen_GrandRounds"   ]!="false" || global__DataDictionary[   "hidden__Gen_ResearchDay"   ]!="false" || global__DataDictionary[   "hidden__Gen_RSP"   ]!="false"|| global__DataDictionary[   "hidden__Gen_ccal"   ]!="false" || global__DataDictionary[   "hidden__Gen_peds"   ]!="false"){
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='subtitle' colspan='3'>Distribution Lists (IT)</td></tr>";
		}
	 	if(global__DataDictionary[   "hidden__Faculty_All"   ]!="false" || global__DataDictionary[   "hidden__Faculty_CSC"   ]!="false" || global__DataDictionary[   "hidden__Faculty_20SPark"   ]!="false" || global__DataDictionary[   "hidden__Faculty_MSC"   ]!="false"|| global__DataDictionary[   "hidden__Faculty_UWMF"   ]!="false"|| global__DataDictionary[   "hidden__Faculty_UWMF_APP"   ]!="false"){
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='blank2' colspan='2'>&nbsp</td></tr>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='subsubtitle' colspan='3'>Faculty</td></tr>";
		}
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + renamethis__8( "All Neurology Faculty" , "Faculty_All" , "faculty@neurology.wisc.edu" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "CSC Faculty" , "Faculty_CSC" , "cscfaculty@neurology.wisc.edu" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "20. S Park Faculty" , "Faculty_20SPark" ,"southpark@neurology.wisc.edu" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "MSC Faculty" , "Faculty_MSC" , "mscfaculty@neurology.wisc.edu" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Neurology UWMF Providers" , "Faculty_UWMF" , "uwmf@neurology.wisc.edu" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Neurology UWMF Advanced Practice Providers" ,"Faculty_UWMF_APP","uwmfapp@neurology.wisc.edu" );
		
		
		if(global__DataDictionary[   "hidden__FacultyStaff_Everyone"   ]!="false" || global__DataDictionary[   "hidden__FacultyStaff_MFCB"   ]!="false" || global__DataDictionary[   "hidden__FacultyStaff_MSC"   ]!="false" || global__DataDictionary[   "hidden__FacultyStaff_Researchers"   ]!="false"|| global__DataDictionary[   "hidden__FacultyStaff_Residents"   ]!="false"){
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='blank2' colspan='2'>&nbsp</td></tr>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='subsubtitle' colspan='3'>Faculty and Staff</td></tr>";
		}
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "All Faculty  & Staff" , "FacultyStaff_Everyone" , "everyone@neurology.wisc.edu" ) ;
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "MFCB Faculty & Staff" , "FacultyStaff_MFCB" , "mfcb@neurology.wisc.edu" ) ;
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "MSC Faculty & Staff" , "FacultyStaff_MSC" , "msc@neurology.wisc.edu" ) ;
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Researchers" , "FacultyStaff_Researchers" , "researchers@neurology.wisc.edu" ) ;
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Residents" , "FacultyStaff_Residents" , "residents@neurology.wisc.edu" );
		
		if(global__DataDictionary[   "hidden__Admin_AllAdmin"   ]!="false" || global__DataDictionary[   "hidden__Admin_Applications"   ]!="false" || global__DataDictionary[   "hidden__Admin_Verification"   ]!="false" || global__DataDictionary[   "hidden__Admin_AppointmentLetters"   ]!="false"|| global__DataDictionary[   "hidden__Admin_FacStaffHire"   ]!="false" || global__DataDictionary[   "hidden__Admin_ClassifiedHire"   ]!="false"|| global__DataDictionary[   "hidden__Admin_SutulaSupport"   ]!="false"){
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='blank2' colspan='2'>&nbsp</td></tr>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='subsubtitle' colspan='3'>Administration</td></tr>";
		}
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Administration Staff" , "Admin_AllAdmin" , "admin@neurology.wisc.edu" ) ;
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Employment Applications" , "Admin_Applications" , "applications@neurology.wisc.edu"); 
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Employment Verification" , "Admin_Verification" , "employmentverification@neurology.wisc.edu" ); 
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Appointment Letters" , "Admin_AppointmentLetters" , "appointmentlettersdistribution@neurology.wisc.edu" ) ;
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Faculty Staff Hire" , "Admin_FacStaffHire" , "facstaffhire@neurology.wisc.edu" ) ;
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Classified Hire" , "Admin_ClassifiedHire" , "classifiedhire@neurology.wisc.edu" ) ;
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Sutula Support" , "Admin_SutulaSupport" , "tsutula@neurology.wisc.edu" ); 
		
		if(global__DataDictionary[   "hidden__Gen_NeuroNews"   ]!="false" || global__DataDictionary[   "hidden__Gen_GrandRounds"   ]!="false" || global__DataDictionary[   "hidden__Gen_ResearchDay"   ]!="false" || global__DataDictionary[   "hidden__Gen_RSP"   ]!="false"|| global__DataDictionary[   "hidden__Gen_ccal"   ]!="false" || global__DataDictionary[   "hidden__Gen_peds"   ]!="false"){
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='blank2' colspan='2'>&nbsp</td></tr>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='subsubtitle' colspan='3'>Misc. Distribution Lists</td></tr>";
		}
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Neuro News" , "Gen_NeuroNews" , "neuronews@neurology.wisc.edu" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Grand Rounds List" , "Gen_GrandRounds" , "grandrounds@neurology.wisc.edu" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Research Day Mailing List" , "Gen_ResearchDay" , "researchday@neurology.wisc.edu" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "RSP Notifications" , "Gen_RSP" , "rsp@neurology.wisc.edu" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Neuropsychology - Camp Cope-A-Lot Study Group" , "Gen_ccal" , "nps__ccal@neurology.wisc.edu" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Neuropsychology - Peds Epilepsy Study Group" , "Gen_peds" , "nps__peds@neurology.wisc.edu" ) ;
		
		if(global__DataDictionary[   "hidden__Faculty_Drives_H"   ]!="false" || global__DataDictionary[   "hidden__Faculty_Drives_RuteckiDictation"   ]!="false" || global__DataDictionary[   "hidden__Faculty_Drives_HsuLab"   ]!="false" || global__DataDictionary[   "hidden__Faculty_Drives_StrokeLab"   ]!="false"|| global__DataDictionary[   "hidden__Faculty_Drives_Gallagher"   ]!="false" || global__DataDictionary[   "hidden__Faculty_Drives_QI"   ]!="false"|| global__DataDictionary[   "hidden__Faculty_Gallagher_Research"   ]!="false"  || global__DataDictionary[   "hidden__Faculty_Drives_StrokeLabEducation"   ]!="false" || global__DataDictionary[   "hidden__Faculty_Drives_Sutula_Recommendation"   ]!="false" || global__DataDictionary[   "hidden__Faculty_Drives_SutulaAdmin"   ]!="false" || global__DataDictionary[   "hidden__Faculty_Gallagher_Research"   ]!="false" || global__DataDictionary[   "hidden__Faculty_Drives_ExternalReview"   ]!="false" || global__DataDictionary[   "hidden__Research_Drives_Carrithers"   ]!="false" || global__DataDictionary[   "hidden__Research_Drives_MSCLabs"   ]!="false" || global__DataDictionary[   "hidden__Research_Drives_BurgerLab"   ]!="false" || global__DataDictionary[   "hidden__Research_Drives_MagantiLab"   ]!="false"|| global__DataDictionary[   "hidden__Research_Drives_RuteckiLab"   ]!="false" || global__DataDictionary[   "hidden__Research_Drives_Sutula"   ]!="false"|| global__DataDictionary[   "hidden__Research_Drives_EEGData"   ]!="false" || global__DataDictionary[   "hidden__Admin_Drives_Support"   ]!="false" || global__DataDictionary[   "hidden__Admin_Drives_GrandRounds"   ]!="false" || global__DataDictionary[   "hidden__Admin_Drives_AdminO"   ]!="false" || global__DataDictionary[   "hidden__Admin_Drives_Productivity"   ]!="false"|| global__DataDictionary[   "hidden__Admin_Drives_Archive"   ]!="false" || global__DataDictionary[   "hidden__Admin_Drives_grants"   ]!="false"|| global__DataDictionary[   "hidden__Admin_Drives_Residency"   ]!="false" || global__DataDictionary[   "hidden__Admin_Drives_Temp"   ]!="false" || global__DataDictionary[   "hidden__Admin_Drives_Coding"   ]!="false"){
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='blank2' colspan='2'>&nbsp</td></tr>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='subtitle' colspan='3'>Network Drives (IT)</td></tr>";
		}
		if(global__DataDictionary[   "hidden__Faculty_Drives_H"   ]!="false" || global__DataDictionary[   "hidden__Faculty_Drives_RuteckiDictation"   ]!="false" || global__DataDictionary[   "hidden__Faculty_Drives_HsuLab"   ]!="false" || global__DataDictionary[   "hidden__Faculty_Drives_StrokeLab"   ]!="false"|| global__DataDictionary[   "hidden__Faculty_Drives_Gallagher"   ]!="false" || global__DataDictionary[   "hidden__Faculty_Drives_QI"   ]!="false"|| global__DataDictionary[   "hidden__Faculty_Gallagher_Research"   ]!="false"  || global__DataDictionary[   "hidden__Faculty_Drives_StrokeLabEducation"   ]!="false" || global__DataDictionary[   "hidden__Faculty_Drives_Sutula_Recommendation"   ]!="false" || global__DataDictionary[   "hidden__Faculty_Drives_SutulaAdmin"   ]!="false" || global__DataDictionary[   "hidden__Faculty_Gallagher_Research"   ]!="false" || global__DataDictionary[   "hidden__Faculty_Drives_ExternalReview"   ]!="false"){
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='blank2' colspan='2'>&nbsp</td></tr>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='subsubtitle' colspan='3'>Faculty</td></tr>";
		}
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Personal H Drive (H)" , "Faculty_Drives_H" , "Server Name : CORONAL" ) ;
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Rutecki Dictation (H)" , "Faculty_Drives_RuteckiDictation" , "Server Name : CORONAL" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "HSU Lab Drive (L)" , "Faculty_Drives_HsuLab" , "Server Name : CORONAL" ) ;
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Stroke Lab Drive (L)" , "Faculty_Drives_StrokeLab" , "Server Name : CORONAL" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Gallagher Movies (M)" , "Faculty_Drives_Gallagher" , "Server Name : CORONAL" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "QI Project (Q)" , "Faculty_Drives_QI" , "Server Name : CORONAL" ) ;
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Gallagher Research (R)" , "Faculty_Gallagher_Research" , "Server Name : CORONAL" ) ;
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Stroke Lab Education (S)" , "Faculty_Drives_StrokeLabEducation" , "Server Name : CORONAL" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Sutula Recommendation (U)" , "Faculty_Drives_Sutula_Recommendation" , "Server Name : CORONAL" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Sutula Admin(U)" , "Faculty_Drives_SutulaAdmin" , "Server Name : CORONAL" );
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "External Review(V)" , "Faculty_Drives_ExternalReview" , "Server Name : CORONAL" );
		if(global__DataDictionary[   "hidden__Research_Drives_Carrithers"   ]!="false" || global__DataDictionary[   "hidden__Research_Drives_MSCLabs"   ]!="false" || global__DataDictionary[   "hidden__Research_Drives_BurgerLab"   ]!="false" || global__DataDictionary[   "hidden__Research_Drives_MagantiLab"   ]!="false"|| global__DataDictionary[   "hidden__Research_Drives_RuteckiLab"   ]!="false" || global__DataDictionary[   "hidden__Research_Drives_Sutula"   ]!="false"|| global__DataDictionary[   "hidden__Research_Drives_EEGData"   ]!="false"){
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='blank2' colspan='2'>&nbsp</td></tr>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='subsubtitle' colspan='3'>MSC Research Drives</td></tr>";
		}
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Carrithers Lab (I)" , "Research_Drives_Carrithers" , "Server Name : PROTEAS" ) ;
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "MSC Labs - Common (L)" , "Research_Drives_MSCLabs" , "Server Name : PROTEAS" ); 
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Burger Lab (M)" , "Research_Drives_BurgerLab" , "Server Name : PROTEAS" ) ;
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Maganti Lab (M)" , "Research_Drives_MagantiLab" , "Server Name : PROTEAS" ) ;
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Rutecki Lab (R)" , "Research_Drives_RuteckiLab" , "Server Name : PROTEAS" ) ;
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Sutula Lab Drive (S)" , "Research_Drives_Sutula" , "Server Name : PROTEAS" ) ;
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "MSC EEG Data (W)" , "Research_Drives_EEGData" , "Server Name : PROTEAS" );
		if(global__DataDictionary[   "hidden__Admin_Drives_Support"   ]!="false" || global__DataDictionary[   "hidden__Admin_Drives_GrandRounds"   ]!="false" || global__DataDictionary[   "hidden__Admin_Drives_AdminO"   ]!="false" || global__DataDictionary[   "hidden__Admin_Drives_Productivity"   ]!="false"|| global__DataDictionary[   "hidden__Admin_Drives_Archive"   ]!="false" || global__DataDictionary[   "hidden__Admin_Drives_grants"   ]!="false"|| global__DataDictionary[   "hidden__Admin_Drives_Residency"   ]!="false" || global__DataDictionary[   "hidden__Admin_Drives_Temp"   ]!="false" || global__DataDictionary[   "hidden__Admin_Drives_Coding"   ]!="false"){
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='blank2' colspan='2'>&nbsp</td></tr>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='subsubtitle' colspan='3'>Administration</td></tr>";
		}
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Support Staff (S)" , "Admin_Drives_Support" , "Server Name: CORONAL" ) ;
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Grand Rounds (K)" , "Admin_Drives_GrandRounds" , "Server Name: CORONAL" ) ;
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Admin (O)" , "Admin_Drives_AdminO" , "Server Name: CORONAL" ); 
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Productivity Reports (O)" , "Admin_Drives_Productivity" , "Server Name: CORONAL" ); 
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Archive (P)" , "Admin_Drives_Archive" , "Server Name: CORONAL" ) ;
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Grants (Q)" , "Admin_Drives_grants" , "Server Name: CORONAL" ) ;
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Residency Program (R)" , "Admin_Drives_Residency" , "Server Name: CORONAL" ) ;
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Temp Drive (T)" , "Admin_Drives_Temp" , "Server Name: CORONAL" ); 
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +renamethis__8( "Coding (Z)" , "Admin_Drives_Coding" , "Server Name: CORONAL" ) ;
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='blank2' colspan='2'>&nbsp</td></tr>";
		
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='subtitle' colspan='3'>Requestor Information</td></tr>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='leftside'>Login Name</td>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<td class='rightside'>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +Request . ServerVariables[ "LOGON_USER" ] . ToString();
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"</td></tr>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='leftside'>IP Address</td>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<td class='rightside'>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +Request   .   ServerVariables[   "REMOTE_ADDR"   ]  . ToString();
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"</td></tr>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      </table>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "<br><br>";
		if(global__DataDictionary[   "Notes"   ]!=""){
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "<table>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='blank2' colspan='2'>&nbsp</td></tr>";
		
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='subtitle' colspan='3'>Notes</td></tr>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"<tr><td class='textarea'>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +global__DataDictionary[   "Notes"   ];
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"</td>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE +"</td></tr>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "      </table>";
}
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "   </center>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "</body>";
		string__SEND_THIS_MESSAGE = string__SEND_THIS_MESSAGE + "</html>";

		MailMessage smtp__MESSAGE = new MailMessage();
		smtp__MESSAGE . To . Add( "is@neurology.wisc.edu" );	
		smtp__MESSAGE . To . Add( "dziuk@neurology.wisc.edu" );	
		smtp__MESSAGE . To . Add( "johnson@neurology.wisc.edu" );	
		smtp__MESSAGE . To . Add( "broihahn@neurology.wisc.edu" );	
		smtp__MESSAGE . To . Add( "matchey@neurology.wisc.edu" );	
		smtp__MESSAGE . To . Add( "patchak@neurology.wisc.edu" );	
		smtp__MESSAGE . To . Add( "zalesak@neurology.wisc.edu" );	
		smtp__MESSAGE . To . Add( "helpdesk@neurology.wisc.edu" );	
		
		
	
		
		
		
		
		if(global__DataDictionary[   "WorkEndDate"   ]==""){
		smtp__MESSAGE . Subject = "[WEB FORM] New User Access Request ("+global__DataDictionary[   "FirstName"   ]+" "+global__DataDictionary[   "LastName"   ]+")";}
		if(global__DataDictionary[   "WorkStartDate"   ]==""){
		smtp__MESSAGE . Subject = "[WEB FORM] User Access Termination Request ("+global__DataDictionary[   "FirstName"   ]+", "+global__DataDictionary[   "LastName"   ]+")";}
		smtp__MESSAGE . From = new MailAddress( string__LOGGED_IN_USER + "@neurology.wisc.edu" );
		smtp__MESSAGE . Body = string__SEND_THIS_MESSAGE;
		smtp__MESSAGE . IsBodyHtml = true;
		SmtpClient smtp__CLIENT = new SmtpClient( "relay.neurology.wisc.edu" );
		smtp__CLIENT . Send( smtp__MESSAGE );

		Response . Write( string__SEND_THIS_MESSAGE );
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
     
	 if(string__CLASS=="selected"){
		String string__RETURN_THIS = null;
		string__RETURN_THIS = string__RETURN_THIS + "<tr>";
		string__RETURN_THIS = string__RETURN_THIS + "<td class='" + string__CLASS + "' style='width:230px;'>";
		string__RETURN_THIS = string__RETURN_THIS + string__LABEL;
		string__RETURN_THIS = string__RETURN_THIS + "</td>";
		string__RETURN_THIS = string__RETURN_THIS + "<td class='" + string__CLASS + "' style='width:670px;'>";
		string__RETURN_THIS = string__RETURN_THIS + string__EMAIL_ADDRESS;
		string__RETURN_THIS = string__RETURN_THIS + "</td>";
		string__RETURN_THIS = string__RETURN_THIS + "</tr>";
		return string__RETURN_THIS;}
		else
		return null;
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
