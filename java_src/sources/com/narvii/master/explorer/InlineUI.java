package com.narvii.master.explorer;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.util.JacksonUtils;

/* JADX INFO: loaded from: classes11.dex */
class InlineUI {
    public int displayMode;

    @JsonDeserialize(using = JacksonUtils.ColorDeserializer.class)
    @JsonSerialize(using = JacksonUtils.ColorSerializer.class)
    public int backgroundColor = -1;

    @JsonDeserialize(using = JacksonUtils.ColorDeserializer.class)
    @JsonSerialize(using = JacksonUtils.ColorSerializer.class)
    public int textColor = -9212820;

    InlineUI() {
    }
}
