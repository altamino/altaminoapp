package com.narvii.model;

import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.util.JacksonUtils;
import java.io.IOException;
import java.util.Date;

/* JADX INFO: loaded from: classes8.dex */
public class ChatMessage extends NVObject implements AuthorGetter {
    public static final int CALL_TYPE_AVATAR = 3;
    public static final int CALL_TYPE_NONE = 0;
    public static final int CALL_TYPE_SCREEN_ROOM = 4;
    public static final int CALL_TYPE_VIDEO = 2;
    public static final int CALL_TYPE_VOICE = 1;
    public static final int CHAT_MESSAGE_TYPE_INFO_CHAT_REMOVED = 118;
    public static final int CHAT_MESSAGE_TYPE_INFO_DELETED_BY_ADMIN = 119;
    public static final int CHAT_MESSAGE_TYPE_INFO_DISABALE_VIEW_ONLY = 126;
    public static final int CHAT_MESSAGE_TYPE_INFO_DISABLE_TIP_PERMISSION = 129;
    public static final int CHAT_MESSAGE_TYPE_INFO_ENABALE_VIEW_ONLY = 125;
    public static final int CHAT_MESSAGE_TYPE_INFO_ENABLE_TIP_PERMISSION = 128;
    public static final int CHAT_MESSAGE_TYPE_INFO_FORCE_REMOVED_FROM_CHAT = 117;
    public static final int CHAT_MESSAGE_TYPE_INFO_ORGANIZER_TRANSFERRED = 116;
    public static final int CHAT_MESSAGE_TYPE_INFO_PIN_ANNOUNCEMENT = 121;
    public static final int CHAT_MESSAGE_TYPE_INFO_TIPPING = 120;
    public static final int CHAT_MESSAGE_TYPE_INFO_UNPIN_ANNOUNCEMENT = 127;
    public static final int CHAT_MESSAGE_TYPE_INFO_VV_CHAT_PERMISSION_INVITED_AND_REQUESTED = 123;
    public static final int CHAT_MESSAGE_TYPE_INFO_VV_CHAT_PERMISSION_INVITE_ONLY = 124;
    public static final int CHAT_MESSAGE_TYPE_INFO_VV_CHAT_PERMISSION_OPEN_TO_EVERYONE = 122;
    public static final int CHAT_MESSAGE_TYPE_USER_AVATAR_CALL_CANCELLED = 59;
    public static final int CHAT_MESSAGE_TYPE_USER_AVATAR_CALL_DECLINED = 60;
    public static final int CHAT_MESSAGE_TYPE_USER_AVATAR_CALL_NO_ANSWERED = 58;
    public static final int CHAT_MESSAGE_TYPE_USER_CALL_CANCELLED = 53;
    public static final int CHAT_MESSAGE_TYPE_USER_CALL_DECLINED = 54;
    public static final int CHAT_MESSAGE_TYPE_USER_CALL_NO_ANSWERED = 52;
    public static final int CHAT_MESSAGE_TYPE_USER_VIDEO_CALL_CANCELLED = 56;
    public static final int CHAT_MESSAGE_TYPE_USER_VIDEO_CALL_DECLINED = 57;
    public static final int CHAT_MESSAGE_TYPE_USER_VIDEO_CALL_NO_ANSWERED = 55;
    public static final int TYPE_AD_UNIT_MESSAGE = 65284;
    public static final int TYPE_INFO_BACKGROUND_CHANGE = 104;
    public static final int TYPE_INFO_CONTENT_CHANGE = 113;
    public static final int TYPE_INFO_DELETED = 100;
    public static final int TYPE_INFO_END_AUDIO_CHAT = 110;
    public static final int TYPE_INFO_END_AVATAR_CHAT = 112;
    public static final int TYPE_INFO_END_SCREENING_ROOM = 115;
    public static final int TYPE_INFO_END_VIDEO_CHAT = 111;
    public static final int TYPE_INFO_ICON_CHANGE = 106;
    public static final int TYPE_INFO_MEMBER_BECOME_ACTIVE = 101;
    public static final int TYPE_INFO_MEMBER_QUIT = 102;
    public static final int TYPE_INFO_SESSION_INIT = 103;
    public static final int TYPE_INFO_START_AUDIO_CHAT = 107;
    public static final int TYPE_INFO_START_AVATAR_CHAT = 109;
    public static final int TYPE_INFO_START_SCREENING_ROOM = 114;
    public static final int TYPE_INFO_START_VIDEO_CHAT = 108;
    public static final int TYPE_INFO_TITLE_CHANGE = 105;
    public static final int TYPE_INVITE_MESSAGE = 65283;
    public static final int TYPE_TIMESTAMP = 65281;
    public static final int TYPE_USER_GENERAL = 0;
    public static final int TYPE_USER_SHARE_EXURL = 50;
    public static final int TYPE_USER_SHARE_USER = 51;
    public static final int TYPE_USER_STICKER = 3;
    public static final int TYPE_USER_STRIKE = 1;
    public static final int TYPE_USER_VIDEO_MESSAGE = 4;
    public static final int TYPE_USER_VOICE_NOTE = 2;
    public static final int TYPE_WELCOME_MESSAGE = 65282;
    public int _errorCode;
    public boolean _linkParsing;
    public int _ndcId;
    public int _status;

