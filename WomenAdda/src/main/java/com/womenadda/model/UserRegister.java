/**
 * 
 */
package com.womenadda.model;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * @author admin
 *
 */
public class UserRegister {
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
int userId;
String name,password,gender,email,address,mobile;
/**
 * @return the userid
 */

public UserRegister()
{
	
}

/**
 * @return the mobile
 */
public String getMobile() {
	return mobile;
}

/**
 * @param mobile the mobile to set
 */
public void setMobile(String mobile) {
	this.mobile = mobile;
}

/**
 * @return the userId
 */
public int getUserId() {
	return userId;
}

/**
 * @param userId the userId to set
 */
public void setUserId(int userId) {
	this.userId = userId;
}

/**
 * @return the name
 */
public String getName() {
	return name;
}
/**
 * @param name the name to set
 */
public void setName(String name) {
	this.name = name;
}
/**
 * @return the password
 */
public String getPassword() {
	return password;
}
/**
 * @param password the password to set
 */
public void setPassword(String password) {
	this.password = password;
}
/**
 * @return the gender
 */
public String getGender() {
	return gender;
}
/**
 * @param gender the gender to set
 */
public void setGender(String gender) {
	this.gender = gender;
}
/**
 * @return the email
 */
public String getEmail() {
	return email;
}
/**
 * @param email the email to set
 */
public void setEmail(String email) {
	this.email = email;
}
/**
 * @return the address
 */
public String getAddress() {
	return address;
}
/**
 * @param address the address to set
 */
public void setAddress(String address) {
	this.address = address;
}

	
	
	
}
