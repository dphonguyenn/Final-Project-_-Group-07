package com.laptrinhjavaweb.dao;

import com.laptrinhjavaweb.context.DBContext;
import com.laptrinhjavaweb.entity.Account;
import com.laptrinhjavaweb.entity.Category;
import com.laptrinhjavaweb.entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DAO {

	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	public List<Product> getAll() {
		String query = "select * from SanPham";
		List<Product> list = new ArrayList<>();
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getString(5),
						rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9), rs.getString(10),
						rs.getString(11)));
			}
			return list;
		} catch (Exception e) {
		}
		return null;
	}

	public List<Category> getAllCategory() {
		String query = "select * from PhanLoai";
		List<Category> list = new ArrayList<>();
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Category(rs.getInt(1), rs.getString(2)));
			}
			return list;
		} catch (Exception e) {
		}
		return null;
	}

	public Product getLastProduct() {
		String query = "select top 1 * from SanPham\n" + "order by id desc";
		List<Product> list = new ArrayList<>();
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getString(5),
						rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9), rs.getString(10),
						rs.getString(11));
			}
		} catch (Exception e) {
		}
		return null;
	}

	public List<Product> getProductByCID(String cid) {
		String query = "select * from SanPham\n" + "where cateID = ?";
		List<Product> list = new ArrayList<>();
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, cid);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getString(5),
						rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9), rs.getString(10),
						rs.getString(11)));
			}
			return list;
		} catch (Exception e) {
		}
		return null;
	}

	public Product getProductByID(String id) {
		String query = "select * from SanPham\n" + "where id = ?";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getString(5),
						rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9), rs.getString(10),
						rs.getString(11));
			}
		} catch (Exception e) {
		}
		return null;
	}

	public List<Product> searchtByName(String txtSearch) {
		String query = "select * from SanPham\n" + "where [name] like ?";
		List<Product> list = new ArrayList<>();
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, "%" + txtSearch + "%");
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getString(5),
						rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9), rs.getString(10),
						rs.getString(11)));
			}
			return list;
		} catch (Exception e) {
		}
		return null;
	}

	public Account login(String user, String pass) {
		String query = "select * from TaiKhoan\n" + "where [user] = ?\n" + "and pass = ?";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, user);
			ps.setString(2, pass);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5));
			}
		} catch (Exception e) {
		}
		return null;
	}

	public Account checkAccountExits(String user) {
		String query = "select * from TaiKhoan\n" + "where [user] = ?\n";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, user);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5));
			}
		} catch (Exception e) {
		}
		return null;
	}

	public void signup(String user, String pass) {
		String query = "insert into TaiKhoan\n" + "values(?,?,0,0)";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, user);
			ps.setString(2, pass);
			ps.executeUpdate();
		} catch (Exception e) {
		}
	}

	public List<Product> getProductBySellID(int id) {
		List<Product> list = new ArrayList<>();
		String query = "select * from SanPham\n" + "where sellID = ?";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getString(5),
						rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9), rs.getString(10),
						rs.getString(11)));
			}
			return list;
		} catch (Exception e) {
		}
		return null;
	}

	public void deleteProduct(String pid) {
		String query = "delete from SanPham\n" + "where id =?";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, pid);
			ps.executeUpdate();
		} catch (Exception e) {
		}
	}

	public void insertProduct(String name, String image, String price, String title, String description,
			String category, int sid) {
		String query = "INSERT [dbo].[SanPham] \n"
				+ "([name],[image],[price],[title],[description],[cateID],[sellID])\n" + "VALUES(?,?,?,?,?,?,?)";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, image);
			ps.setString(3, price);
			ps.setString(4, title);
			ps.setString(5, description);
			ps.setString(6, category);
			ps.setInt(7, sid);
			ps.executeUpdate();
		} catch (Exception e) {
		}
	}

	public void editProduct(String name, String image, String price, String title, String description,
			String category, String pid) {
		String query = "update SanPham \n"
				+ "set [name] = ?,\n" + "[image] = ? ,\n" +"price = ?, \n " + "title = ? ,\n" + "[description] = ?,\n"+ "cateID =? \n" +"where id = ?";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, image);
			ps.setString(3, price);
			ps.setString(4, title);
			ps.setString(5, description);
			ps.setString(6, category);
			ps.setString(7, pid);
			ps.executeUpdate();
		} catch (Exception e) {
		}
	}

	public static void main(String[] args) {
		DAO dao = new DAO();
		List<Product> list = dao.getAll();
		List<Category> listC = dao.getAllCategory();
		List<Product> listCC = dao.getProductByCID("1");
		for (Product o : listCC) {
			System.out.println(o);
		}
	}

}