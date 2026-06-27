package com.narvii.model;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import java.util.Date;
import java.util.List;

/* loaded from: classes.dex */
public class Comment extends NVObject implements AuthorGetter {
    public static final int COMMENT_TYPE_USER_GENERAL = 0;
    public static final int COMMENT_TYPE_USER_STICKER = 3;
    public User author;
    public String commentId;
    public String content;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date createTime;
    public ObjectNode extensions;
    public String headCommentId;

    @JsonDeserialize(contentAs = Media.class)
    public List<Media> mediaList;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date modifiedTime;
    public int ndcId;
    public String parentId;
    public int parentNdcId;
    public int parentType;
    public String stickerId;
    public boolean subcommentIsEnd;
    public int subcommentStart;

    @JsonInclude(JsonInclude.Include.NON_NULL)
    public String subcommentStoptime;
    public int subcommentsCount;

    @JsonDeserialize(contentAs = Comment.class)
    public List<Comment> subcommentsPreview;
    public int type;
    public int votedValue;
    public int votesSum;

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 3;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.commentId;
    }

    public static String getParentTypeName(int i) {
        if (i == 0 || i == 1 || i == 2 || i == 109 || i == 131) {
            return NVObject.apiTypeName(i);
        }
        Log.e("unknown comment parentType " + i);
        return null;
    }

    public static String getParentTypeName(String str) {
        try {
            return getParentTypeName(Integer.parseInt(str));
        } catch (Exception unused) {
            Log.e("unknown comment parentType " + str);
            return null;
        }
    }

    public String getParentTypeName() {
        return getParentTypeName(this.parentType);
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return this.parentId;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        User user = this.author;
        if (user == null) {
            return null;
        }
        return user.uid;
    }

    @Override // com.narvii.model.AuthorGetter
    public User getAuthor() {
        return this.author;
    }

    public boolean isStickerComment() {
        return this.type == 3;
    }

    public Sticker getCommentSticker() {
        if (this.type != 3) {
            return null;
        }
        JsonNode jsonNodeNodePath = JacksonUtils.nodePath(this.extensions, "sticker");
        if (jsonNodeNodePath != null) {
            try {
                return (Sticker) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNodeNodePath, Sticker.class);
            } catch (JsonProcessingException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public boolean isLegal() {
        int i = this.type;
        return i == 0 || i == 3;
    }

    @Override // com.narvii.model.NVObject
    public boolean isAccessibleByUser(User user) {
        if (this.type != 3 || getCommentSticker() == null) {
            return super.isAccessibleByUser(user);
        }
        return super.isAccessibleByUser(user) && getCommentSticker().isAccessibleByUser(user);
    }
}
