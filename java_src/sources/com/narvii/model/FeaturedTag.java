package com.narvii.model;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.util.JacksonUtils;

/* JADX INFO: loaded from: classes5.dex */
public class FeaturedTag {

    @JsonDeserialize(using = JacksonUtils.ColorDeserializer.class)
    @JsonSerialize(using = JacksonUtils.ColorSerializer.class)
    public int color;
    public String icon;
    public String text;
}
