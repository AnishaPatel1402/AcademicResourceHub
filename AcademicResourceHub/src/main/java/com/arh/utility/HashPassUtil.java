package com.arh.utility;

import org.springframework.security.crypto.bcrypt.BCrypt;

public class HashPassUtil {
	public static String hashPassword(String plainPassword) {
		return BCrypt.hashpw(plainPassword, BCrypt.gensalt(12));
	  }
	  public static boolean checkPassword(String plainPassword, String dbPassword) {
		return BCrypt.checkpw(plainPassword, dbPassword); 
	  }
}
