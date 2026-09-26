package com.narvii.master;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.api.ApiResponse;

/* JADX INFO: loaded from: classes10.dex */
public class MasterAppearanceResponse extends ApiResponse {

    @JsonDeserialize(contentAs = MasterAppearance.class)
    public MasterAppearance appearanceSettings;
}
