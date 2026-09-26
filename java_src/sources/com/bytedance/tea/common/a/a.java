package com.bytedance.tea.common.a;

import android.annotation.TargetApi;
import android.app.ActivityManager;

/* JADX INFO: loaded from: classes11.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static boolean f897a;

    /* JADX INFO: renamed from: com.bytedance.tea.common.a.a$a, reason: collision with other inner class name */
    @TargetApi(11)
    static class C0140a {
        public static int a(ActivityManager activityManager) {
            return activityManager.getLargeMemoryClass();
        }
    }

    public static int a(ActivityManager activityManager) {
        try {
            return C0140a.a(activityManager);
        } catch (Throwable unused) {
            return -1;
        }
    }
}
