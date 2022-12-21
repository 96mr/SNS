package com.spring.ex02.common;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.spring.ex02.vo.MemberVO;

@Component
public class MemberValidator implements Validator {

	private static final String idRegExp = "^[a-zA-z0-9]{4,20}$";
	private static final String pwRegExp = "^[a-zA-z0-9]{8,30}$";
//	private static final String emailRegExp ="^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@ [A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
	
	private Pattern pattern = null;
	private Matcher matcher = null;
	
	@Override
	public boolean supports(Class<?> clazz) {
		return MemberVO.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		MemberVO vo = (MemberVO) target;	// 유효성 검사하기 위해 받아온 데이터
		String id = vo.getId();				
		String pw = vo.getPassword();		
		
		if(id == null || id.trim().isEmpty()) {		
			errors.rejectValue("id", "required", "아이디를 입력해주세요");	
		}else {
			pattern = Pattern.compile(idRegExp);
			matcher = pattern.matcher(id);
			if(!matcher.matches())
				errors.rejectValue("id", "bad", "아이디는 영문자와 숫자로만 이루어져야 합니다(4~20자)");
		}
		
		if(pw == null || pw.trim().isEmpty())
			errors.rejectValue("password", "required", "비밀번호를 입력해주세요");
		else {
			pattern = Pattern.compile(pwRegExp);
			matcher = pattern.matcher(pw);
			if(!matcher.matches())
				errors.rejectValue("password", "bad", "비밀번호는 영문자와 숫자로만 이루어져야 합니다(8~30자)");
		}
		
	}

}
