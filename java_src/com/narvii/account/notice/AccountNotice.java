package com.narvii.account.notice;

import android.text.TextUtils;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.invite.InviteMembersFragment;
import com.narvii.model.Community;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import com.narvii.util.JacksonUtils;
import java.util.Date;
import java.util.List;

/* loaded from: classes.dex */
public class AccountNotice extends NVObject {
    public static final String LEVEL_FAIL = "fail";
    public static final String LEVEL_MESSAGE = "message";
    public static final String LEVEL_SUCCESS = "success";
    public static final int NOTICE_PENALTY_TYPE_MUTE = 1;
    public static final int NOTICE_PENALTY_TYPE_NONE = 0;
    public static final int NOTICE_STATUS_ACCEPTED = 2;
    public static final int NOTICE_STATUS_DECLINED = 3;
    public static final int NOTICE_STATUS_NONE = 0;
    public static final int NOTICE_STATUS_PENDING = 1;
    public static final int NOTICE_TYPE_COPYRIGHT_TAKE_DOWN = 5;
    public static final int NOTICE_TYPE_GLOBAL_NOTICE_USER = 8;
    public static final int NOTICE_TYPE_GLOBAL_STRIKE_USER = 10;
    public static final int NOTICE_TYPE_GLOBAL_SYSTEM_MESSAGE = 11;
    public static final int NOTICE_TYPE_GLOBAL_WARN_USER = 9;
    public static final int NOTICE_TYPE_NONE = 0;
    public static final int NOTICE_TYPE_NOTICE_USER = 6;
    public static final int NOTICE_TYPE_PROMOTE_CURATOR = 2;
    public static final int NOTICE_TYPE_PROMOTE_LEADER = 1;
    public static final int NOTICE_TYPE_STRIKE_USER = 4;
    public static final int NOTICE_TYPE_TRANSFER_AGENT = 3;
    public static final int NOTICE_TYPE_WARN_USER = 7;

    @JsonProperty(CommentPostActivity.COMMENT_POST_KEY_NDC_ID)
    public int cid;
    public Community community;
    public String content;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date createdTime;
    public ObjectNode extensions;
    public String icon;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date modifiedTime;
    public String noticeId;
    public User operator;
    public int penaltyType;
    public long penaltyValue;
    public int status;
    public User targetUser;
    public String title;
    public int type;

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.noticeId;
    }

    public String strikeContent() {
        if (TextUtils.isEmpty(getExtentionContent())) {
            return TextUtils.isEmpty(this.content) ? "" : this.content;
        }
        return getExtentionContent();
    }

    public String attchObjectString(String str) {
        return JacksonUtils.nodeString(this.extensions, "attachedObjectInfo", str);
    }

    public String getAppealTicketId() {
        return JacksonUtils.nodeString(this.extensions, "appealTicketId");
    }

    public String getExtentionContent() {
        return JacksonUtils.nodeString(this.extensions, "content");
    }

    public String getNoticeLevel() {
        return JacksonUtils.nodeString(this.extensions, "level");
    }

    public String getNoticeLabel() {
        return JacksonUtils.nodeString(this.extensions, "label");
    }

    public List<Media> getAttachMedias() {
        return JacksonUtils.readListAs(JacksonUtils.nodeString(this.extensions, "mediaList"), Media.class);
    }

    public int attchObjectType() {
        return JacksonUtils.nodeInt(this.extensions, "attachedObjectInfo", ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE);
    }

    public String attchObjectId() {
        return JacksonUtils.nodeString(this.extensions, "attachedObjectInfo", ModerationHistoryBaseFragment.PARAMS_OBJECT_ID);
    }

    public String attchParentId() {
        return JacksonUtils.nodeString(this.extensions, "attachedObjectInfo", "parentId");
    }

    public int attchParentType() {
        return JacksonUtils.nodeInt(this.extensions, "attachedObjectInfo", "parentType");
    }

    public int getAttachDuration() {
        return (int) (JacksonUtils.nodeDouble(this.extensions, "attachedObjectInfo", "extensions", "duration") * 1000.0d);
    }

    public String attachTitle() {
        return JacksonUtils.nodeString(this.extensions, "attachedObjectInfo", "title");
    }

    public String attachContent() {
        return JacksonUtils.nodeString(this.extensions, "attachedObjectInfo", "content");
    }

    public int getMuteTime() {
        if (JacksonUtils.nodeInt(this.extensions, "penaltyType") != 1) {
            return 0;
        }
        return JacksonUtils.nodeInt(this.extensions, "penaltyValue") / InviteMembersFragment.SECOND_HOUR;
    }

    public int getType() {
        return JacksonUtils.nodeInt(this.extensions, "penaltyType");
    }

    public boolean isGlobal() {
        return this.cid == 0;
    }

    public Media attachObjectFirstMedia() {
        try {
            JsonNode jsonNodeNodePath = JacksonUtils.nodePath(this.extensions, "attachedObjectInfo", "mediaList");
            if (jsonNodeNodePath == null || jsonNodeNodePath.size() <= 0) {
                return null;
            }
            return (Media) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNodeNodePath.get(0), Media.class);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
            return null;
        }
    }

    public int getNoticeLableColor() {
        String noticeLevel = getNoticeLevel();
        if (noticeLevel == null) {
            return -15567899;
        }
        char c = 65535;
        int iHashCode = noticeLevel.hashCode();
        if (iHashCode != -1867169789) {
            if (iHashCode == 3135262 && noticeLevel.equals(LEVEL_FAIL)) {
                c = 1;
            }
        } else if (noticeLevel.equals("success")) {
            c = 0;
        }
        if (c != 0) {
            return c != 1 ? -15567899 : -34816;
        }
        return -16726922;
    }

    public AccountNoticeConfig getConfig() {
        try {
            JsonNode jsonNodeNodePath = JacksonUtils.nodePath(this.extensions, "config");
            if (jsonNodeNodePath != null) {
                return (AccountNoticeConfig) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNodeNodePath, AccountNoticeConfig.class);
            }
            return null;
        } catch (JsonProcessingException e) {
            e.printStackTrace();
            return null;
        }
    }

    public AccountNoticeStyle getStyle() {
        try {
            JsonNode jsonNodeNodePath = JacksonUtils.nodePath(this.extensions, TtmlNode.TAG_STYLE);
            if (jsonNodeNodePath != null) {
                return (AccountNoticeStyle) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNodeNodePath, AccountNoticeStyle.class);
            }
            return null;
        } catch (JsonProcessingException e) {
            e.printStackTrace();
            return null;
        }
    }
}
