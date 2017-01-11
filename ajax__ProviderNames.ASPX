<%@Page     Language="C#"   Debug="true"        %>
<%@Import   Namespace="System"                  %>



<SCRIPT LANGUAGE="C#" RUNAT="server">
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
public    static    Int32    global__ButtonNumber   ;
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void Page_Load( object sender, System.EventArgs e )
{
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
static   String   function__DRAW(   String   ProviderName,   String   ProviderEmail   )
{
   String   string__RETURN_THIS   =   ""                                     ;
            string__RETURN_THIS   =   string__RETURN_THIS   +   "<TR>"       ;
            string__RETURN_THIS   =   string__RETURN_THIS   +   "   <TD   STYLE='padding:6px;width:95%;'>"   ;
            string__RETURN_THIS   =   string__RETURN_THIS   +   "      <INPUT      STYLE='color:#0000cc;font:11pt Arial;font-weight:bold;height:32px;padding:3px;text-align:left;width:100%;'   ONCLICK='javascript__ProviderName__OnClick(\""   +   ProviderName  +   "\", \""   +   ProviderEmail   +   "\");'   TYPE='BUTTON'   VALUE='"   +   ProviderName   +   "'   />"   ;
            string__RETURN_THIS   =   string__RETURN_THIS   +   "   </td>"   ;
            string__RETURN_THIS   =   string__RETURN_THIS   +   "</tr>"   ;
   //
   return   string__RETURN_THIS ;
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
</script>


<center>
<b>Select a provider from the list below
<TABLE   STYLE='border-collapse:collapse;font:11pt Arial;width:400px;'>
   <TR   STYLE='vertical-align:top;'>
      <TD   STYLE='padding:0px;width:50%;'>
         <TABLE   STYLE='border-collapse:collapse;border-width: 1px;font:11pt Arial;width:100%;'>
            <%=function__DRAW("Dr. Aagaard-Kienetz", "baagaard-kienitz@uwhealth.org"   )%>
            <%=function__DRAW("Dr. Ahmed", "azam.ahmed@neurosurgery.wisc.edu")%>
            <%=function__DRAW("Dr. Neiman", "d.niemann@neurosurg.wisc.edu"  )%>
            
            
            
            
         </table>
      </td>
      
            </td>
   </tr>
</table>
<BR>
   <INPUT   ONCLICK='javascript__ProviderName__OnClick(   "Cancel", "Cancel"   );'   STYLE='color:#cc0000;font:11pt Arial;font-weight:bold;height:32px;padding:3px;width:50%;'   TYPE='BUTTON'   VALUE='Cancel / Clear'></input>
         </center>      