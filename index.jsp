<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
// 검색 문자열을 넘겨받지 못하면, 검색을 할 수 없다.
String search = request.getParameter("state");
// 검색의 처음과 끝에서 공백문자를 제거한다
String result;
if (search.equals("MO")) {
result = "<option value='St. Louis'>St. Louis</option>" + "<option value='Kansas City'>Kansas City</option>";
} else if (search.equals("WA")) {
result = "<option value='Seattle'>Seattle</option>" + "<option value='Spokane'>Spokane</option>" +
"<option value='Olympia'>Olympia</option>";
} else {
result = "No Cities Found";
}
out.print(result);
%>