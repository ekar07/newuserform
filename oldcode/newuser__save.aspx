<%@ Page Language="C#" Debug="true" %>

<%@ Import Namespace="System" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Net" %>
<%@ Import Namespace="System.Net.Mail" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	void Page_Load( object sender , System . EventArgs e )
	{
		Response . Cache . SetNoStore();
		Response . Cache . SetCacheability( HttpCacheability . NoCache );

		String string__LOGGED_IN_USER = Request . ServerVariables[ "AUTH_USER" ] . Replace( @"NEUROLOGY\" , "" ) . ToLower();
		Int32 integer__DATABASE_ID_NUMBER = 0;
		String string__WHEN_WAS_THIS_RECORD_LAST_UPDATED = DateTime . Now . ToString( "MMM dd, yyyy HH:mm:ss.fff" );
		foreach( String string__FIELD__SHORT_NAME in Request . Form . AllKeys )
		{
			if( string__FIELD__SHORT_NAME != "__VIEWSTATE" )
			{
				String string__FIELD__VALUE = Request . Form[ string__FIELD__SHORT_NAME ];
				if( string__FIELD__VALUE != "" && string__FIELD__VALUE != "false" )
				{
					String string__CONNECTION_STRING = @"Data Source=(local);Initial Catalog=dsb__ADMIN;User ID=KATE__SQL;Password=6!rutRef";
					SqlConnection sql__CONNECTION = new SqlConnection( string__CONNECTION_STRING );
					sql__CONNECTION . Open();
					string string__SQL = "INSERT   INTO   table__NEWUSER(   integer__DATABASE_ID_NUMBER,   datetime__WHEN_WAS_THIS_RECORD_LAST_UPDATED,   text__WHO_UPDATED_THIS_RECORD,   text__FIELD__NAME,   text__FIELD__VALUE   )VALUES(   " + integer__DATABASE_ID_NUMBER + ",   '" + string__WHEN_WAS_THIS_RECORD_LAST_UPDATED + "', '" + string__LOGGED_IN_USER + "',   '" + string__FIELD__SHORT_NAME + "',   '" + string__FIELD__VALUE + "'   );";
					SqlCommand sql__COMMAND = new SqlCommand( string__SQL , sql__CONNECTION );
					sql__COMMAND . ExecuteNonQuery();
					sql__CONNECTION . Close();
					sql__CONNECTION . Dispose();
					Response . Write( string__SQL + "<br><br>" );
				}
			}
		}
	}
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
</head>
<body>
</body>
</html>
