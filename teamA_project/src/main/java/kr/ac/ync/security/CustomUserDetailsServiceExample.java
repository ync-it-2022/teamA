package kr.ac.ync.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import kr.ac.ync.domain.MemberVOExample;
import kr.ac.ync.mapper.MemberMapperExample;
import kr.ac.ync.security.domain.CustomUserExample;
import lombok.extern.log4j.Log4j2;

@Log4j2
public class CustomUserDetailsServiceExample implements UserDetailsService {

	@Autowired
	private MemberMapperExample memberMapper;

	@Override
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {

		log.warn("Load User By UserName : " + userName);

		// userName means userid
		MemberVOExample vo = memberMapper.read(userName);

		log.warn("queried by member mapper: " + vo);

		return vo == null ? null : new CustomUserExample(vo);
	}

}
