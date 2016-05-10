// Model class for products

package com.womenadda.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="Product")
public class Product implements Serializable {
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
int id;
String name, brand, category,description,color;
double price;
public Product()
{
	
}

/**
 * @return the id
 */
public int getId() {
	return id;
}
/**
 * @param id the id to set
 */
public void setId(int id) {
	this.id = id;
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
 * @return the brand
 */
public String getBrand() {
	return brand;
}
/**
 * @param brand the brand to set
 */
public void setBrand(String brand) {
	this.brand = brand;
}
/**
 * @return the category
 */
public String getCategory() {
	return category;
}
/**
 * @param category the category to set
 */
public void setCategory(String category) {
	this.category = category;
}
/**
 * @return the description
 */
public String getDescription() {
	return description;
}
/**
 * @param description the description to set
 */
public void setDescription(String description) {
	this.description = description;
}
/**
 * @return the color
 */
public String getColor() {
	return color;
}
/**
 * @param color the color to set
 */
public void setColor(String color) {
	this.color = color;
}
/**
 * @return the price
 */
public double getPrice() {
	return price;
}
/**
 * @param price the price to set
 */
public void setPrice(double price) {
	this.price = price;
}

	
@Override
public String toString()
{
	
return "id="+id+",name="+name+",brand="+brand+",category="+category+",description="+description+",price="+price;
}

	
	

}
