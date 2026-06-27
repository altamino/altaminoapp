package com.narvii.notification;

import android.os.Bundle;
import com.narvii.model.NVObject;
import com.narvii.model.api.ApiResponse;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes3.dex */
public class Notification implements Cloneable {
    public static final String ACTION_DELETE = "delete";
    public static final String ACTION_EDIT = "edit";
    public static final String ACTION_NEW = "new";
    public static final String ACTION_UPDATE = "update";
    private static final SimpleDateFormat FMT = new SimpleDateFormat("HH:mm:ss", Locale.US);
    public String action;
    public Bundle bundle;
    public String id;
    public Object obj;
    public int objectType;
    public String parentId;
    public ApiResponse response;
    public long time;
    public String uid;

    public Notification() {
        this.objectType = -1;
    }

    public Notification(String str, NVObject nVObject) {
        this.objectType = -1;
        this.action = str;
        this.id = nVObject.id();
        this.objectType = nVObject.objectType();
        this.parentId = nVObject.parentId();
        this.uid = nVObject.uid();
        this.obj = nVObject;
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public Notification m51clone() {
        Notification notification = new Notification();
        notification.time = this.time;
        notification.action = this.action;
        notification.id = this.id;
        notification.objectType = this.objectType;
        notification.parentId = this.parentId;
        notification.uid = this.uid;
        notification.obj = this.obj;
        notification.bundle = this.bundle;
        return notification;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("action=");
        sb.append(this.action);
        if (this.id != null) {
            sb.append(", id=");
            sb.append(this.id);
        }
        if (this.objectType != -1) {
            sb.append(", objectType=");
            sb.append(this.objectType);
        }
        if (this.parentId != null) {
            sb.append(", parentId=");
            sb.append(this.parentId);
        }
        if (this.uid != null) {
            sb.append(", uid=");
            sb.append(this.uid);
        }
        sb.append(", time=");
        sb.append(FMT.format(new Date(this.time)));
        sb.append("\n");
        sb.append(this.obj);
        return sb.toString();
    }
}
