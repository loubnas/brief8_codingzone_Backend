package interfaces;

import config.Config;

import java.sql.Connection;



public interface IDAO<T> {

    public Connection connect = Config.getInstance();

    public  T find(long id);
    public  T create(T obj);
    public  T update(T obj);
    public  void delete(T obj);
    public boolean login(T obj);

}

