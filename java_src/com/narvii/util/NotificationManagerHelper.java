package com.narvii.util;

import android.app.AppOpsManager;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public class NotificationManagerHelper {
    private static final String CHECK_OP_NO_THROW = "checkOpNoThrow";
    private static final String OP_POST_NOTIFICATION = "OP_POST_NOTIFICATION";
    Context context;

    public NotificationManagerHelper(Context context) {
        this.context = context;
    }

    public boolean areNotificationsEnabled() throws ClassNotFoundException {
        int i = Build.VERSION.SDK_INT;
        if (i >= 24) {
            return ((NotificationManager) this.context.getSystemService("notification")).areNotificationsEnabled();
        }
        if (i < 19) {
            return true;
        }
        AppOpsManager appOpsManager = (AppOpsManager) this.context.getSystemService("appops");
        ApplicationInfo applicationInfo = this.context.getApplicationInfo();
        String packageName = this.context.getApplicationContext().getPackageName();
        int i2 = applicationInfo.uid;
        try {
            Class<?> cls = Class.forName(AppOpsManager.class.getName());
            return ((Integer) cls.getMethod(CHECK_OP_NO_THROW, Integer.TYPE, Integer.TYPE, String.class).invoke(appOpsManager, Integer.valueOf(((Integer) cls.getDeclaredField(OP_POST_NOTIFICATION).get(Integer.class)).intValue()), Integer.valueOf(i2), packageName)).intValue() == 0;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException | NoSuchMethodException | RuntimeException | InvocationTargetException unused) {
            return true;
        }
    }

    public boolean areNotificationChannelEnabled(String str) {
        if (Build.VERSION.SDK_INT >= 26) {
            return areNotificationsEnabled() && ((NotificationManager) this.context.getSystemService("notification")).getNotificationChannel(str).getImportance() != 0;
        }
        return areNotificationsEnabled();
    }

    public Intent getNotificationSettingIntent() {
        Intent intent = new Intent();
        intent.setClassName("com.android.settings", "com.android.settings.Settings$AppNotificationSettingsActivity");
        intent.putExtra("app_package", this.context.getPackageName());
        intent.putExtra("app_uid", this.context.getApplicationInfo().uid);
        if (Build.VERSION.SDK_INT >= 26) {
            intent.putExtra("android.provider.extra.APP_PACKAGE", this.context.getPackageName());
        }
        return intent;
    }

    public boolean isNotificationSettingAvailable() {
        return this.context.getPackageManager().resolveActivity(getNotificationSettingIntent(), 0) != null;
    }
}
