<%@ include file="/jsp/common/taglibs.jsp"%>
<%@ page import="org.acegisecurity.context.SecurityContextHolder" %>
<%@ page import="org.acegisecurity.Authentication" %>
<%@ page import="org.acegisecurity.ui.AccessDeniedHandlerImpl" %>

<h1><fmt:message key="error.accessDenied"/></h1>

<p>
<%= request.getAttribute(AccessDeniedHandlerImpl.ACEGI_SECURITY_ACCESS_DENIED_EXCEPTION_KEY)%>

<p>

<%		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) { %>
			Authentication object as a String: <%= auth.toString() %><BR><BR>
<%      } %>
