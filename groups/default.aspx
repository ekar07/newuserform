<%@ Page Language="C#" %>

<%@ Import Namespace="System.DirectoryServices" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
   private void Page_Load ( object sender , System . EventArgs e )
   ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
   {
      DirectoryEntry objADAM;                   // Binding object.
      DirectoryEntry objGroupEntry;             // Group Results.
      DirectorySearcher objSearchADAM;          // Search object.
      SearchResultCollection objSearchResults;  // Results collection.

      // Get the AD LDS object.
      objADAM = new DirectoryEntry ( "LDAP://DC=neurology,DC=wisc,DC=edu" , "vpnauth" , "nU8-5rug" );
      objADAM . RefreshCache ( );

      // Get search object, specify filter and scope, perform search.
      objSearchADAM = new DirectorySearcher ( objADAM );
      objSearchADAM . Filter = "(&(objectClass=group))";
      objSearchADAM . SearchScope = SearchScope . Subtree;
      objSearchResults = objSearchADAM . FindAll ( );

      // Enumerate groups and members.
      foreach ( SearchResult objResult in objSearchResults )
      {
         objGroupEntry = objResult . GetDirectoryEntry ( );
         String string__GROUP = objGroupEntry . Name;
         if ( string__GROUP . StartsWith ( @"CN=\# " )  )
         {
            string__GROUP = Regex . Replace ( string__GROUP , @"^CN=" , "" );
            string__GROUP = Regex . Replace ( string__GROUP , @"^(\\#|\$) " , "" );
            Response . Write ( "<BR>" );
            Response . Write ( "<B>" + string__GROUP + "</b>" );
            Response . Write ( "<BR>" );
            String string__USERS = null;
            foreach ( object objMember in objGroupEntry . Properties [ "member" ] )
            {
               String string__USER = objMember . ToString ( );
               string__USER = Regex . Replace ( string__USER , "^CN=" , "" );
               string__USER = Regex . Replace ( string__USER , ",CN=Users,DC=neurology,DC=wisc,DC=edu$" , "" );
               string__USERS = string__USERS + "\t" + string__USER;
            }
			
			if(string__USERS!=null){
            string__USERS = Regex . Replace ( string__USERS , @"^\t" , "" );
            String[] string__USERS__SPLIT = string__USERS . Split ( '\t' );
            Array . Sort ( string__USERS__SPLIT );
            foreach ( String string__USERS__SPLIT__USER in string__USERS__SPLIT )
            {
               Response . Write ( string__USERS__SPLIT__USER );
               Response . Write ( "<BR>" );
            }
			}
         }
      }
      ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
   }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
</body>
</html>
