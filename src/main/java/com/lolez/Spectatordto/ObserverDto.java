package com.lolez.Spectatordto;

import lombok.Data;

@Data
public class ObserverDto {
	
	private String encryptionKey;

	@Override
	public String toString() {
		return "ObserverDto [encryptionKey=" + encryptionKey + "]";
	}
	
}
