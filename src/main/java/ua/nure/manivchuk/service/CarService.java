package ua.nure.manivchuk.service;

import org.hibernate.Session;
import org.hibernate.Transaction;
import ua.nure.manivchuk.model.Car;
import ua.nure.manivchuk.utils.HibernateUtil;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Lenovo on 3/18/2018.
 */
public class CarService {
    public List<Car> getListOfCars(){
        List<Car> list = new ArrayList<Car>();
        Session session = HibernateUtil.openSession();
        Transaction tx = null;
        try {
            tx = session.getTransaction();
            tx.begin();
            list = session.createQuery("from Car ").list();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return list;
    }
}
