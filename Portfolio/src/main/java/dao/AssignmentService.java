package dao;

import model.Assignment;
import jakarta.persistence.*;

import java.util.List;

public class AssignmentService {

    private EntityManagerFactory emf;

    public AssignmentService() {
        emf = Persistence.createEntityManagerFactory("SupabasePU");
    }

    public void insert(Assignment assignment) {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();
        tx.begin();
        em.persist(assignment);
        tx.commit();
        em.close();
    }

    public Assignment find(Long id) {
        EntityManager em = emf.createEntityManager();
        Assignment assignment = em.find(Assignment.class, id);
        em.close();
        return assignment;
    }

    public List<Assignment> findAll() {
        EntityManager em = emf.createEntityManager();
        List<Assignment> list = em.createQuery("SELECT a FROM Assignment a", Assignment.class)
                                  .getResultList();
        em.close();
        return list;
    }

    public void update(Assignment assignment) {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();
        tx.begin();
        em.merge(assignment);
        tx.commit();
        em.close();
    }

    public void delete(Long id) {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();
        tx.begin();
        Assignment assignment = em.find(Assignment.class, id);
        if (assignment != null) {
            em.remove(assignment);
        }
        tx.commit();
        em.close();
    }
}
