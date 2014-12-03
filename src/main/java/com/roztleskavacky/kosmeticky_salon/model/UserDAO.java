package com.roztleskavacky.kosmeticky_salon.model;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

public class UserDAO {

    private SessionFactory sessionFactory;

    public UserDAO(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }


    @Transactional
    public List<User> list() {
        @SuppressWarnings("unchecked")
        List<User> listUser = (List<User>) sessionFactory.getCurrentSession()
            .createCriteria(User.class)
            .setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

        return listUser;
    }

    @Transactional
    public User getUserById(int id) {
        Session session = sessionFactory.getCurrentSession();
        String query = "from User u where u.id = :id";
        User user =  (User) session.createQuery(query)
            .setInteger("id", id)
            .uniqueResult();
        return user;
    }

    @Transactional
    public User getUserByEmail(String email) {
        Session session = sessionFactory.getCurrentSession();
        String query = "from User u where u.email = :email";
        User user =  (User) session.createQuery(query)
            .setString("email", email)
            .uniqueResult();
        return user;
    }


    @Transactional
    public void saveUser(User user) {
        this.sessionFactory.getCurrentSession().persist(user);
    }


    @Transactional
    public void delete(User user) {
        this.sessionFactory.getCurrentSession().delete(user);
    }
}