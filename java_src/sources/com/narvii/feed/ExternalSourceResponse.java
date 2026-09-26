package com.narvii.feed;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.ExternalSource;
import com.narvii.model.api.ApiResponse;

/* JADX INFO: loaded from: classes11.dex */
public class ExternalSourceResponse extends ApiResponse {

    @JsonDeserialize(contentAs = ExternalSource.class)
    ExternalSource externalSource;
}
