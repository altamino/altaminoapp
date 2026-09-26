package com.narvii.guideline;

import com.narvii.model.api.ObjectResponse;

/* JADX INFO: loaded from: classes4.dex */
public class CommunityGuideLineResponse extends ObjectResponse<CommunityGuideline> {
    public CommunityGuideline communityGuideline;

    @Override // com.narvii.model.api.ObjectResponse
    public CommunityGuideline object() {
        return this.communityGuideline;
    }
}
