package com.ilker.association.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.ilker.association.entity.Membership;

@Repository
public class MembershipDAOImpl implements MembershipDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Membership> getMemberships() {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		Query<Membership> theQuery = currentSession.createQuery("from Membership", Membership.class);
		
		List<Membership> membership = theQuery.getResultList();
		
		return membership;
	}

	@Override
	public void saveMembership(Membership theMembership) {

		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(theMembership);
	}

	@Override
	public Membership getMembership(int theId) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		Membership theMembership = currentSession.get(Membership.class,theId);
		return theMembership;
	}

	@Override
	public void deleteMembership(int theId) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		Query theQuery =currentSession.createQuery("delete from Membership where id=:membershipId");
		theQuery.setParameter("membershipId", theId);
		theQuery.executeUpdate();
		
	}

}
