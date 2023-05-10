<%--client not added yet--%>
<%@page import="xyz.hydar.ee.HydarWS"%>
<%@page import="java.io.IOException" %>
<%!//Class.forName("HydarWS");
static{
	//Register an endpoint.
	HydarWS.registerEndpoint("websocket.jsp",
			HydarWS.endpointBuilder()
			.onOpen((session, out)->{
				//We can access the HTTP session of the handshake.
				out.print("Hello %s!".formatted(session.getAttribute("username")));
			})
			.onMessage((msg, out)->{
				out.print(msg);
				out.close();
			})
			.onClose((output)->System.out.println("Closing..."))
	);
}%>