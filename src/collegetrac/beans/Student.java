package collegetrac.beans;

public class Student {
	private String firstname;
	private String lastname;
	private Integer id;
	private String grade;
	private Integer age;
	private String favoritesub;
	private String leastfavoritesub;
	private String email;
	
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getFavoritesub() {
		return favoritesub;
	}
	public void setFavoritesub(String favoritesub) {
		this.favoritesub = favoritesub;
	}
	public String getLeastfavoritesub() {
		return leastfavoritesub;
	}
	public void setLeastfavoritesub(String leastfavoritesub) {
		this.leastfavoritesub = leastfavoritesub;
	}


}
