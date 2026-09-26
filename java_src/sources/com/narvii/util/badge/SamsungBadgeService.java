package com.narvii.util.badge;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import com.narvii.app.NVContext;
import com.narvii.util.Log;

/* JADX INFO: loaded from: classes7.dex */
public class SamsungBadgeService extends BadgeService {
    @Override // com.narvii.util.badge.BadgeService
    public boolean isBadgeAvailable() {
        return true;
    }

    @Override // com.narvii.util.badge.BadgeService
    protected void setLauncherBadge(int i10) {
        try {
            setBadge(this.context.getContext(), i10);
        } catch (Exception e) {
            Log.w("fail to set samsung launcher badge", e);
        }
    }

    public SamsungBadgeService(NVContext nVContext) {
        super(nVContext);
    }

    public static String getLauncherClassName(Context context) {
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.LAUNCHER");
        for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(intent, 0)) {
            if (resolveInfo.activityInfo.applicationInfo.packageName.equalsIgnoreCase(context.getPackageName())) {
                return resolveInfo.activityInfo.name;
            }
        }
        return null;
    }

    public static void setBadge(Context context, int i10) {
        int i11;
        String launcherClassName = getLauncherClassName(context);
        if (launcherClassName == null) {
            return;
        }
        Intent intent = new Intent("android.intent.action.BADGE_COUNT_UPDATE");
        if (i10 == 0) {
            i11 = 0;
        } else {
            i11 = 1;
        }
        intent.putExtra("badge_count", i11);
        intent.putExtra("badge_count_package_name", context.getPackageName());
        intent.putExtra("badge_count_class_name", launcherClassName);
        context.sendBroadcast(intent);
    }
}
