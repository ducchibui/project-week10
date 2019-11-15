<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java"%>
<%
	Map<String, String[]> resourcePermission = new HashMap<String, String[]>();

	//Define the list of resource that user who has admin role can access
	resourcePermission.put("admin", new String[] { "product_list", "add_product", "delete_product" });

	//Define the list of resource that user who has user role can access
	resourcePermission.put("user", new String[] { "protection_registration", "protection_list",
			"protection_claim", "claim_list", "protection_claim", "protection_claim", "protection_claim", });
	//Get login user information from session object
	String username = (String) session.getAttribute("username");
	String role = (String) session.getAttribute("role");

	//If user is not login then redirect the user to login page
	if (username == null || username.isEmpty()) {
		response.sendRedirect("login.jsp");
	} else {

		//Following code checks whether the login user has permission on current page.
		//If user does not have the permission on current page the redirect user to default home page
		String[] allowResources = resourcePermission.get(role);

		String url = request.getRequestURL().toString();
		String resource = url.substring(url.lastIndexOf("/") + 1, url.indexOf(".jsp"));
		Boolean isPermissionGrant = false;

		for (int i = 0; i < allowResources.length; i++) {
			if (resource.contains(allowResources[i])) {
				isPermissionGrant = true;
			}
		}

		if (!isPermissionGrant) {
			response.sendRedirect("page_not_found.jsp");
		}
	}
%>
