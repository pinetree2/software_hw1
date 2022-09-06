package dao;


import dto.InfoDTO;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class InfoDAO {

    Connection connection = null;

    public List<InfoDTO> InfoDAO(){
        return null;

    }

    //조회
    public List<InfoDTO> selectAll(){

        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost/animal?characterEncoding=UTF-8&serverTimezone=UTC";
            connection = DriverManager.getConnection(url,"root","1234");
            System.out.println("연결 성공");


        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println("드라이버 로딩 실패");
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("에러: " + e);
        }

        Statement stmt = null;
        ResultSet rs = null;
        List<InfoDTO> res = new ArrayList<>();

        String sql = "SELECT * FROM animal";

        try{
            stmt = connection.createStatement();
            rs = stmt.executeQuery(sql);
            while(rs.next()){
                InfoDTO dto = new InfoDTO(rs.getString("name"),rs.getDate("birth"),rs.getString("type"),rs.getString("kind"),rs.getString("owner"),rs.getString("phone"));
                res.add(dto);

            }


        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            try {
                rs.close();
                stmt.close();
                connection.close();

            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return res;
    }

    // 추가

    public int insert(InfoDTO dto) throws SQLException {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost/animal?characterEncoding=UTF-8&serverTimezone=UTC";
            connection = DriverManager.getConnection(url,"root","1234");
            System.out.println("연결 성공");


        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println("드라이버 로딩 실패");
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("에러: " + e);
        }

        PreparedStatement pstm = null;
        int res =0;

        String sql = "INSERT INTO ANIMAL VALUES(0,?,?,?,?,?,?)";
        try{
            pstm = connection.prepareStatement(sql);
            pstm.setString(1,dto.getName());
            pstm.setDate(2,dto.getBirth());
            pstm.setString(3,dto.getType());
            pstm.setString(4,dto.getKind());
            pstm.setString(5,dto.getOwner());
            pstm.setString(6,dto.getPhone());

            res = pstm.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            pstm.close();
            connection.close();
        }
        return res;
    }


    //찾기
    public ArrayList<InfoDTO> getSearch(String searchText){
        ArrayList<InfoDTO> list = new ArrayList<InfoDTO>();
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;
        List<InfoDTO> res = new ArrayList<>();
       // String sql = "SELECT * FROM animal WHERE (name LIKE '%"+searchText.trim() +"' OR name LIKE '"+searchText.trim()+"%') order by `name` desc";
        String sql = "SELECT * FROM animal WHERE name LIKE '%"+searchText.trim()+"%'";
        System.out.println("텍스트 : "+searchText);
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost/animal?characterEncoding=UTF-8&serverTimezone=UTC";
            connection = DriverManager.getConnection(url,"root","1234");
            System.out.println("연결 성공");

            preparedStatement = connection.prepareStatement(sql);
            rs = preparedStatement.executeQuery();
            while(rs.next()){
                InfoDTO dto = new InfoDTO(rs.getString("name"),rs.getDate("birth"),rs.getString("type"),rs.getString("kind"),rs.getString("owner"),rs.getString("phone"));
                res.add(dto);

            }

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println("드라이버 로딩 실패");
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("에러: " + e);
        }

        finally{
            try {
                rs.close();
                preparedStatement.close();
                connection.close();

            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return (ArrayList<InfoDTO>) res;
    }




}
