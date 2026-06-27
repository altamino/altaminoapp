package com.narvii.master;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.model.Media;
import com.narvii.util.JacksonUtils;
import java.util.List;

/* loaded from: classes.dex */
public class MasterAppearance {
    public List<Media> backgroundMediaList;

    @JsonDeserialize(using = JacksonUtils.ColorDeserializer.class)
    @JsonSerialize(using = JacksonUtils.ColorSerializer.class)
    public int primaryColor = -1;
}
