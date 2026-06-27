package com.narvii.model.api;

import com.narvii.model.Community;

/* loaded from: classes.dex */
public class CommunityResponse extends ObjectResponse<Community> {
    public Community community;

    @Override // com.narvii.model.api.ObjectResponse
    public Community object() {
        return this.community;
    }
}
