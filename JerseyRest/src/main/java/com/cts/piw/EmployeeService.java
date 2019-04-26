package com.cts.piw;
import java.util.Arrays;
import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.json.JSONException;
import org.json.JSONObject;

import com.sun.jersey.api.view.Viewable;
 
@Path("/")
public class EmployeeService {
 
	@GET
	@Produces("application/json")
	@Path("/employees")
	public Response employeeList() throws JSONException {
		
		Employee e1 = new Employee();
		Employee e2 = new Employee();
		Employee e3 = new Employee();
		
		e1.setEid(1);
		e1.setEname("Sankara");
		e1.setAge(18);
		
		e2.setEid(2);
		e2.setEname("Narayanan");
		e2.setAge(17);
		
		e3.setEid(3);
		e3.setEname("Srinivasan");
		e3.setAge(16);
		
		List<Employee> employeeListObj = Arrays.asList(e1, e2, e3);
		
		/*
		 * JSONArray jsonArray = new JSONArray(); jsonArray.put(employeeListObj);
		 */
		
		
		  JSONObject jsonObject = new JSONObject(); jsonObject.put("employeeList",
				  employeeListObj);
		 
 
		String result = jsonObject.toString();
		return Response.status(200).entity(result).build();
	}

	  @GET  
	  @Produces(MediaType.TEXT_HTML) 
	  public Response home() {  
		  return Response.status(200).entity(new Viewable("/index.jsp")).build();
	  }
	  
}