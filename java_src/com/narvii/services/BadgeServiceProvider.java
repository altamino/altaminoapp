package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.drawer.DrawerHost;
import com.narvii.util.badge.BadgeService;
import com.narvii.util.badge.BaseBadgeServiceProvider;

/* loaded from: classes.dex */
public class BadgeServiceProvider extends BaseBadgeServiceProvider {
    @Override // com.narvii.util.badge.BaseBadgeServiceProvider, com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, BadgeService badgeService) {
        super.pause(nVContext, badgeService);
        ((BadgeService) nVContext.getService("badge")).setBadge(((DrawerHost) nVContext.getService("drawerHost")).getTotalBadgeCount());
    }
}
