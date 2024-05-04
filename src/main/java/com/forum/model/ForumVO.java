package com.forum.model;

public class ForumVO implements java.io.Serializable{
	private Integer forumNumber;
	private String name;
	
	public ForumVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ForumVO(Integer forumNumber, String name) {
		super();
		this.forumNumber = forumNumber;
		this.name = name;
	}
	public Integer getForumNumber() {
		return forumNumber;
	}
	public void setForumNumber(Integer forumNumber) {
		this.forumNumber = forumNumber;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
}
