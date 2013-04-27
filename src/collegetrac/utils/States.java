package collegetrac.utils;

public enum States {
	 
	ALABAMA("Alabama"),
	ALASKA("Alaska"),
	ARIZONA("Arizona"),
	NEW_MEXICO("New Mexico"),
	ARKANSAS("Arkansas"),
	CALIFORNIA("California"),
	MINNESOTA("Minnesota"),
	COLORADO("Colorado"),
	CONNECTICUT("Connecticut"),
	NEW_YORK("New York"),
	DELAWARE("Delaware"),
	DISTRICT_OF_COLUMBIA("District of Columbia"),
	VIRGINIA("Virginia"),
	FLORIDA("Florida"),
	GEORGIA("Georgia"),
	HAWAII("Hawaii"),
	IDAHO("Idaho"),
	ILLINOIS("Illinois"),
	INDIANA("Indiana"),
	TENNESSEE("Tennessee"),
	MICHIGAN("Michigan"),
	IOWA("Iowa"),
	KANSAS("Kansas"),
	MISSOURI("Missouri"),
	KENTUCKY("Kentucky"),
	LOUISIANA("Louisiana"),
	MAINE("Maine"),
	MARYLAND("Maryland"),
	MASSACHUSETTS("Massachusetts"),
	MISSISSIPPI("Mississippi"),
	MONTANA("Montana"),
	NEBRASKA("Nebraska"),
	NEVADA("Nevada"),
	NEW_HAMPSHIRE("New Hampshire"),
	NEW_JERSEY("New Jersey"),
	NORTH_CAROLINA("North Carolina"),
	NORTH_DAKOTA("North Dakota"),
	OHIO("Ohio"),
	WEST_VIRGINIA("West Virginia"),
	OKLAHOMA("Oklahoma"),
	OREGON("Oregon"),
	PENNSYLVANIA("Pennsylvania"),
	RHODE_ISLAND("Rhode Island"),
	SOUTH_CAROLINA("South Carolina"),
	SOUTH_DAKOTA("South Dakota"),
	TEXAS("Texas"),
	UTAH("Utah"),
	VERMONT("Vermont"),
	WASHINGTON("Washington"),
	WISCONSIN("Wisconsin"),
	WYOMING("Wyoming"),
	AMERICAN_SAMOA("American Samoa"),
	GUAM("Guam"),
	NORTHERN_MARIANAS("Northern Marianas"),
	PUERTO_RICO("Puerto Rico"),
	FEDERATED_STATES("Federated States of Micronesia"),
	PALAU("Palau"),
	VIRGIN_ISLANDS("Virgin Islands"),
	MARSHALL_ISLANDS("Marshall Islands");
	
	 private String displayName;
	 
	 States(String name){
			this.displayName=name;
	}
		
	 @Override
	public String toString() {
		// TODO Auto-generated method stub
		return displayName;
	}

}
