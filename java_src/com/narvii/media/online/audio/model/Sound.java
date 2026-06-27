package com.narvii.media.online.audio.model;

import android.text.TextUtils;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.util.JacksonUtils;
import java.util.Date;
import java.util.List;

/* loaded from: classes.dex */
public class Sound extends NVObject {
    public static final int SOUND_TYPE_MUSIC = 1;
    public static final int SOUND_TYPE_SFX = 2;
    public String album;
    public String artist;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date createdTime;
    public float duration;
    public int fileSizeInByte;
    public String fileType;
    public String id;
    public int mediaType;
    public String mediaUrl;
    public int status;
    public List<String> tags;
    public String thumbnailUrl;
    public String title;
    public int type;

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 101;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.id;
    }

    public String getTagStr() {
        List<String> list = this.tags;
        if (list == null || list.isEmpty()) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (String str : this.tags) {
            sb.append(", ");
            sb.append(str);
        }
        return sb.substring(2);
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return this.status;
    }

    public String getMediaUrl() {
        return this.mediaUrl;
    }

    public Media getMedia() {
        Media media = new Media();
        media.type = this.mediaType;
        media.url = this.mediaUrl;
        media.fileName = this.title;
        media.duration = getDurationInMs();
        media.author = this.artist;
        return media;
    }

    public long getDurationInMs() {
        return (long) (this.duration * 1000.0f);
    }

    public boolean equals(Object obj) {
        return (obj instanceof Sound) && TextUtils.equals(((Sound) obj).id, this.id);
    }
}
