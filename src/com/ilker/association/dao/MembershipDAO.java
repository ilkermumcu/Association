package com.ilker.association.dao;

import java.util.List;

import com.ilker.association.entity.Membership;

public interface MembershipDAO {
	
	public List <Membership> getMemberships();

	public void saveMembership(Membership theMembership);

	public Membership getMembership(int theId);

	public void deleteMembership(int theId);

}
