package cn.spring.common.validator.internal.constraintvalidators;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import cn.spring.common.validator.constraints.NotEmpty;

public class NotEmptyValidator implements ConstraintValidator<NotEmpty, CharSequence> {  
	  
	public void initialize(NotEmpty annotation) {
	}

	/**
	 * Checks that the trimmed string is not empty.
	 *
	 * @param charSequence The character sequence to validate.
	 * @param constraintValidatorContext context in which the constraint is evaluated.
	 *
	 * @return Returns <code>true</code> if the string is <code>null</code> or the length of <code>charSequence</code> between the specified
	 *         <code>min</code> and <code>max</code> values (inclusive), <code>false</code> otherwise.
	 */
	public boolean isValid(CharSequence charSequence, ConstraintValidatorContext constraintValidatorContext) {
		if ( charSequence == null ) {
			return true;
		}

		return charSequence.toString().trim().length() > 0;
	}
  
}
