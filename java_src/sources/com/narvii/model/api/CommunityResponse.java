package com.narvii.model.api;

import com.narvii.model.Community;

/* JADX INFO: loaded from: classes10.dex */
public class CommunityResponse extends ObjectResponse<Community> {
    public Community community;

    @Override // com.narvii.model.api.ObjectResponse
    public Community object() {
        return this.community;
    }
}
