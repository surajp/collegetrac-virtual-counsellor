package collegetrac.actions;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import collegetrac.beans.Student;
import collegetrac.utils.GetMongo;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBObject;
import com.opensymphony.xwork2.ActionSupport;

public class GetStudent extends ActionSupport implements ServletRequestAware{

	private static final long serialVersionUID = 2126992425254601621L;
	
	private static HttpServletRequest req;

	private Student student;

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
		try {
			gm=new GetMongo();
			DB college = gm.getConnection();
			
			DBCollection iptrack=college.getCollection("ip_track");
			String ip=getClientIpAddr(req);
			BasicDBObject ipobj=new BasicDBObject("ip",ip);
			String currtime=(new SimpleDateFormat("MM/dd/yyyy hh:mm:ss")).format(new Date(System.currentTimeMillis()));
			ipobj.put("timestamp", currtime);
			iptrack.save(ipobj);
			
			
			BasicDBObject collobj = new BasicDBObject();
			DBCollection studentColl = college.getCollection("student");
			collobj.put("Email", getStudent().getEmail());
			DBObject studentObj = studentColl.findOne(collobj);
			if (studentObj != null) {
				getStudent().setAge(
						new Integer(studentObj.get("Age").toString()));
				getStudent().setGrade(studentObj.get("Grade").toString());
				getStudent().setFirstname(
						studentObj.get("Firstname").toString());
				getStudent().setLastname(studentObj.get("Lastname").toString());
				getStudent().setFavoritesub(studentObj.get("Fav").toString());
				getStudent().setLeastfavoritesub(
						studentObj.get("Leastfav").toString());
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

	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		// TODO Auto-generated method stub
		
		req=arg0;
		
	}
	
	
	private static String getClientIpAddr(HttpServletRequest request) {  
        String ip = request.getHeader("X-Forwarded-For");  
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
            ip = request.getHeader("Proxy-Client-IP");  
        }  
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
            ip = request.getHeader("WL-Proxy-Client-IP");  
        }  
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
            ip = request.getHeader("HTTP_CLIENT_IP");  
        }  
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
            ip = request.getHeader("HTTP_X_FORWARDED_FOR");  
        }  
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
            ip = request.getRemoteAddr();  
        }  
        return ip;  
    } 

}
