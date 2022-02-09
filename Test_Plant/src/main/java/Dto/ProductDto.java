package Dto;

public class ProductDto {
private int no; // 작업 지시 번호
private String ready; // 재료준비
private String print; // 인쇄 공정
private String coating; // 코팅 공정
private String paper; // 합지 공정
private String join; // 접합 공정
private String packaging; // 포장 공정
private int fwork; // 최종 작업 일자
private int ftime; // 최종 작업 시간

public ProductDto() { }

public ProductDto(int no, String ready, String print, String coating, String paper, String join, String packaging,
		int fwork, int ftime) {
	super();
	this.no = no;
	this.ready = ready;
	this.print = print;
	this.coating = coating;
	this.paper = paper;
	this.join = join;
	this.packaging = packaging;
	this.fwork = fwork;
	this.ftime = ftime;
}

public int getNo() {
	return no;
}

public void setNo(int no) {
	this.no = no;
}

public String getReady() {
	return ready;
}

public void setReady(String ready) {
	this.ready = ready;
}

public String getPrint() {
	return print;
}

public void setPrint(String print) {
	this.print = print;
}

public String getCoating() {
	return coating;
}

public void setCoating(String coating) {
	this.coating = coating;
}

public String getPaper() {
	return paper;
}

public void setPaper(String paper) {
	this.paper = paper;
}

public String getJoin() {
	return join;
}

public void setJoin(String join) {
	this.join = join;
}

public String getPackaging() {
	return packaging;
}

public void setPackaging(String packaging) {
	this.packaging = packaging;
}

public int getFwork() {
	return fwork;
}

public void setFwork(int fwork) {
	this.fwork = fwork;
}

public int getFtime() {
	return ftime;
}

public void setFtime(int ftime) {
	this.ftime = ftime;
}
}