    @JsonProperty("uid")
    public String _uid;
    public int _videoUploadPercentage;
    public User author;
    public String chatBubbleId;
    public int chatBubbleVersion;
    public long clientRefId;
    public int clientRefIdTmp;
    public String content;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date createdTime;
    public ObjectNode extensions;
    public boolean includedInSummary;
    public boolean isHidden;
    public int mediaType;
    public boolean mediaUhqEnabled;
    public String mediaValue;
    public String messageId;
    public String stickerId;
    public String threadId;
    public int type;

    private boolean isAvatarMessage() {
        int i10 = this.type;
        return i10 == 59 || i10 == 60 || i10 == 58;
    }

    private boolean isScreenRoomMessage() {
        int i10 = this.type;
        return i10 == 114 || i10 == 115;
    }

    private boolean isVideoMessage() {
        int i10 = this.type;
        return i10 == 56 || i10 == 57 || i10 == 55;
    }

    private boolean isVoiceMessage() {
        int i10 = this.type;
        return i10 == 53 || i10 == 54 || i10 == 52;
    }

    @Override // com.narvii.model.AuthorGetter
    public User getAuthor() {
        return this.author;
    }

    public String getBubbleId() {
        return this.chatBubbleId;
    }

    public int getBubbleVersion() {
        return this.chatBubbleVersion;
    }

    public int getClientRefIdTmp() {
        int i10 = (int) this.clientRefId;
        this.clientRefIdTmp = i10;
        return i10;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.messageId;
    }

    public boolean isAuthoredChatMessageType() {
        int i10 = this.type;
        return i10 == 0 || i10 == 1 || i10 == 50 || i10 == 51;
    }

    public boolean isCallRelatedMessage() {
        int i10 = this.type;
        return i10 == 53 || i10 == 54 || i10 == 52 || i10 == 56 || i10 == 57 || i10 == 55 || i10 == 59 || i10 == 60 || i10 == 58;
    }

    public boolean isCancelMessage() {
        int i10 = this.type;
        return i10 == 53 || i10 == 56 || i10 == 59;
    }

    public boolean isDeclineMessage() {
        int i10 = this.type;
        return i10 == 54 || i10 == 57 || i10 == 60;
    }

    public boolean isFlagableMessage() {
        return true;
    }

    public boolean isMediaMessage() {
        int i10 = this.mediaType;
        return i10 == 102 || i10 == 100 || i10 == 103 || i10 == 123;
    }

    public boolean isMediaVideo() {
        int i10 = this.mediaType;
        return i10 == 102 || i10 == 103 || i10 == 123;
    }

    public boolean isPermissionRelatedMessage() {
        int i10 = this.type;
        return i10 == 122 || i10 == 123 || i10 == 124;
    }

    public boolean isStickerMessage() {
        return this.type == 3;
    }

    public boolean isThreadDestroyMessage() {
        int i10 = this.type;
        return i10 == 117 || i10 == 118;
    }

    public boolean isTimeOutMessage() {
        int i10 = this.type;
        return i10 == 52 || i10 == 58 || i10 == 55;
    }

    public boolean isUserContentMessage() {
        int i10 = this.type;
        return i10 == 0 || i10 == 1 || i10 == 2 || i10 == 3 || i10 == 4 || i10 == 50 || i10 == 51;
    }

