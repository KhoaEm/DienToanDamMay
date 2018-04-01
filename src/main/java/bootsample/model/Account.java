package bootsample.model;
import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;

@Entity(name="account")
public class Account implements Serializable{
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String name;
	private String pass;
	@Temporal(TemporalType.TIMESTAMP )
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	
	public Account() {}
	public Account(String name, String pass) {
		super();
		this.name = name;
		this.pass = pass;
	}
	@Override
	public String toString() {
		return "Account [id=" + id + ", name=" + name + ", pass=" + pass + "]";
	}
}
