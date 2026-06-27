package com.narvii.feed;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.ExternalSource;
import com.narvii.model.api.ApiResponse;

/* loaded from: classes2.dex */
public class ExternalSourceResponse extends ApiResponse {

    @JsonDeserialize(contentAs = ExternalSource.class)
    ExternalSource externalSource;
}
