package collegetrac.actions;


import java.util.Arrays;
import java.util.List;


import collegetrac.beans.Student;
import collegetrac.utils.GetMongo;
import collegetrac.utils.States;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.opensymphony.xwork2.ActionSupport;

/**
 * Base Action class for the Tutorial package.
 */
public class AddStudent extends ActionSupport {

	private static final long serialVersionUID = 3515078654701117288L;
	private Student student;
	
	
	
	private List<States> states;
	

	

	public AddStudent(){
		setStates(Arrays.asList(States.values()));
	}

	

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		GetMongo gm=null;
		boolean update=false;
		try {
			gm=new GetMongo();
			DB college = gm.getConnection();
			BasicDBObject collobj = new BasicDBObject();
			DBCollection studentColl = college.getCollection("student");
			collobj.put("Email", getStudent().getEmail());
			if (studentColl.findOne(collobj) != null)
				update = true;
			System.out.println("update " + update);
			collobj.put("Firstname", getStudent().getFirstname());
			collobj.put("Lastname", getStudent().getLastname());
			collobj.put("Age", getStudent().getAge());
			collobj.put("Grade", getStudent().getGrade());
			collobj.put("Leastfav", getStudent().getLeastfavoritesub());
			collobj.put("Fav", getStudent().getFavoritesub());
			if (!update)
				studentColl.insert(collobj);
			else {
				BasicDBObject dbobj = new BasicDBObject("Email", getStudent()
						.getEmail());
				studentColl.update(dbobj, collobj);
			}

		} catch (Exception ex) {
			addActionError("Exception");
			return INPUT;
		}finally{
			if(gm!=null)
				gm.closeConnection();
		}
		return SUCCESS;

	}
	
	/*

	@Override
	public void validate() {
		// TODO Auto-generated method stub
		if (getStudent() == null || getStudent().getFirstname() == null
				|| "".equals(getStudent().getFirstname()))
			addFieldError("student.firstname", "First name is required");
		if (getStudent() == null || getStudent().getFirstname() == null
				|| "".equals(getStudent().getEmail()))
			addFieldError("student.firstname", "Email is required");
	}*/



	public List<States> getStates() {
		return states;
	}



	public void setStates(List<States> states) {
		this.states = states;
	}

}
