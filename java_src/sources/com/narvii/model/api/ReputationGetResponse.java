package com.narvii.model.api;

import com.fasterxml.jackson.annotation.JsonProperty;

/* JADX INFO: loaded from: classes10.dex */
public class ReputationGetResponse extends ApiResponse {
    public float availableReputation;
    public float maxReputation;

    @JsonProperty("reputation")
    public float userReputation;
}
