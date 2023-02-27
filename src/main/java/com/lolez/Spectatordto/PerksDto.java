package com.lolez.Spectatordto;

import java.util.ArrayList;
import java.util.List;

import lombok.Data;

@Data
public class PerksDto {

	private List<Integer> perkIds = new ArrayList<Integer>();
	private long perkStyle;
	private long perkSubStyle;
	
	@Override
	public String toString() {
		return "PerksDto [perkIds=" + perkIds + ", perkStyle=" + perkStyle + ", perkSubStyle=" + perkSubStyle + "]";
	}
	
}
