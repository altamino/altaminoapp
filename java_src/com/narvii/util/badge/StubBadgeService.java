package com.narvii.util.badge;

import com.narvii.app.NVContext;

/* loaded from: classes3.dex */
public class StubBadgeService extends BadgeService {
    @Override // com.narvii.util.badge.BadgeService
    public boolean isBadgeAvailable() {
        return false;
    }

    @Override // com.narvii.util.badge.BadgeService
    protected void setLauncherBadge(int i) {
    }

    public StubBadgeService(NVContext nVContext) {
        super(nVContext);
    }
}
