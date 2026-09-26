package com.narvii.model;

import android.content.Context;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.lib.R;
import com.narvii.util.CollectionUtils;
import com.narvii.util.JacksonUtils;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class SharedAlbum extends NVObject implements AuthorGetter {
    public static final int SHARED_FOLDER_TYPE_CUSTOM = 1;
    public static final int SHARED_FOLDER_TYPE_DEFAULT = 2;
    public static final int STATUS_LOCKED = 4;
    public User author;

    @JsonDeserialize(contentAs = Media.class)
    public List<Media> coverMediaList;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date createdTime;
    public String description;
    public int filesCount;
    public String folderId;
    public int folderType;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date modifiedTime;
    public int status;
    public String title;
    public int votesCount;

    @Override // com.narvii.model.AuthorGetter
    public User getAuthor() {
        return this.author;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.folderId;
    }

    public boolean isDefaultAlbum() {
        return this.folderType == 2;
    }

    public boolean isLocked() {
        return this.status == 4;
    }

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 106;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return this.status;
    }

    public Media getCoverImage() {
        if (CollectionUtils.isEmpty(this.coverMediaList)) {
            return null;
        }
        return this.coverMediaList.get(0);
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        User user = this.author;
        if (user == null) {
            return null;
        }
        return user.id();
    }

    public String getTitle(Context context) {
        if (isDefaultAlbum()) {
            return context.getString(R.string.all_photos);
        }
        return this.title;
    }
}
