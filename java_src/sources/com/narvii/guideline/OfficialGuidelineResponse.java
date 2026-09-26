package com.narvii.guideline;

import com.narvii.model.api.ObjectResponse;

/* JADX INFO: loaded from: classes10.dex */
public class OfficialGuidelineResponse extends ObjectResponse<CommunityGuideline> {
    public CommunityGuideline officialGuideline;

    @Override // com.narvii.model.api.ObjectResponse
    public CommunityGuideline object() {
        return this.officialGuideline;
    }
}
