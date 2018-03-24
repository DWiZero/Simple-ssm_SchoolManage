package cn.cw.school.po;

import java.util.List;

public class Page {

	private int totalPage;
	private int pageSize=5;
	
	private int totalRecord; 
	private int pageNum; 
	
	private List<Title> list;
	
	private int startIndex;
	private int endIndex;
	
	private int startPage;
	private int endPage; 
	
	public Page(int totalRecord, int pageNum) {
		super();
		this.totalRecord = totalRecord;
		this.pageNum = pageNum;
		this.totalPage=(this.totalRecord+this.pageSize-1)/this.pageSize;
		this.startIndex=(this.pageNum-1)*this.pageSize;
		this.endIndex=startIndex+pageSize;
		
		if(totalPage<=10){
			this.startPage=1;
			this.endPage=this.totalPage;
		}else{
			this.startPage=pageNum-4;
			this.endPage=pageNum+5;
			if(startPage<1){
				this.startPage=1;
				this.endPage=10;
			}
			if(endPage>totalPage){
				this.endPage=this.totalPage;
				this.startPage=this.totalPage-9;			
				}
		}
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalRecord() {
		return totalRecord;
	}

	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public List<Title> getList() {
		return list;
	}

	public void setList(List<Title> list) {
		this.list = list;
	}

	public int getStartIndex() {
		return startIndex;
	}

	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	

	public int getEndIndex() {
		return endIndex;
	}

	public void setEndIndex(int endIndex) {
		this.endIndex = endIndex;
	}
}
