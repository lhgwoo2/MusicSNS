package org.kdea.mypage;
 
import org.kdea.members.MemberVO;
import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;  
import org.springframework.validation.Validator;  
 
@Service("MemberfileValidator")
public class MemberFileValidator implements Validator {  
 
    public boolean supports(Class<?> arg0) {
        return false;
    }
 
    public void validate(Object uploadedFile, Errors errors) {  
           
        MemberVO file = (MemberVO) uploadedFile;  
           
        if (file.getProfilfile().getSize() == 0) {  
            errors.rejectValue("file", "field.required");  
        }
    }
}