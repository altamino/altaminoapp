package com.narvii.master.explorer;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.util.JacksonUtils;

/* JADX INFO: loaded from: classes8.dex */
class PageUI {

    @JsonDeserialize(using = JacksonUtils.ColorDeserializer.class)
    @JsonSerialize(using = JacksonUtils.ColorSerializer.class)
    public int backgroundColor;
    public int displayMode;

    @JsonDeserialize(using = JacksonUtils.ColorDeserializer.class)
    @JsonSerialize(using = JacksonUtils.ColorSerializer.class)
    public int textColor;

    PageUI() {
    }
}
