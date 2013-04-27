package collegetrac.utils;

import java.net.UnknownHostException;

import com.mongodb.DB;
import com.mongodb.Mongo;
import com.mongodb.WriteConcern;

public class GetMongo implements IConstants {
	Mongo mymongo=null;
	public DB getConnection() throws UnknownHostException{
		DB college=null;
		if(ISDEV){
			mymongo=new Mongo();
			college=mymongo.getDB("college");
		}
		else{
			mymongo=new Mongo("ds043037.mongolab.com",43037);
			college=mymongo.getDB("collegetracco");
			if(!college.authenticate("collegetrac", "CollegeCo@ch123".toCharArray())){
				System.out.println("Authentication failed");
				college=null;
			}
		}
		mymongo.setWriteConcern(WriteConcern.SAFE);
		return college;
	}
	
	public void closeConnection(){
		mymongo.close();
	}
}
