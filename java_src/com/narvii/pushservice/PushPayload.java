package com.narvii.pushservice;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.modulization.page.PageManager;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.PackageUtils;
import java.util.Date;

/* loaded from: classes.dex */
public class PushPayload {
    public static final int CALL_TYPE_AVATAR = 3;
    public static final int CALL_TYPE_NONE = 0;
    public static final int CALL_TYPE_SCREEN_ROOM = 4;
    public static final int CALL_TYPE_VIDEO = 2;
    public static final int CALL_TYPE_VOICE = 1;
    public static final int NOTIFICATION_TYPE_CANCEL_VV_CHAT = 39;
    public static final int NOTIFICATION_TYPE_CHAT_ADD_CO_HOST = 67;
    public static final int NOTIFICATION_TYPE_CHAT_REMOVE_CO_HOST = 68;
    public static final int NOTIFICATION_TYPE_CREATE_AUDIO_CHAT = 31;
    public static final int NOTIFICATION_TYPE_CREATE_AVATAR_CHAT = 35;
    public static final int NOTIFICATION_TYPE_CREATE_SCREENING_ROOM = 38;
    public static final int NOTIFICATION_TYPE_CREATE_VIDEO_CHAT = 32;
    public static final int NOTIFICATION_TYPE_GET_COINS_BY_WATCHING_ADS = 51;
    public static final int NOTIFICATION_TYPE_INVITE_AUDIO_CHAT = 29;
    public static final int NOTIFICATION_TYPE_INVITE_AVATAR_CHAT = 34;
    public static final int NOTIFICATION_TYPE_INVITE_SCREENING_ROOM = 37;
    public static final int NOTIFICATION_TYPE_INVITE_VIDEO_CHAT = 30;
    public static final int NOTIFICATION_TYPE_ORGANIZER_TRANSFER_REQUEST_ACCEPTED = 54;
    public static final int NOTIFICATION_TYPE_ORGANIZER_TRANSFER_REQUEST_RECEIVED = 53;
    public static final int NOTIFICATION_TYPE_P2A_TASK_FINISHED = 50;
    public static final int NOTIFICATION_TYPE_VV_CHAT_PRESENTER_INVITE = 66;
    public static final int PUSH_NOTIFICATION_PIC_TYPE_COMMUNITY_ICON = 2;
    public static final int PUSH_NOTIFICATION_PIC_TYPE_NORMAL = 0;
    public static final int PUSH_NOTIFICATION_PIC_TYPE_USER_PROFILE_ICON = 1;
    public static final int TYPE_CHAT_MESSAGE_RECEIVED = 18;
    public static final int TYPE_CHAT_MESSAGE_TYPING = 19;
    public static final int TYPE_CHAT_THREAD_INVITE_RECEIVED = 21;
    public static final int TYPE_CHAT_THREAD_JOIN_REQUEST_APPROVED = 23;
    public static final int TYPE_CHAT_THREAD_JOIN_REQUEST_RECEIVED = 22;
    public static final int TYPE_CHAT_THREAD_USER_OBSERVING = 20;
    public static final int TYPE_COMMENT = 3;
    public static final int TYPE_COMMENT_QUOTED = 4;
    public static final int TYPE_POLL_ENDED_CONTESTANT = 17;
    public static final int TYPE_POLL_ENDED_GENERAL = 15;
    public static final int TYPE_POLL_ENDED_OWNER = 16;
    public static final int TYPE_POLL_OPTION_ADDED = 12;
    public static final int TYPE_POLL_OPTION_APPROVED = 13;
    public static final int TYPE_POLL_OPTION_VOTED_UP = 14;
    public static final int TYPE_REPLY = 7;
    public static final int TYPE_REPLY_QUOTED = 8;
    public static final int TYPE_REPOST = 11;
    public static final int TYPE_RESERVED = 0;
    public static final int TYPE_TOPIC_MEMBERSHIP = 5;
    public static final int TYPE_TOPIC_MEMBERSHIP_INVITATION = 6;
    public static final int TYPE_USER_MEMBERSHIP = 1;
    public static final int TYPE_USER_MEMBERSHIP_INVITATION = 2;
    public static final int TYPE_VOTE_DOWN = 10;
    public static final int TYPE_VOTE_UP = 9;
    public PushAPS aps;
    public Community community;

    @JsonProperty("exp")
    public long expireTime;
    public ObjectNode ext;

