package collegetrac.actions;

import java.util.ArrayList;
import java.util.regex.Pattern;

import collegetrac.beans.College;
import collegetrac.utils.GetMongo;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.opensymphony.xwork2.ActionSupport;

public class GetCollege extends ActionSupport {

	private static final long serialVersionUID = 5051177801206482748L;

	private String collegename;
	private Integer desiredstrength;
	private Integer cost;
	private String location;

	private ArrayList<College> collegelist = new ArrayList<>();

	public ArrayList<College> getCollegelist() {
		return collegelist;
	}

	public void setCollegelist(ArrayList<College> collegelist) {
		this.collegelist = collegelist;
	}

	public String getCollegename() {
		return collegename;
	}

	public void setCollegename(String collegename) {
		this.collegename = collegename;
	}

	public Integer getDesiredstrength() {
		return desiredstrength;
	}

	public void setDesiredstrength(Integer desiredstrength) {
		this.desiredstrength = desiredstrength;
	}

	public Integer getCost() {
		return cost;
	}

	public void setCost(Integer cost) {
		this.cost = cost;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		GetMongo gm = null;
		try {
			gm = new GetMongo();
			DB college = gm.getConnection();
			DBCollection colleges = college.getCollection("master_college");
			BasicDBObject queryparams = new BasicDBObject();

			if (getCollegename().trim().length() > 0)
				queryparams.put("name", Pattern.compile(".*" + getCollegename()
						+ ".*", Pattern.CASE_INSENSITIVE));
			if (getDesiredstrength() > 0)
				queryparams.put("strength", new BasicDBObject("$lte",
						getDesiredstrength()));
			if (getCost() > 0)
				queryparams.put("cost_tuition", new BasicDBObject("$lte",
						getCost()));
			if (getCost() > 0)
				queryparams.put("cost_tuition", new BasicDBObject("$gt", 0));
			if (!getLocation().equals("0"))
				queryparams.put("state", getLocation());

			System.out.println("Query " + queryparams.toString());

			DBCursor cursor = colleges.find(queryparams);
			System.out.println("Found " + cursor.size() + " college");
			while (cursor.hasNext()) {
				BasicDBObject obj = (BasicDBObject) cursor.next();
				College colleg = new College();
				colleg.setName(obj.getString("name"));
				colleg.setStrength(obj.getInt("strength"));
				colleg.setCost(obj.getInt("cost_tuition"));
				colleg.setLocation(getLocation());
				colleg.setPhone(formatPhone(obj.getString("Tel")));
				colleg.setUrl(obj.getString("website"));
				if (colleg.getUrl().indexOf("http://") == -1)
					colleg.setUrl("http://" + colleg.getUrl());
				collegelist.add(colleg);
			}
		} catch (Exception ex) {
			addActionError("An exception occurred");
			return INPUT;
		} finally {
			if (gm != null)
				gm.closeConnection();
		}
		return SUCCESS;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	private String formatPhone(String phone) {
		return phone.substring(0, 3) + "-" + phone.substring(3, 6) + "-"
				+ phone.substring(6, 10);
	}

}
