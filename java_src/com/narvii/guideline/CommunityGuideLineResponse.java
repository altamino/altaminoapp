package com.narvii.guideline;

import com.narvii.model.api.ObjectResponse;

/* loaded from: classes2.dex */
public class CommunityGuideLineResponse extends ObjectResponse<CommunityGuideline> {
    public CommunityGuideline communityGuideline;

    @Override // com.narvii.model.api.ObjectResponse
    public CommunityGuideline object() {
        return this.communityGuideline;
    }
}
