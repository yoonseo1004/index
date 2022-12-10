package kr.smhrd.domain;

import org.springframework.data.jpa.repository.JpaRepository;

import kr.smhrd.entity.Member;

public interface MemberRepository extends JpaRepository<Member, String> {
	
	Member findByMemid(String login_id); 
	// select * from Member where mem=login_id
	

	


}
