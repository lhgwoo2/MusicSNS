package org.kdea.video;

import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;  
import org.springframework.validation.Validator;  
 
@Service("videoFileValidator")
public class VideoFileValidator implements Validator {  
 
    public boolean supports(Class<?> arg0) {
        return false;
    }
 
    public void validate(Object uploadedFile, Errors errors) {  
           
        VideoVO file = (VideoVO) uploadedFile;  
           
        if (file.getFile().getSize() == 0) {  
            errors.rejectValue("file", "field.required");  
        }
        if (file.getTitle() == null || file.getTitle().length()==0) {  
            errors.rejectValue("title", "field.required");  
        }
        if (file.getGenre() == null || file.getGenre().length()==0) {  
        	errors.rejectValue("genre", "field.required");  
        }
    }
}