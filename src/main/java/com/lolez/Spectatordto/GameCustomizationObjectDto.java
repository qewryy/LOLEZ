package com.lolez.Spectatordto;

import lombok.Data;

@Data
public class GameCustomizationObjectDto {

	private String category;
	private String content;
	
	@Override
	public String toString() {
		return "GameCustomizationObjectDto [category=" + category + ", content=" + content + "]";
	}
	
}
