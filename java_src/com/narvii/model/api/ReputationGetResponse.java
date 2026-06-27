package com.narvii.model.api;

import com.fasterxml.jackson.annotation.JsonProperty;

/* loaded from: classes3.dex */
public class ReputationGetResponse extends ApiResponse {
    public float availableReputation;
    public float maxReputation;

    @JsonProperty("reputation")
    public float userReputation;
}
