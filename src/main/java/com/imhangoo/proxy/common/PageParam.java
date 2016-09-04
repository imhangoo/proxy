package com.imhangoo.proxy.common;

import java.util.List;

import com.imhangoo.proxy.entity.TableIp;

public class PageParam {

	private int currPage ; // current page number
	
	private int totalPage ; // total page count
	
	private int rowCount ; // total records count
	
	public static int pageSize = 10; // records per page
	
	private List<TableIp> data ; // records list in a page

	public int getCurrPage() {
		return currPage;
	}

	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getRowCount() {
		return rowCount;
	}

	public void setRowCount(int rowCount) {
		int totalPage = rowCount / pageSize;
		if (rowCount % pageSize > 0) {
			totalPage += 1;
		}
		setTotalPage(totalPage);
		this.rowCount = rowCount;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public List<TableIp> getData() {
		return data;
	}

	public void setData(List<TableIp> data) {
		this.data = data;
	}
	
	
}
