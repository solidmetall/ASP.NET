<%@ Application Language="C#" %>

<script runat="server">

    public static string app_name;
    public static int app_count;
    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup
        app_count = 1;
        app_name = "Hello" + app_count.ToString();
    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started
        app_count++;
        app_name = "Hello" + app_count.ToString();
    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>
