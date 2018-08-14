package com.ilker.association.service;

import java.util.List;

import com.ilker.association.entity.Membership;

public interface MembershipService {
	public List<Membership> getMemberships();

	public void saveMembership(Membership theMembership);

	public Membership getMembership(int theId);

	public void deleteMembership(int theId);

}
