package com.narvii.chat.core;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.JacksonUtils;
import java.util.Date;

/* compiled from: MarkAsReadResponse.kt */
/* loaded from: classes.dex */
public final class MarkAsReadResponse extends ApiResponse {

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    private final Date lastReadTime;

    public final Date getLastReadTime() {
        return this.lastReadTime;
    }
}
