package com.narvii.master;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.api.ApiResponse;

/* loaded from: classes3.dex */
public class MasterAppearanceResponse extends ApiResponse {

    @JsonDeserialize(contentAs = MasterAppearance.class)
    public MasterAppearance appearanceSettings;
}
