package com.narvii.account.notice;

import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.node.ObjectNode;
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

/* JADX INFO: loaded from: classes5.dex */
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
    public String id() {
        return this.noticeId;
    }

    public boolean isGlobal() {
        return this.cid == 0;
    }

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

    public String attachContent() {
        return JacksonUtils.nodeString(this.extensions, "attachedObjectInfo", "content");
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

    public String attachTitle() {
        return JacksonUtils.nodeString(this.extensions, "attachedObjectInfo", "title");
    }

    public String attchObjectId() {
        return JacksonUtils.nodeString(this.extensions, "attachedObjectInfo", ModerationHistoryBaseFragment.PARAMS_OBJECT_ID);
    }

    public String attchObjectString(String str) {
        return JacksonUtils.nodeString(this.extensions, "attachedObjectInfo", str);
    }

    public int attchObjectType() {
        return JacksonUtils.nodeInt(this.extensions, "attachedObjectInfo", ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE);
    }

    public String attchParentId() {
        return JacksonUtils.nodeString(this.extensions, "attachedObjectInfo", "parentId");
    }

    public int attchParentType() {
        return JacksonUtils.nodeInt(this.extensions, "attachedObjectInfo", "parentType");
    }

    public String getAppealTicketId() {
        return JacksonUtils.nodeString(this.extensions, "appealTicketId");
    }

    public int getAttachDuration() {
        return (int) (JacksonUtils.nodeDouble(this.extensions, "attachedObjectInfo", "extensions", TypedValues.TransitionType.S_DURATION) * 1000.0d);
    }

    public List<Media> getAttachMedias() {
        return JacksonUtils.readListAs(JacksonUtils.nodeString(this.extensions, "mediaList"), Media.class);
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

    public String getExtentionContent() {
        return JacksonUtils.nodeString(this.extensions, "content");
    }

    public int getMuteTime() {
        if (JacksonUtils.nodeInt(this.extensions, "penaltyType") != 1) {
            return 0;
        }
        return JacksonUtils.nodeInt(this.extensions, "penaltyValue") / InviteMembersFragment.SECOND_HOUR;
    }

    public String getNoticeLabel() {
        return JacksonUtils.nodeString(this.extensions, "label");
    }

    public String getNoticeLevel() {
        return JacksonUtils.nodeString(this.extensions, "level");
    }

    public AccountNoticeStyle getStyle() {
        try {
            JsonNode jsonNodeNodePath = JacksonUtils.nodePath(this.extensions, "style");
            if (jsonNodeNodePath != null) {
                return (AccountNoticeStyle) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNodeNodePath, AccountNoticeStyle.class);
            }
            return null;
        } catch (JsonProcessingException e) {
            e.printStackTrace();
            return null;
        }
    }

    public int getType() {
        return JacksonUtils.nodeInt(this.extensions, "penaltyType");
    }

    public int getNoticeLableColor() {
        String noticeLevel = getNoticeLevel();
        if (noticeLevel == null) {
            return -15567899;
        }
        if (!noticeLevel.equals("success")) {
            if (!noticeLevel.equals(LEVEL_FAIL)) {
                return -15567899;
            }
            return -34816;
        }
        return -16726922;
    }

    public String strikeContent() {
        if (!TextUtils.isEmpty(getExtentionContent())) {
            return getExtentionContent();
        }
        if (TextUtils.isEmpty(this.content)) {
            return "";
        }
        return this.content;
    }
}
