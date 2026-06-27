package com.narvii.guideline;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import java.util.List;

/* loaded from: classes2.dex */
public class CommunityGuideline extends NVObject {
    public String content;

    @JsonDeserialize(contentAs = Media.class)
    public List<Media> mediaList;

    @Override // com.narvii.model.NVObject
    public String id() {
        return null;
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
}
