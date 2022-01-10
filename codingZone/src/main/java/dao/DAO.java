package dao;

import config.Config;

import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.util.List;

public abstract class DAO<T> {

    public Connection connection = Config.getInstance();

    public abstract T login (T obj);

    public abstract int create(T obj) ;

    public abstract List<T> find();

    public abstract int delete (int id);


}
