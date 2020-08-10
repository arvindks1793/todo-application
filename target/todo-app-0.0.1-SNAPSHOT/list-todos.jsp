<%@ include file="header.jspf"%>
<%@ include file="navigation.jspf"%>
<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
<div class="container">
	<div>
		<a type="button" class="btn btn-primary btn-md" href="/add-todo">Add
			Todo</a>
	</div>
	<br>
	<div class="panel panel-primary" style= "width: 1150px">
		<div class="panel-heading" style= "width: 1150px">
			<h3>Welcome ${name}, your list of Todos</h3>
		</div>
		<div  class="panel-body" style= "width: 1150px">
			<table class="table table-striped" >
				<thead>
					<tr>
						<th width="20%">Description</th>
						<th width="20%">Updated Date</th>
						<th width="20%">Target Date</th>
						<th width="20%"></th>
						<th width="20%">Done</th>
					</tr>
				</thead>
				<tbody >
					<c:forEach items="${todos}" var="todo">
						<tr id = "tododList">
							<td>${todo.description}</td>
							<td><fmt:formatDate value="${todo.updatedDate}"
									pattern="dd/MM/yyyy" /></td>
									<td><fmt:formatDate value="${todo.targetDate}"
									pattern="dd/MM/yyyy" /></td>
							<td><a type="button" class="btn btn-success"
								href="/update-todo?id=${todo.id}">Update</a> <a type="button"
								class="btn btn-warning" href="/delete-todo?id=${todo.id}">Delete</a></td>
								<td><input type="checkbox" id="myCheck" onclick = "disable()" ></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</div>
<script type="text/javascript">
function disable(){
	document.getElementById("tododList").disabled = true;
}

</script>
	

<%@ include file="/footer.jspf"%>