package com.pixel.excel;

import java.util.Date;
import java.util.List;

public class ExcelSheet{
	
	private Long id;
	private String file_name;
	private String file_hash;
	private int total_added;
	private String sheet_type;
	private List<RejectedLeadRow> error;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	public String getFile_hash() {
		return file_hash;
	}
	public void setFile_hash(String file_hash) {
		this.file_hash = file_hash;
	}
	public int getTotal_added() {
		return total_added;
	}
	public void setTotal_added(int total_added) {
		this.total_added = total_added;
	}
	public String getSheet_type() {
		return sheet_type;
	}
	public void setSheet_type(String sheet_type) {
		this.sheet_type = sheet_type;
	}
	public List<RejectedLeadRow> getError() {
		return error;
	}
	public void setError(List<RejectedLeadRow> error) {
		this.error = error;
	}
	public Date getCreation_date() {
		return creation_date;
	}
	public void setCreation_date(Date creation_date) {
		this.creation_date = creation_date;
	}
	public Date getExpire_date() {
		return expire_date;
	}
	public void setExpire_date(Date expire_date) {
		this.expire_date = expire_date;
	}
	private Date creation_date = new Date();
	private Date expire_date = new Date();
	
	
}
