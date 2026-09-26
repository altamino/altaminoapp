package com.google.firebase.messaging;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.WorkerThread;

/* JADX INFO: loaded from: classes7.dex */
final class n0 {
    private static final String FCM_PREFERENCES = "com.google.firebase.messaging";

    private static SharedPreferences a(Context context) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        return context.getSharedPreferences(FCM_PREFERENCES, 0);
    }

    @WorkerThread
    static boolean b(Context context) {
        return a(context).getBoolean("proxy_notification_initialized", false);
    }

    @WorkerThread
    static void c(Context context, boolean z6) {
        SharedPreferences.Editor editorEdit = a(context).edit();
        editorEdit.putBoolean("proxy_notification_initialized", z6);
        editorEdit.apply();
    }
}
