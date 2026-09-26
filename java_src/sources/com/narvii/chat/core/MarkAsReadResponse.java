package com.narvii.chat.core;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.JacksonUtils;
import java.util.Date;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class MarkAsReadResponse extends ApiResponse {

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    @Nullable
    private final Date lastReadTime;

    @Nullable
    public final Date getLastReadTime() {
        return this.lastReadTime;
    }
}
