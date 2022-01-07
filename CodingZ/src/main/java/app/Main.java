package app;


import dao.DAOFactory;

import interfaces.IDAO;

import model.Stuff;





public class Main {
    public static void main(String[] args) {

        //interface :

        //IDAO<Stuff> studentIDAO= DAOFactory. getIStuffImpl();




        // by interface ------------------------------------------------------------------|
        //IDAO<Student> studentOp2 = DAOFactory.getIStudentImpl();
        //Student student2 = studentOp2.create(new Student(3L,"kamal 2","bouhfid","HH255555","bhfkamal@mail.com","11,bloc 1 Hay Anass", CountryType.MA,152415L, AssuranceType.SAHAM,225673));
        //if(!Objects.isNull(student2))
        //    System.out.println("Bonjour "+student2.getFirstname()+" "+student2.getLastname());

        //Student student = studentOp.update(new Student(2L,"kamal","bouhfid edited 2","HH252222","bhfkamal@mail.com","11,bloc 1 Hay Anass", CountryType.MA,152415L, AssuranceType.SAHAM,88));

        //studentOp.delete(new Student(2L,"kamal","bouhfid edited 2","HH222211","bhfkamal@mail.com","11,bloc 1 Hay Anass", CountryType.MA,152415L, AssuranceType.SAHAM,88));
    }
}
