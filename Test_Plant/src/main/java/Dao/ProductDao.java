package Dao;

import java.util.ArrayList;

import Dto.ProductDto;

public class ProductDao extends DB {
public static ProductDao productDao = new ProductDao();
public static ProductDao getProductDao() {return productDao;}

// 제품 등록
public boolean productwrite(ProductDto productDto) {
	String sql="insert into product value(?, ?, ?, ?, ?, ?, ?, ?, ?)";
	try {
		preparedStatement=connection.prepareStatement(sql);
		preparedStatement.setInt(1, productDto.getNo());
		preparedStatement.setString(2, productDto.getReady());
		preparedStatement.setString(3, productDto.getPrint());
		preparedStatement.setString(4, productDto.getCoating());
		preparedStatement.setString(5, productDto.getPaper());
		preparedStatement.setString(6, productDto.getJoin());
		preparedStatement.setString(7, productDto.getPackaging());
		preparedStatement.setString(8, productDto.getFwork());
		preparedStatement.setString(9, productDto.getFtime());
		preparedStatement.executeUpdate();
		return true;
	} catch (Exception e) {System.out.println("제품 등록 오류 "+e);} return false;
}

// 작업지시번호 +1
public int lastno() {
	String sql="select max(no) from product";
	try {
		preparedStatement=connection.prepareStatement(sql);
		resultSet=preparedStatement.executeQuery();
		if(resultSet.next()) {
			return resultSet.getInt(1);
		}
	} catch (Exception e) {System.out.println("작업지시번호 +1 오류 "+e);} return 0;
}

// 제품 리스트 전체 조회
public ArrayList<ProductDto> getlist(){
	ArrayList<ProductDto> arrayList = new ArrayList<ProductDto>();
	String sql="select * from product";
	try {
		preparedStatement=connection.prepareStatement(sql);
		resultSet=preparedStatement.executeQuery();
		while(resultSet.next()) {
			ProductDto productDto = new ProductDto();
			productDto.setNo(resultSet.getInt(1));
			productDto.setReady(resultSet.getString(2));
			productDto.setPrint(resultSet.getString(3));
			productDto.setCoating(resultSet.getString(4));
			productDto.setPaper(resultSet.getString(5));
			productDto.setJoin(resultSet.getString(6));
			productDto.setPackaging(resultSet.getString(7));
			productDto.setFwork(resultSet.getString(8));
			productDto.setFtime(resultSet.getString(9));
			arrayList.add(productDto);
		} return arrayList;
	} catch (Exception e) {System.out.println("제품 리스트 전체 조회 오류 "+e);} return null;
}

}
