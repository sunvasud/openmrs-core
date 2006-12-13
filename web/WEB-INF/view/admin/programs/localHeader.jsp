<ul id="menu">
	<li class="first">
		<a href="${pageContext.request.contextPath}/admin"><spring:message code="admin.title.short"/></a>
	</li>
	<openmrs:hasPrivilege privilege="Manage Programs">
		<li <c:if test="<%= request.getRequestURI().contains("programs/program") %>">class="active"</c:if>>
			<a href="${pageContext.request.contextPath}/admin/programs/program.list">
				<spring:message code="Program.manage"/>
			</a>
		</li>
	</openmrs:hasPrivilege>
	<openmrs:hasPrivilege privilege="Manage Programs">
		<li <c:if test="<%= request.getRequestURI().contains("programs/conversion") %>">class="active"</c:if>>
			<a href="${pageContext.request.contextPath}/admin/programs/conversion.list">
				<spring:message code="Program.conversion.manage"/>
			</a>
		</li>
	</openmrs:hasPrivilege>
</ul>