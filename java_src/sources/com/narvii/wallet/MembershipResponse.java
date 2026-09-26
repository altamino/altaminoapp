package com.narvii.wallet;

import com.narvii.model.api.ObjectResponse;

/* JADX INFO: loaded from: classes9.dex */
public class MembershipResponse extends ObjectResponse<MembershipStatus> {
    public boolean hasAnyAndroidSubscription;
    public boolean hasAnyAppleSubscription;
    public MembershipStatus membership;
    public Boolean premiumFeatureEnabled;

    @Override // com.narvii.model.api.ObjectResponse
    public MembershipStatus object() {
        return this.membership;
    }
}
