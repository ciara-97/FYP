package io.springbootstarter.user;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import io.springbootstarter.instagram.InstagramAccount;
import io.springbootstarter.twitter.TwitterAccount;

@Entity
public class User {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="user_id")
	private int id;
	
	private String firstName;
	private String surname;
	private String dob;
	private String country;
	private String username;
	private String password;
	
	@OneToMany(targetEntity=InstagramAccount.class, cascade = CascadeType.ALL, fetch=FetchType.EAGER)
	private Set<InstagramAccount> iAccount = new HashSet<InstagramAccount>();
	
	@OneToMany(targetEntity=TwitterAccount.class, cascade = CascadeType.ALL, fetch=FetchType.EAGER)
	private Set<TwitterAccount> tAccount = new HashSet<TwitterAccount>();
	
	
	public User() {
		
	}
	
	public User(int id) {
		this.id = id;
	}

	public User(int id, String firstName, String surname, String dob, String country, String username,
			String password) {
		//super();
		this.id = id;
		this.firstName = firstName;
		this.surname = surname;
		this.dob = dob;
		this.country = country;
		this.username = username;
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Set<InstagramAccount> getiAccount() {
		return iAccount;
	}

	public void setiAccount(Set<InstagramAccount> iAccount) {
		this.iAccount = iAccount;
	}
	

	public Set<TwitterAccount> gettAccount() {
		return tAccount;
	}

	public void settAccount(Set<TwitterAccount> tAccount) {
		this.tAccount = tAccount;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", firstName=" + firstName + ", surname=" + surname + ", dob=" + dob + ", country="
				+ country + ", username=" + username + ", password=" + password + "]";
	}
	
	
	
}
