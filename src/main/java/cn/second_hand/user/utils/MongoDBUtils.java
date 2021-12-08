package cn.second_hand.user.utils;

import java.util.ArrayList;
import java.util.List;

import com.mongodb.MongoCredential;
import com.mongodb.ServerAddress;
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoDatabase;
 

public class MongoDBUtils {

    public static MongoDatabase getConnect()
    {
//		 ConnectionString connString = new ConnectionString(
//			    "mongodb://marin:a123456@ds019950.mlab.com:19950/heroku_p78k6xgn"
//			);
//			MongoClientSettings settings = MongoClientSettings.builder()
//			    .applyConnectionString(connString)
//			    .retryWrites(false)
//			    .build();
    	
    	ServerAddress serverAddress=new ServerAddress("localhost",27017);
		System.out.println("serverAddress:"+serverAddress);
		List<ServerAddress> addrs=new ArrayList<ServerAddress>();
		addrs.add(serverAddress);
		
//		MongoCredential credential=MongoCredential.createCredential("root", "admin", "123456".toCharArray());
//		//System.out.println("credential:"+credential);
//		List<MongoCredential> credentials=new ArrayList<MongoCredential>();
//		credentials.add(credential);
		
		
//		MongoClients.create(settings);
//		"heroku_p78k6xgn"
    	
			MongoClient mongoClient = MongoClients.create();
			MongoDatabase database = mongoClient.getDatabase("second-hand-market");
			return  database;
    
}
}
