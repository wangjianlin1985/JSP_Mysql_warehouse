// 
//  
// 

package com.util;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.DriverManager;
import javax.activation.DataSource;
import java.sql.Statement;
import java.sql.Connection;

public class DBO
{
    private Connection conn;
    private Statement stmt;
    private DataSource ds;
    
    public DBO() {
        this.open();
    }
    
    public void open() {
        final String driver = "com.mysql.jdbc.Driver";
        final String url = "jdbc:mysql://127.0.0.1:3306/jsp_cangku?characterEncoding=gb2312&amp;mysqlEncoding=gb2312";
        final String user = "root";
        final String password = "123456";
        try {
            Class.forName(driver);
            this.conn = DriverManager.getConnection(url, user, password);
            this.stmt = this.conn.createStatement();
            System.out.println("\u6253\u5f00\u6570\u636e\u5e93\u8fde\u63a5");
        }
        catch (Exception ex) {
            System.err.println("\u6253\u5f00\u6570\u636e\u5e93\u65f6\u51fa\u9519: " + ex.getMessage());
        }
    }
    
    public void close() {
        try {
            this.conn.close();
            System.out.println("\u91ca\u653e\u8fde\u63a5");
        }
        catch (SQLException ex) {
            System.err.println("\u8fd4\u8fd8\u8fde\u63a5\u6c60\u51fa\u9519: " + ex.getMessage());
        }
    }
    
    public ResultSet executeQuery(final String sql) throws SQLException {
        ResultSet rs = null;
        rs = this.stmt.executeQuery(sql);
        System.out.println("\u6267\u884c\u67e5\u8be2");
        return rs;
    }
    
    public ResultSet query(final String sql) throws SQLException {
        ResultSet rs = null;
        System.out.println(sql);
        rs = this.stmt.executeQuery(sql);
        System.out.println("\u6267\u884c\u67e5\u8be2");
        return rs;
    }
    
    public int executeUpdate(final String sql) throws SQLException {
        int ret = 0;
        ret = this.stmt.executeUpdate(sql);
        System.out.println("\u6267\u884c\u589e\u5220\u6539");
        return ret;
    }
    
    public int update(final String sql) throws SQLException {
        int ret = 0;
        ret = this.stmt.executeUpdate(sql);
        System.out.println("\u6267\u884c\u589e\u5220\u6539");
        return ret;
    }
    
    public void addBatch(final String sql) throws SQLException {
        this.stmt.addBatch(sql);
    }
    
    public int[] executeBatch() throws SQLException {
        final boolean isAuto = this.conn.getAutoCommit();
        this.conn.setAutoCommit(false);
        final int[] updateCounts = this.stmt.executeBatch();
        return updateCounts;
    }
    
    public boolean getAutoCommit() throws SQLException {
        return this.conn.getAutoCommit();
    }
    
    public void setAutoCommit(final boolean auto) throws SQLException {
        this.conn.setAutoCommit(auto);
    }
    
    public void commit() throws SQLException {
        this.conn.commit();
    }
    
    public void rollBack() throws SQLException {
        this.conn.rollback();
    }
    
    public static void main(final String[] args) {
        final DBO con = new DBO();
        con.close();
    }
}
