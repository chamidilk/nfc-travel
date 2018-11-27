package com.fc.smsengine;

import java.io.Serializable;

/**
 * @author Nilindra Fernando
 */
public class MessageTO implements Serializable {

	public static enum MESSAGE_TYPES { EMAIL, SMS }; 
	
	private String toAddress;

	private String subject;

	private String body;

	private String fromAddress;

	private String bccToEmailAddress;

	private String host;

	private String userName;

	private String password;

	private String port;

	private boolean enableTLS;
	
	private MESSAGE_TYPES messageType;

	/**
	 * @return the subject
	 */
	public String getSubject() {
		return subject;
	}

	/**
	 * @param subject
	 *            the subject to set
	 */
	public void setSubject(String subject) {
		this.subject = subject;
	}

	/**
	 * @return the body
	 */
	public String getBody() {
		return body;
	}

	/**
	 * @param body
	 *            the body to set
	 */
	public void setBody(String body) {
		this.body = body;
	}

	/**
	 * @return the fromAddress
	 */
	public String getFromAddress() {
		return fromAddress;
	}

	/**
	 * @param fromAddress
	 *            the fromAddress to set
	 */
	public void setFromAddress(String fromAddress) {
		this.fromAddress = fromAddress;
	}

	/**
	 * @return the toAddress
	 */
	public String getToAddress() {
		return toAddress;
	}

	/**
	 * @param toAddress
	 *            the toAddress to set
	 */
	public void setToAddress(String toAddress) {
		this.toAddress = toAddress;
	}

	/**
	 * @return the bccToEmailAddress
	 */
	public String getBccToEmailAddress() {
		return bccToEmailAddress;
	}

	/**
	 * @param bccToEmailAddress
	 *            the bccToEmailAddress to set
	 */
	public void setBccToEmailAddress(String bccToEmailAddress) {
		this.bccToEmailAddress = bccToEmailAddress;
	}

	/**
	 * @return the host
	 */
	public String getHost() {
		return host;
	}

	/**
	 * @param host
	 *            the host to set
	 */
	public void setHost(String host) {
		this.host = host;
	}

	/**
	 * @return the userName
	 */
	public String getUserName() {
		return userName;
	}

	/**
	 * @param userName
	 *            the userName to set
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password
	 *            the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @return the port
	 */
	public String getPort() {
		return port;
	}

	/**
	 * @param port
	 *            the port to set
	 */
	public void setPort(String port) {
		this.port = port;
	}

	/**
	 * @return the enableTLS
	 */
	public boolean isEnableTLS() {
		return enableTLS;
	}

	/**
	 * @param enableTLS
	 *            the enableTLS to set
	 */
	public void setEnableTLS(boolean enableTLS) {
		this.enableTLS = enableTLS;
	}

	/**
	 * @return the messageType
	 */
	public MESSAGE_TYPES getMessageType() {
		return messageType;
	}

	/**
	 * @param messageType the messageType to set
	 */
	public void setMessageType(MESSAGE_TYPES messageType) {
		this.messageType = messageType;
	}

}