    public boolean isVVChatStartOrEndMessage() {
        int i10 = this.type;
        return i10 == 107 || i10 == 108 || i10 == 109 || i10 == 114 || i10 == 110 || i10 == 111 || i10 == 112 || i10 == 115 || i10 == 54 || i10 == 53 || i10 == 56 || i10 == 57;
    }

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 7;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return this.threadId;
    }

    public void setClientRefIdTmp(int i10) {
        this.clientRefIdTmp = i10;
        this.clientRefId = i10;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return 0;
    }

    public int getDuration() {
        return (int) (JacksonUtils.nodeDouble(this.extensions, TypedValues.TransitionType.S_DURATION) * 1000.0d);
    }

    public LinkSummary getFirstLinkSnippet() {
        LinkSummary linkSummary;
        Media firstMedia;
        JsonNode jsonNodeNodePath = JacksonUtils.nodePath(this.extensions, "linkSnippetList");
        if (jsonNodeNodePath != null && jsonNodeNodePath.isArray()) {
            try {
                LinkSummary[] linkSummaryArr = (LinkSummary[]) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNodeNodePath, LinkSummary[].class);
                if (linkSummaryArr == null || linkSummaryArr.length <= 0 || (linkSummary = linkSummaryArr[0]) == null || (firstMedia = linkSummary.getFirstMedia()) == null || firstMedia.url == null) {
                    return null;
                }
                return linkSummary;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public ChatMessage getReplyMessage() {
        try {
            return (ChatMessage) JacksonUtils.DEFAULT_MAPPER.treeToValue(JacksonUtils.nodePath(this.extensions, "replyMessage"), ChatMessage.class);
        } catch (Exception unused) {
            return null;
        }
    }

    public String getReplyMessageId() {
        return JacksonUtils.nodeString(this.extensions, "replyMessageId");
    }

    public Sticker getStickerInfo() {
        JsonNode jsonNodeNodePath;
        if (this.type != 3 || (jsonNodeNodePath = JacksonUtils.nodePath(this.extensions, "sticker")) == null) {
            return null;
        }
        try {
            return (Sticker) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNodeNodePath, Sticker.class);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public ChatMessageVideoInfo getVideoInfo() {
        JsonNode jsonNodeNodePath = JacksonUtils.nodePath(this.extensions, "videoExtensions");
        if (jsonNodeNodePath == null) {
            return null;
        }
        return (ChatMessageVideoInfo) JacksonUtils.readAs(jsonNodeNodePath.toString(), ChatMessageVideoInfo.class);
    }

    public boolean hasAttachment() {
        return JacksonUtils.nodePath(this.extensions, "attachedObjectInfo") != null;
    }

    public boolean hasImageMedia() {
        int i10 = this.mediaType;
        return (i10 == 100 || i10 == 103 || i10 == 123) && !TextUtils.isEmpty(this.mediaValue);
    }

    public boolean hasLinkSnippet() {
        return JacksonUtils.nodePath(this.extensions, "linkSnippetList") != null;
    }

    public boolean hasMedia() {
        return this.mediaType > 0 && !TextUtils.isEmpty(this.mediaValue);
    }

    public boolean hasMentionedUser() {
        return JacksonUtils.nodePath(this.extensions, "mentionedArray") != null;
    }

    @Override // com.narvii.model.NVObject
    public int hashCode() {
        String str = this.messageId;
        if (str != null) {
            return str.hashCode();
        }
        Date date = this.createdTime;
        if (date != null) {
            return (int) (date.getTime() / 100);
        }
        return 0;
    }

    public boolean isSerialExecutorRequired() {
        return this.type == 0 && (isMediaMessage() || hasLinkSnippet() || this._linkParsing);
    }

    public boolean needSubTransparentPlaceholder() {
        return this.mediaType == 100 && !TextUtils.isEmpty(this.mediaValue);
    }

    public boolean needVideoPlaceholder() {
        return this.mediaType == 123 && !TextUtils.isEmpty(this.mediaValue);
    }

    public void setReplyMessage(ChatMessage chatMessage) {
        if (chatMessage == null) {
            return;
        }
        if (this.extensions == null) {
            this.extensions = JacksonUtils.createObjectNode();
        }
        try {
            this.extensions.put("replyMessage", JacksonUtils.DEFAULT_MAPPER.readTree(JacksonUtils.writeAsString(chatMessage)));
            this.extensions.put("replyMessageId", chatMessage.messageId);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void setVideoInfo(ChatMessageVideoInfo chatMessageVideoInfo) {
        if (chatMessageVideoInfo == null) {
            return;
        }
        if (this.extensions == null) {
            this.extensions = JacksonUtils.createObjectNode();
        }
        this.extensions.put("videoExtensions", JacksonUtils.DEFAULT_MAPPER.valueToTree(chatMessageVideoInfo));
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        User user = this.author;
        if (user != null && (str = user.nickname) != null) {
            sb.append(str);
            sb.append(": ");
        }
        String str2 = this.content;
        if (str2 != null) {
            sb.append(str2);
        }
        if (this.mediaValue != null) {
            sb.append('(');
            sb.append(this.mediaValue);
            sb.append(')');
        }
        return sb.toString();
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        User user = this.author;
        return user == null ? this._uid : user.uid;
    }

    public int getCallMessageType() {
        if (isVoiceMessage()) {
            return 1;
        }
        if (isVideoMessage()) {
            return 2;
        }
        if (isAvatarMessage()) {
            return 3;
        }
        if (isScreenRoomMessage()) {
            return 4;
        }
        return 0;
    }

    public long getVideoDuration() {
        ChatMessageVideoInfo videoInfo = getVideoInfo();
        if (videoInfo == null) {
            return 0L;
        }
        return videoInfo.duration * 1000;
    }

    @Override // com.narvii.model.NVObject, com.narvii.model.NVObjectComparable
    public boolean isIdEquals(NVObject nVObject) {
        if (super.isIdEquals(nVObject) && this.type != 100) {
            return true;
        }
        return false;
    }

    public boolean isReplyMessage() {
        if (getReplyMessage() != null) {
            return true;
        }
        return false;
    }

    public boolean isReplyTo(String str) {
        User user;
        ChatMessage replyMessage = getReplyMessage();
        if (replyMessage == null || (user = replyMessage.author) == null || !TextUtils.equals(user.id(), str)) {
            return false;
        }
        return true;
    }

    public Media media() {
        if (!hasMedia()) {
            return null;
        }
        Media media = new Media();
        media.type = this.mediaType;
        media.url = this.mediaValue;
        ChatMessageVideoInfo videoInfo = getVideoInfo();
        if (videoInfo != null) {
            media.coverImage = videoInfo.coverImage;
            media.duration = videoInfo.duration;
        }
        return media;
    }
}