    @JsonProperty("userProfile")
    public User fromUser;
    public String id;

    @JsonProperty("cv")
    public PayloadVersion minVersion;
    public int msgType;
    public int ndcId;
    public String nickname;

    @JsonIgnore
    boolean picDownloaded;

    @JsonIgnore
    Bitmap picFull;

    @JsonIgnore
    Bitmap picIcon;
    public int picType;
    public String picUrl;

    @JsonProperty("tid")
    public String threadId;

    @JsonProperty("ts")
    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date threadTime;

    @JsonProperty("ttype")
    public int threadType = -1;

    @JsonProperty("t")
    public String trackId;

    @JsonProperty("notifType")
    public int type;
    public String uid;

    @JsonProperty("u")
    public String url;

    public boolean isPropTaskFinishType() {
        return false;
    }

    public boolean isMarketing() {
        int i = this.type;
        return i == 0 || i > 1000;
    }

    public boolean isChat() {
        int i;
        int i2 = this.type;
        return (i2 >= 18 && i2 <= 23) || (i = this.type) == 53 || i == 54 || i == 66 || i == 67 || i == 68;
    }

    public Uri getUri() {
        Uri uri = null;
        try {
            if (this.url != null) {
                uri = Uri.parse(this.url);
            }
        } catch (Exception e) {
            Log.e("fail to parse notification url " + this.url, e);
        }
        if (uri != null || !isChat()) {
            return uri;
        }
        if (this.threadId == null) {
            if (NVApplication.CLIENT_TYPE == 100) {
                return Uri.parse("ndc://x" + this.ndcId + "/my-chats");
            }
            return Uri.parse(PageManager.PAGE_MY_CHAT_URI);
        }
        try {
            if (NVApplication.CLIENT_TYPE == 100) {
                uri = Uri.parse("ndc://x" + this.ndcId + "/chat-thread/" + this.threadId);
            } else {
                uri = Uri.parse(PageManager.PAGE_CHAT_THREAD_URI + this.threadId);
            }
            return uri;
        } catch (Exception unused) {
            return uri;
        }
    }

    public String message(NVContext nVContext) {
        PushAPS pushAPS = this.aps;
        String str = pushAPS == null ? null : pushAPS.message;
        return (this.type != 1 || TextUtils.isEmpty(this.nickname)) ? str : nVContext.getContext().getString(R.string.pushservice_following_message, this.nickname);
    }

    public String title() {
        PushAPS pushAPS = this.aps;
        if (pushAPS == null) {
            return null;
        }
        return pushAPS.title;
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public PushPayload m53clone() {
        return (PushPayload) JacksonUtils.readAs(JacksonUtils.writeAsString(this), PushPayload.class);
    }

    public int getPayloadCallType() {
        int i = this.type;
        if (i == 18) {
            int i2 = this.msgType;
            if (i2 == 54 || i2 == 53 || i2 == 52) {
                return 1;
            }
            if (i2 == 56 || i2 == 57 || i2 == 55) {
                return 2;
            }
            return (i2 == 59 || i2 == 60 || i2 == 58) ? 3 : 0;
        }
        if (i == 31 || i == 29) {
            return 1;
        }
        if (i == 32 || i == 30) {
            return 2;
        }
        if (i == 35 || i == 34) {
            return 3;
        }
        return (i == 38 || i == 37) ? 4 : 0;
    }

    public boolean isCallInviteType() {
        int i = this.type;
        return i == 29 || i == 30 || i == 32 || i == 31;
    }

    public boolean isScreenRoomType() {
        int i = this.type;
        return i == 38 || i == 37;
    }

    public boolean isCallCancelMessage() {
        int i;
        return this.type == 18 && ((i = this.msgType) == 53 || i == 56 || i == 59);
    }

    public boolean isDeclineMessage() {
        int i;
        return this.type == 18 && ((i = this.msgType) == 54 || i == 57 || i == 60);
    }

    public boolean isTimeoutMessage() {
        int i;
        return this.type == 18 && ((i = this.msgType) == 55 || i == 52 || i == 58);
    }

    public boolean isCurrenVersionPush(Context context) {
        PayloadVersion payloadVersion = this.minVersion;
        return payloadVersion == null || TextUtils.isEmpty(payloadVersion.f2android) || PackageUtils.compareVersionName(this.minVersion.f2android, new PackageUtils(context).getVersionName()) <= 0;
    }
}
