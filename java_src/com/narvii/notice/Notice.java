package com.narvii.notice;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.util.JacksonUtils;
import java.util.Date;

/* loaded from: classes.dex */
public class Notice extends NVObject {
    public static final int NOTIFICATION_TYPE_ACTIVITIES_BLOG = 26;
    public static final int NOTIFICATION_TYPE_ACTIVITIES_CHAT_THREAD = 28;
    public static final int NOTIFICATION_TYPE_ACTIVITIES_WIKI = 27;
    public static final int NOTIFICATION_TYPE_ADD_CUSTOM_TITLE = 36;
    public static final int NOTIFICATION_TYPE_COIN_NOT_ENOUGH_RENEW_AVATAR_FRAME = 72;
    public static final int NOTIFICATION_TYPE_COIN_NOT_ENOUGH_RENEW_FAN_CLUB = 71;
    public static final int NOTIFICATION_TYPE_COIN_NOT_ENOUGH_RENEW_MEMBERSHIP = 70;
    public static final int NOTIFICATION_TYPE_COMMUNITY_JOIN_REQUEST_APPROVED = 69;
    public static final int NOTIFICATION_TYPE_CREATE_AUDIO_CHAT = 31;
    public static final int NOTIFICATION_TYPE_CREATE_AVATAR_CHAT = 35;
    public static final int NOTIFICATION_TYPE_CREATE_SCREENING_ROOM = 38;
    public static final int NOTIFICATION_TYPE_CREATE_VIDEO_CHAT = 32;
    public static final int NOTIFICATION_TYPE_FANS_SUBSCRIBE = 60;
    public static final int NOTIFICATION_TYPE_FANS_THANKS = 61;
    public static final int NOTIFICATION_TYPE_INFLUENCER_ACTIVITY_BLOG = 62;
    public static final int NOTIFICATION_TYPE_INFLUENCER_ACTIVITY_CHAT_THREAD = 63;
    public static final int NOTIFICATION_TYPE_INFLUENCER_ACTIVITY_ITEM = 64;
    public static final int NOTIFICATION_TYPE_INVITE_AUDIO_CHAT = 29;
    public static final int NOTIFICATION_TYPE_INVITE_AVATAR_CHAT = 34;
    public static final int NOTIFICATION_TYPE_INVITE_SCREENING_ROOM = 37;
    public static final int NOTIFICATION_TYPE_INVITE_VIDEO_CHAT = 30;
    public static final int NOTIFICATION_TYPE_NEW_DEDUCTION_COUPON_NOT_USED = 73;
    public static final int NOTIFICATION_TYPE_STORE_PRODUCT_PURCHASED = 65;
    public static final int NOTIFICATION_TYPE_TIPPING_FORWARD = 55;
    public static final int NOTIFICATION_TYPE_TIPPING_THANKS = 57;
    public static final int TYPE_COMMENT = 3;
    public static final int TYPE_COMMENT_QUOTED = 4;
    public static final int TYPE_KNOWLEDGE_BASE_REQUEST_APPROVED = 24;
    public static final int TYPE_POLL_ENDED_CONTESTANT = 17;
    public static final int TYPE_POLL_ENDED_GENERAL = 15;
    public static final int TYPE_POLL_ENDED_OWNER = 16;
    public static final int TYPE_POLL_OPTION_ADDED = 12;
    public static final int TYPE_POLL_OPTION_APPROVED = 13;
    public static final int TYPE_POLL_OPTION_VOTED_UP = 14;
    public static final int TYPE_REPOST = 11;
    public static final int TYPE_SHARED_FILE_UPLOAD = 33;
    public static final int TYPE_USER_MEMBERSHIP = 1;
    public static final int TYPE_USER_MEMBERSHIP_INVITATION = 2;
    public static final int TYPE_VOTE_DOWN = 10;
    public static final int TYPE_VOTE_UP = 9;
    public int contextNdcId;

    @Deprecated
    public String contextText;
    public int contextValue;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date createdTime;
    public int ndcId;
    public String notificationId;
    public String objectId;
    public int objectSubtype;
    public String objectText;
    public int objectType;
    public User operator;
    public String parentId;
    public int parentSubtype;
    public String parentText;
    public int parentType;
    public int type;

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return -1;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.notificationId;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return this.parentId;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        User user = this.operator;
        if (user == null) {
            return null;
        }
        return user.uid;
    }
}
