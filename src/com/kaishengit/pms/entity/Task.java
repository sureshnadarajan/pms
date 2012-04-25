package com.kaishengit.pms.entity;

public class Task {

	private String id;
	private String name;
	private String desc;
	private String state;
	private String level;
	private String beginTime;
	private String endTime;
	private String createTime;
	private String employeeId;
	private int rate = 0;
	private Employee employee;
	private String goalid;
	private Goal goal;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getBeginTime() {
		return beginTime;
	}
	public void setBeginTime(String beginTime) {
		this.beginTime = beginTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public String getCreateTime() {
		return createTime;
	}
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	public String getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(String employeeId) {
		this.employeeId = employeeId;
	}
	public Employee getEmployee() {
		return employee;
	}
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	public String getGoalid() {
		return goalid;
	}
	public void setGoalid(String goalid) {
		this.goalid = goalid;
	}
	public Goal getGoal() {
		return goal;
	}
	public void setGoal(Goal goal) {
		this.goal = goal;
	}
	public int getRate() {
		return rate;
	}
	public void setRate(int rate) {
		if(rate > 100) {
			rate = 100;
		} else if(rate < 0) {
			rate = 0;
		}
		this.rate = rate;
	}
	
	
}
