<%--An example of server-sided events--%>
<%response.resetBuffer();
response.setContentType("text/event-stream");
for(int i=0;i<20;i++){
	out.print("data: HYDAR "+System.currentTimeMillis());
	out.print("\nid: "+i+"\n\n");
	Thread.sleep(5000);
	response.flushBuffer();
}%>

