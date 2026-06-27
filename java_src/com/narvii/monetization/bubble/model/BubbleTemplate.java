package com.narvii.monetization.bubble.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.model.BubbleInfo;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.util.JacksonUtils;
import java.util.Date;
import java.util.List;

/* loaded from: classes.dex */
public class BubbleTemplate extends NVObject {

    @JsonDeserialize(contentAs = Media.class)
    public List<Media> backgroundMedia;

    @JsonDeserialize(using = JacksonUtils.ColorDeserializer.class)
    @JsonSerialize(using = JacksonUtils.ColorSerializer.class)
    public int color;
    public BubbleInfo config;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date createdTime;
    public String description;

    @JsonProperty("templateId")
    public String id;
    public String materialUrl;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date modifiedTime;
    public String name;
    public int ndcId;
    public int status;

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
        return this.id;
    }

    public Media getBackgroundMedia() {
        List<Media> list = this.backgroundMedia;
        if (list == null || list.size() == 0) {
            return null;
        }
        return this.backgroundMedia.get(0);
    }

    public String getMaterialUrl() {
        return this.materialUrl;
    }
}
