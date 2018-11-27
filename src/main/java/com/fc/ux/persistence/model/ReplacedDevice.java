package com.fc.ux.persistence.model;

// Generated Nov 23, 2015 7:03:48 PM by Hibernate Tools 3.4.0.CR1

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;
import java.util.Date;


@Entity
@Table(name = "replaceddevice")
public class ReplacedDevice {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long ReplacedDeviceId;

	private long DeviceId;
	private int OldSerial;
	private int NwSerial;
	private long BusOwnerId;
	private Date DateTime;

	public Long getReplacedDeviceId() {
		return ReplacedDeviceId;
	}

	public void setReplacedDeviceId(Long replacedDeviceId) {
		ReplacedDeviceId = replacedDeviceId;
	}

	public Long getDeviceId() {
		return DeviceId;
	}

	public void setDeviceId(Long deviceId) {
		DeviceId = deviceId;
	}

	public void setDeviceId(long deviceId) {
		DeviceId = deviceId;
	}

	public int getOldSerial() {
		return OldSerial;
	}

	public void setOldSerial(int oldSerial) {
		OldSerial = oldSerial;
	}

	public int getNwSerial() {
		return NwSerial;
	}

	public void setNwSerial(int nwSerial) {
		NwSerial = nwSerial;
	}

	public long getBusOwnerId() {
		return BusOwnerId;
	}

	public void setBusOwnerId(long busOwnerId) {
		BusOwnerId = busOwnerId;
	}

	public Date getDateTime() {
		return DateTime;
	}

	public void setDateTime(Date dateTime) {
		DateTime = dateTime;
	}
}
