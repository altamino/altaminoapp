package com.narvii.util.badge;

import android.content.Context;
import android.content.Intent;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.services.AutostartServiceProvider;
import com.narvii.util.Utils;

/* loaded from: classes.dex */
public class BaseBadgeServiceProvider implements AutostartServiceProvider<BadgeService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, BadgeService badgeService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, BadgeService badgeService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, BadgeService badgeService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public BadgeService create(NVContext nVContext) {
        String defaultLauncher = getDefaultLauncher(nVContext.getContext());
        if ("com.sec.android.app.launcher".equals(defaultLauncher) || "com.sec.android.app.twlauncher".equals(defaultLauncher)) {
            return new SamsungBadgeService(nVContext);
        }
        return new StubBadgeService(nVContext);
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(final NVContext nVContext, final BadgeService badgeService) {
        Utils.postDelayed(new Runnable() { // from class: com.narvii.util.badge.BaseBadgeServiceProvider.1
            @Override // java.lang.Runnable
            public void run() {
                if (((AccountService) nVContext.getService("account")).hasAccount()) {
                    return;
                }
                badgeService.setBadge(0);
            }
        }, 1000L);
        if (badgeService instanceof SamsungBadgeService) {
            badgeService.flushBadge();
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, final BadgeService badgeService) {
        if (badgeService instanceof SamsungBadgeService) {
            Utils.postDelayed(new Runnable() { // from class: com.narvii.util.badge.BaseBadgeServiceProvider.2
                @Override // java.lang.Runnable
                public void run() {
                    badgeService.flushBadge();
                }
            }, 1000L);
        }
    }

    private String getDefaultLauncher(Context context) {
        try {
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.addCategory("android.intent.category.HOME");
            return context.getPackageManager().resolveActivity(intent, 65536).activityInfo.packageName;
        } catch (Exception unused) {
            return "";
        }
    }
}
