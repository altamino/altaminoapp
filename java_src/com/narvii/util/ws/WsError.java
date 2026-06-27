package com.narvii.util.ws;

import com.narvii.app.NVApplication;
import com.narvii.lib.R;

/* loaded from: classes.dex */
public class WsError {
    public static final int CHANGE_CHANNEL_JOIN_ROLE_NOT_MATCH = 108;
    public static final int CHANGE_CHANNEL_TYPE_NOT_MATCH = 106;
    public static final int CHANGE_CHANNEL_TYPE_NO_PERMISSION = 107;
    public static final int INTERNAL_SERVER_EXCEPTION = 1;
    public static final int INVALID_LIVE_STREAM_ACTION = 114;
    public static final int INVALID_LIVE_STREAM_TOPIC = 113;
    public static final int NO_PRESENTERS = 109;
    public static final int THREAD_CHANNEL_USER_BUSY = 111;
    public static final int THREAD_CHANNEL_USER_NOT_ACTIVE = 112;
    public static final int THREAD_MEMBERSHIP_NOT_ACTIVE = 102;
    public static final int THREAD_MEMBERSHIP_NO_PERMISSION = 110;
    public static final int THREAD_NOT_AVAILABLE = 101;
    public static final int TOO_MANY_PRESENTERS = 105;
    public static final int TOO_MANY_PRESENTERS_IN_SCREENING_ROOM = 116;
    public static final int UPDATE_PLAY_LIST_NO_PERMISSION = 115;
    public static final int USER_PROFILE_NOT_AVAILABLE = 103;
    public static final int VV_CHAT_CLOSED = 117;
    public int code;
    public String message;
    public static final WsError NO_CONNECTION = new WsError(-1, NVApplication.instance().getString(R.string.ws_error_not_connected));
    public static final WsError CONNECT_FAIL = new WsError(-2, NVApplication.instance().getString(R.string.ws_error_connect_fail));
    public static final WsError CONNECTION_LOST = new WsError(-5, NVApplication.instance().getString(R.string.ws_error_connection_lost));
    public static final WsError TIMEOUT = new WsError(-9, NVApplication.instance().getString(R.string.ws_error_request_timeout));

    public WsError() {
    }

    public WsError(int i, String str) {
        this.code = i;
        this.message = str;
    }

    public int code() {
        return this.code;
    }

    public boolean isServerError() {
        return this.code > 0;
    }

    public String message() {
        String str = this.message;
        if (str != null) {
            return str;
        }
        return "WS_ERR (" + this.code + ")";
    }

    public String toString() {
        return message();
    }
}
