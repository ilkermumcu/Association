package com.ilker.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ilker.association.entity.Membership;
import com.ilker.association.service.MembershipService;

@Controller
@RequestMapping("/membership")
public class MembershipController {
	
	

	@Autowired
	private MembershipService membershipService;

	@GetMapping("/list")
	public String listMembership(Model theModel) {

		List<Membership> theMembership = membershipService.getMemberships();
		theModel.addAttribute("membership", theMembership);

		return "membership_list";

	}

	@GetMapping("/showMembershipForm")
	public String showMembershipForm(Model theModel) {

		Membership theMembership = new Membership();
		theModel.addAttribute("membership", theMembership);

		return "membership_form";

	}

	@PostMapping("/saveMembership")
	public String saveMembership(@ModelAttribute("membership") Membership theMembership) {

		membershipService.saveMembership(theMembership);

		return "redirect:/membership/list";
	}

	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("membershipId") int theId, Model theModel) {

		Membership theMembership = membershipService.getMembership(theId);

		theModel.addAttribute(theMembership);

		return "membership_form";
	}

	@GetMapping("/deleteMembership")
	public String deleteMembership(@RequestParam("membershipId") int theId, Model theModel) {

		membershipService.deleteMembership(theId);

		return "redirect:/membership/list";
	}
}
