package com.narvii.flag.model;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.CommunityGeneralCheckResult;
import com.narvii.model.api.ApiResponse;

/* JADX INFO: loaded from: classes3.dex */
public class GeneraCheckResponse extends ApiResponse {

    @JsonDeserialize(contentAs = CommunityGeneralCheckResult.class)
    public CommunityGeneralCheckResult communityGeneralCheckResult;
}
