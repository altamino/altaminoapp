package com.narvii.media.online.audio.model;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.util.JacksonUtils;
import com.narvii.util.StringUtils;
import java.util.Date;
import java.util.List;

/* loaded from: classes.dex */
public class AssetCategory extends NVObject {
    public static final int ASSET_TYPE_SOUND = 1;
    public int assetType;
    public List<String> children;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date createdTime;
    public String id;
    public int status;
    public JsonNode style;
    public String title;
    public int totalCount;

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        return null;
    }

    public int getCoverBackgroundColor() throws NumberFormatException {
        int color = StringUtils.parseColor(JacksonUtils.nodeString(this.style, TtmlNode.ATTR_TTS_BACKGROUND_COLOR));
        if (color == 0) {
            return 872415231;
        }
        return color;
    }

    public Media getCoverMediaCover() {
        JsonNode jsonNodeNodePath = JacksonUtils.nodePath(this.style, "coverMediaList");
        if (jsonNodeNodePath != null && jsonNodeNodePath.isArray()) {
            try {
                Media[] mediaArr = (Media[]) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNodeNodePath, Media[].class);
                if (mediaArr != null && mediaArr.length > 0) {
                    return mediaArr[0];
                }
            } catch (JsonProcessingException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.id;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return this.status;
    }
}
