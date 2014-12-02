package com.roztleskavacky.kosmeticky_salon.model;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

public class RoleDAO {

    private SessionFactory sessionFactory;

    public RoleDAO(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Transactional
    public List<Role> list() {
        @SuppressWarnings("unchecked")
        List<Role> lostRole = (List<Role>) sessionFactory.getCurrentSession()
            .createCriteria(Role.class)
            .setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

        return lostRole;
    }

    @Transactional
    public Role getRoleByType(String type) {
        Session session = sessionFactory.getCurrentSession();
        String query = "from Role r where r.type = :type";
        Role role =  (Role) session.createQuery(query)
            .setString("type", type)
            .uniqueResult();
        return role;
    }

}