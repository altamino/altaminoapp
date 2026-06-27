package com.narvii.guideline;

import com.narvii.model.api.ObjectResponse;

/* loaded from: classes2.dex */
public class OfficialGuidelineResponse extends ObjectResponse<CommunityGuideline> {
    public CommunityGuideline officialGuideline;

    @Override // com.narvii.model.api.ObjectResponse
    public CommunityGuideline object() {
        return this.officialGuideline;
    }
}
