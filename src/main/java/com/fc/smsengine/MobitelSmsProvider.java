package com.fc.smsengine;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.InetAddress;
import java.net.Socket;


/**
 * @author Nilindra Fernando
 */
public class MobitelSmsProvider {

	private static final Log log = LogFactory.getLog(MobitelSmsProvider.class);

	public static void sendSms(MessageTO messageTO) throws Exception {
		ObjectOutputStream out = null;
		ObjectInputStream in = null;
		Socket socket = null;
		try {
			socket = new Socket(InetAddress.getByName(messageTO.getHost()), Integer.valueOf(messageTO.getPort()));

			out = new ObjectOutputStream(socket.getOutputStream());
			in = new ObjectInputStream(socket.getInputStream());

			out.writeObject(composeMessage(messageTO));
			out.flush();
		} catch (Exception e) {
			log.error("sendSms ", e);
			throw e;
		} finally {
			if (in != null) {
				try {
					in.close();
				} catch (Exception x) {
				}
			}
			if (out != null) {
				try {
					out.close();
				} catch (Exception x) {
				}
			}
			if (socket != null) {
				try {
					socket.close();
				} catch (Exception x) {
				}
			}
		}
	}

	private static String composeMessage(MessageTO messageTO) {
		return messageTO.getFromAddress() + ";" + messageTO.getToAddress() + ";" + messageTO.getBody();
	}
}
