package com.narvii.model;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.flag.model.Flag;
import com.narvii.util.JacksonUtils;
import java.util.List;

/* loaded from: classes.dex */
public class CheckInRanking extends NVObject {

    @JsonDeserialize(using = JacksonUtils.ColorDeserializer.class)
    @JsonSerialize(using = JacksonUtils.ColorSerializer.class)
    public int color;
    public int maxStreak;
    public int minStreak;
    public String title;

    @JsonDeserialize(contentAs = User.class)
    @JsonSerialize(contentAs = User.class)
    public List<User> userProfileList;

    @Override // com.narvii.model.NVObject
    public String id() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return Flag.TYPE_NONE;
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
