package com.narvii.util.badge;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import com.narvii.app.NVContext;
import com.narvii.util.Log;

/* loaded from: classes3.dex */
public class SamsungBadgeService extends BadgeService {
    @Override // com.narvii.util.badge.BadgeService
    public boolean isBadgeAvailable() {
        return true;
    }

    public SamsungBadgeService(NVContext nVContext) {
        super(nVContext);
    }

    @Override // com.narvii.util.badge.BadgeService
    protected void setLauncherBadge(int i) {
        try {
            setBadge(this.context.getContext(), i);
        } catch (Exception e) {
            Log.w("fail to set samsung launcher badge", e);
        }
    }

    public static void setBadge(Context context, int i) {
        String launcherClassName = getLauncherClassName(context);
        if (launcherClassName == null) {
            return;
        }
        Intent intent = new Intent("android.intent.action.BADGE_COUNT_UPDATE");
        intent.putExtra("badge_count", i == 0 ? 0 : 1);
        intent.putExtra("badge_count_package_name", context.getPackageName());
        intent.putExtra("badge_count_class_name", launcherClassName);
        context.sendBroadcast(intent);
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
}
