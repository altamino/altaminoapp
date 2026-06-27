package com.narvii.util.ws;

import android.os.SystemClock;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.util.JacksonUtils;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class WsMessage {
    public static final int AGORA_TOKEN_REQUEST = 200;
    public static final int AGORA_TOKEN_RESPONSE = 201;
    public static final int CHAT_MESSAGE_ACK_DTO = 1001;
    public static final int CHAT_MESSAGE_DTO = 1000;
    public static final int CHAT_THREAD_MEMBERSHIP_BANNED = 5;
    public static final int CHAT_THREAD_NOT_AVAILABLE = 3;
    public static final int CHAT_THREAD_NO_PRESENTER = 6;
    public static final int CHAT_THREAD_ORGANIZER_LEFT = 2;
    public static final int CHAT_THREAD_PRIVATE_NOT_ACCEPT = 99;
    public static final int COMMUNITY_DISABLED = 1;
    public static final int ERROR_MESSAGE = 1;
    public static final int FETCH_PLAY_LIST_REQUEST = 122;
    public static final int FETCH_THREAD_CHANNEL_USER_LIST_REQUEST = 105;
    public static final int FORCE_UPDATE_USER_ROLE_MESSAGE = 128;
    public static final int FORCE_UPDATE_USER_ROLE_REQ = 126;
    public static final int FORCE_UPDATE_USER_ROLE_RESP = 127;
    public static final int JOIN_THREAD_CHANNEL_REQUEST = 100;
    public static final int JOIN_THREAD_CHANNEL_RESPONSE = 101;
    public static final int LEAVE_THREAD_CHANNEL_REQUEST = 103;
    public static final int LEAVE_THREAD_CHANNEL_RESPONSE = 104;
    public static final int LIVE_LAYER_USER_JOINED_EVENT = 400;
    public static final int LIVE_LAYER_USER_LEFT_EVENT = 401;
    public static final int MULTI_DEVICE_ERROR = 118;
    public static final int REPORT_LIVE_LAYER_ACTIVE_REQUEST = 304;
    public static final int REPORT_LIVE_LAYER_ACTIVE_RESPONSE = 305;
    public static final int REPORT_LIVE_LAYER_INACTIVE_REQUEST = 306;
    public static final int REPORT_LIVE_LAYER_INACTIVE_RESPONSE = 307;
    public static final int SCREEN_RROM_PLAY_LIST_RESPONSE = 119;
    public static final int SUBSCRIBE_LIVE_LAYER_REQUEST = 300;
    public static final int SUBSCRIBE_LIVE_LAYER_RESPONSE = 301;
    public static final int THREAD_CHANNEL_FORCE_QUIT_MESSAGE = 115;
    public static final int THREAD_CHANNEL_USER_JOINED_MESSAGE = 106;
    public static final int THREAD_CHANNEL_USER_LEFT_MESSAGE = 107;
    public static final int THREAD_CHANNEL_USER_LIST_MESSAGE = 102;
    public static final int THREAD_CHANNEL_USER_PING_REQUEST = 116;
    public static final int THREAD_CHANNEL_USER_PING_RESPONSE = 117;
    public static final int THREAD_CHANNEL_USER_STATUS_CHANGED_MESSAGE = 114;
    public static final int THREAD_STATUS_CHANGED_MESSAGE = 111;
    public static final int THREAD_WAIT_LIST_APPROVE_MESSAGE = 130;
    public static final int THREAD_WAIT_LIST_CHANGED_MESSAGE = 131;
    public static final int THREAD_WAIT_LIST_CLEAN_REQUEST = 132;
    public static final int THREAD_WAIT_LIST_CLEAN_RESPONSE = 133;
    public static final int THREAD_WAIT_LIST_JOIN_APPROVE_REQUEST = 134;
    public static final int THREAD_WAIT_LIST_JOIN_APPROVE_RESPONSE = 135;
    public static final int THREAD_WAIT_LIST_JOIN_CANCEL_REQUEST = 136;
    public static final int THREAD_WAIT_LIST_JOIN_CANCEL_RESPENSE = 137;
    public static final int THREAD_WAIT_LIST_JOIN_REQUEST = 138;
    public static final int THREAD_WAIT_LIST_JOIN_RESPONSE = 139;
    public static final int UNSUBSCRIBE_LIVE_LAYER_REQUEST = 302;
    public static final int UNSUBSCRIBE_LIVE_LAYER_RESPONSE = 303;
    public static final int UPDATE_PLAY_LIST_REQUEST = 120;
    public static final int UPDATE_PLAY_LIST_RESPONSE = 121;
    public static final int UPDATE_THREAD_CHANNEL_REQUEST = 108;
    public static final int UPDATE_THREAD_CHANNEL_RESPONSE = 109;
    public static final int UPDATE_USER_ROLE_REQUEST = 112;
    public static final int UPDATE_USER_ROLE_RESPONSE = 113;
    public static final int USER_PROFILE_BANNED = 4;
    private static final AtomicInteger idc = new AtomicInteger();

    @JsonProperty("o")
    public ObjectNode object;

    @JsonIgnore
    public Object tag;

    @JsonProperty("t")
    public int type;

    public String id() {
        return JacksonUtils.nodeString(this.object, "id");
    }

    public void genId() {
        if (this.object == null) {
            this.object = JacksonUtils.createObjectNode();
        }
        if (this.object.has("id")) {
            return;
        }
        this.object.put("id", newId());
    }

    public String toString() {
        return JacksonUtils.writeAsString(this);
    }

    private static String newId() {
        return String.valueOf(SystemClock.elapsedRealtime() + idc.incrementAndGet());
    }
}
