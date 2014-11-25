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

    //@Override
    @Transactional
    public List<User> list() {
        @SuppressWarnings("unchecked")
        List<User> listUser = (List<User>) sessionFactory.getCurrentSession()
            .createCriteria(User.class)
            .setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

        return listUser;
    }


    public User getUserByEmail(String email) {
        Session session = sessionFactory.openSession();
        String query = "from User u where u.email = :email";
        User user =  (User) session.createQuery(query)
            .setString("email", email)
            .uniqueResult();
        return user;
    }

}