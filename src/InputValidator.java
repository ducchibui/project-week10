

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

public class InputValidator {
	public static  String getInputData(String fieldName, String displayFieldName, HttpServletRequest request,
			ArrayList<String> errors) {
		if (request.getParameter(fieldName) == null || request.getParameter(fieldName).isEmpty()) {
			errors.add(displayFieldName + " is required");
			return "";
		} else {
			return request.getParameter(fieldName);
		}

	}
}
