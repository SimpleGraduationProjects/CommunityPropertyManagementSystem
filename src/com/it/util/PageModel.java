package com.it.util;

import java.util.List;

/**
 * 封装分页逻辑
 * 
 * @author Administrator
 * 
 */
@SuppressWarnings("unused")
public class PageModel<T> {

	public static final int PAGE_SIZE = 6000;
	// 最后一页

	private int buttomPageNo;

	// 当前页
	private int currentPageNo;

	// 结果集
	private List<T> list;

	// 下一页
	private int nextPageNo;

	// 每页多少条数据
	public int pageSize = PAGE_SIZE;

	// 上一页
	private int previousPageNo;

	// 首页
	private int topPageNo;

	// 共多少页
	private int totalPages;

	// 总记录数
	private int totalRecords;

	/**
	 * 尾页
	 * 
	 * @return
	 */
	public int getButtomPageNo() {
		return getTotalPages();
	}

	public int getCurrentPageNo() {
		return currentPageNo;
	}

	public List<T> getList() {
		return list;
	}

	/**
	 * 下一页
	 * 
	 * @return
	 */
	public int getNextPageNo() {
		if (this.currentPageNo >= getButtomPageNo()) {
			return getButtomPageNo();
		}
		return this.currentPageNo + 1;
	}

	public int getPageSize() {
		return pageSize;
	}

	/**
	 * 上一页
	 * 
	 * @return
	 */
	public int getPreviousPageNo() {
		if (this.currentPageNo <= 1) {
			return 1;
		}
		return this.currentPageNo - 1;
	}

	/**
	 * 首页
	 * 
	 * @return
	 */
	public int getTopPageNo() {
		return 1;
	}

	/**
	 * 返回总页数
	 * 
	 * @return
	 */
	public int getTotalPages() {
		return (totalRecords + pageSize - 1) / pageSize;
	}

	public int getTotalRecords() {
		return totalRecords;
	}

	public void setButtomPageNo(int buttomPageNo) {
		this.buttomPageNo = buttomPageNo;
	}

	public void setCurrentPageNo(int currentPageNo) {
		this.currentPageNo = currentPageNo;
	}

	public void setList(List<T> list) {
		this.list = list;
	}

	public void setNextPageNo(int nextPageNo) {
		this.nextPageNo = nextPageNo;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public void setPreviousPageNo(int previousPageNo) {
		this.previousPageNo = previousPageNo;
	}

	public void setTopPageNo(int topPageNo) {
		this.topPageNo = topPageNo;
	}

	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}

	public void setTotalRecords(int totalRecords) {
		this.totalRecords = totalRecords;
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	public PageModel getUtilByController(List<T> list, int currentPageNo) {
		List itemList = null;
		int pageSize = PageModel.PAGE_SIZE;
		int totalRecords = list.size();
		int firstIndex = (currentPageNo - 1) * pageSize; // 从第0条开始
		// 到第几条数据结束
		int lastIndex = currentPageNo * pageSize; // 取出10条
		if (lastIndex > totalRecords) {
			lastIndex = totalRecords;
		}

		PageModel pageModel = new PageModel();
		pageModel.setCurrentPageNo(currentPageNo);
		pageModel.setList(list.subList(firstIndex, lastIndex));
		pageModel.setTotalRecords(totalRecords);
		return pageModel;
	}

}
