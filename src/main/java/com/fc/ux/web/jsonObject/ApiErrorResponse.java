package com.fc.ux.web.jsonObject;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonRootName;

import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

@JsonRootName(value = "error")
public class ApiErrorResponse {

	@JsonProperty(value = "message")
	private String message;

	@JsonProperty(value = "code")
	private int code;


	@JsonProperty(value = "deviceId")
	private long deviceId;

	public ApiErrorResponse() {
	}

	public ApiErrorResponse(long deviceId, int code, String message) {
		this.message = message;
		this.code = code;
		this.deviceId = deviceId;
	}

	public ApiErrorResponse(int code, String message) {
		this.message = message;
		this.code = code;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public long getDeviceId() {
		return deviceId;
	}

	public void setDeviceId(long deviceId) {
		this.deviceId = deviceId;
	}
}
