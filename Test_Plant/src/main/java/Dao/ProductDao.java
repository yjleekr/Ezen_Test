package Dao;

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
		preparedStatement.setInt(8, productDto.getFwork());
		preparedStatement.setInt(9, productDto.getFtime());
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

//


}
