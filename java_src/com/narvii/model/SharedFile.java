package com.narvii.model;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.image.BackgroundSource;
import com.narvii.list.DateCompare;
import com.narvii.media.MediaSelectItem;
import com.narvii.util.JacksonUtils;
import java.util.Date;
import java.util.List;

/* loaded from: classes.dex */
public class SharedFile extends NVObject implements DateCompare, BackgroundSource, MediaSelectItem, AuthorGetter {
    public User author;
    public int commentsCount;

    @JsonDeserialize(contentAs = Media.class)
    public List<Media> coverImages;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date createdTime;
    public ObjectNode extensions;
    public String fileId;
    public int fileType;
    public Media media;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date modifiedTime;
    public int status;
    public String title;
    public int votedValue;
    public int votesCount;

    @Override // com.narvii.image.BackgroundSource
    public int getBackgroundColor() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 109;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.fileId;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        User user = this.author;
        if (user == null) {
            return null;
        }
        return user.id();
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return this.status;
    }

    @Override // com.narvii.list.DateCompare
    public Date getCompareDate() {
        return this.createdTime;
    }

    @Override // com.narvii.image.BackgroundSource
    public boolean hasBackground() {
        return this.media != null;
    }

    @Override // com.narvii.image.BackgroundSource
    public Media getBackgroundMedia() {
        return this.media;
    }

    public boolean isDisabledByAmino() {
        return JacksonUtils.nodeInt(this.extensions, "__disabledLevel__") == 3;
    }

    @Override // com.narvii.media.MediaSelectItem
    public String getUniqueKey() {
        return id();
    }

    @Override // com.narvii.media.MediaSelectItem
    public Media getSelectMedia() {
        return this.media;
    }

    @Override // com.narvii.model.AuthorGetter
    public User getAuthor() {
        return this.author;
    }
}
