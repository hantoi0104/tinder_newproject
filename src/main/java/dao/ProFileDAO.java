package dao;

import connect.Connect_MySQL;
import model.Post;
import model.ProFile;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

public class ProFileDAO implements CRUD<ProFile> {
    private static final String INSERT_PROFILE_SQL = "insert into frofile value (?,?,?,?,?,?);";
    private static final String SELECT_PROFILE_BY_ID = "select * from  frofile where idProfile =?";
    private static final String SELECT_ALL_PROFILE = "select * from  frofile";
    private static final String DELETE_PROFILE_SQL = "delete from frofile where idProfile = ?;";
    private static final String UPDATE_PROFILE_SQL = "update frofile set name = ?, sex = ?, age =?, address=?, avata = ? where idProfile = ?";

    @Override
    public List<ProFile> getAll() {
        return null;
    }

    @Override
    public boolean create(ProFile proFile) {
        try (Connection connection = Connect_MySQL.getConnect()) {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_PROFILE_SQL);
            preparedStatement.setString(1, proFile.getIdProfile());
            preparedStatement.setString(2, proFile.getName());
            preparedStatement.setString(3, proFile.getSex());
            preparedStatement.setInt(4, proFile.getAge());
            preparedStatement.setString(5, proFile.getAddress());
            preparedStatement.setString(6, proFile.getImgSrc());
            return preparedStatement.execute();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean edit(String idProfile, ProFile proFile) {
        try (Connection connection = Connect_MySQL.getConnect();
             PreparedStatement statement = connection.prepareStatement(UPDATE_PROFILE_SQL);) {
            statement.setString(6, idProfile);
            statement.setString(1, proFile.getName());
            statement.setString(2, proFile.getSex());
            statement.setInt(3, proFile.getAge());
            statement.setString(4, proFile.getAddress());
            statement.setString(5, proFile.getImgSrc());
            statement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean delete(String idProfile) {
        try (Connection connection = Connect_MySQL.getConnect();
             PreparedStatement statement = connection.prepareStatement(DELETE_PROFILE_SQL);) {
            statement.setString(1, idProfile);
            statement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public ProFile findById(String idProfile) {
        try (Connection connection = Connect_MySQL.getConnect();
             PreparedStatement statement = connection.prepareStatement(SELECT_PROFILE_BY_ID);) {
            statement.setString(1, idProfile);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                String name = resultSet.getString("name");
                String sex = resultSet.getString("sex");
                int age = resultSet.getInt("age");
                String address = resultSet.getString("address");
                String imgSrc = resultSet.getString("avata");
                return new ProFile(idProfile, name, sex, age, address, imgSrc);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    }

