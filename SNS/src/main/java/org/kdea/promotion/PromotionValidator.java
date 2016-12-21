package org.kdea.promotion;
 
import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;  
 
@Service("promotionValidator")
public class PromotionValidator implements Validator {  
 
    public boolean supports(Class<?> arg0) {
        return false;
    }
 
    public void validate(Object uploadPromotion, Errors errors) {  
           
        PromotionVO vo = (PromotionVO) uploadPromotion;  
           
        if (vo.getTitle() == null || vo.getTitle().length()==0) {  
            errors.rejectValue("title", "field.required");  
        }
        if (vo.getContents() == null || vo.getContents().length()==0) {  
        	errors.rejectValue("contents", "field.required");  
        }
        if (vo.getGenre() == null || vo.getGenre().length()==0) {  
        	errors.rejectValue("genre", "field.required");  
        }
        if (vo.getOpeningdaystr() == null || vo.getOpeningdaystr().length()==0) {  
        	errors.rejectValue("openingdaystr", "field.required");  
        }
        if (vo.getRegion() == null || vo.getRegion().length()==0) {  
        	errors.rejectValue("region", "field.required");  
        }
    }
}