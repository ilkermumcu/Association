package com.ilker.association.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ilker.association.dao.MembershipDAO;
import com.ilker.association.entity.Membership;

@Service
public class MembershipServiceImpl implements MembershipService {

   @Autowired
   private MembershipDAO membershipDAO;
	
	@Override
	@Transactional
	public List<Membership> getMemberships() {
		
		return membershipDAO.getMemberships();
	}

	@Override
	@Transactional
	public void saveMembership(Membership theMembership) {
		membershipDAO.saveMembership(theMembership);
		
		
	}

	@Override
	@Transactional
	public Membership getMembership(int theId) {
		
		return membershipDAO.getMembership(theId);
	}

	@Override
	@Transactional
	public void deleteMembership(int theId) {
     membershipDAO.deleteMembership(theId);
		
	}

}
