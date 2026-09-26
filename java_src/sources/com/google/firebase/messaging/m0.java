package com.google.firebase.messaging;

import android.annotation.TargetApi;
import android.app.NotificationManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes7.dex */
final class m0 {
    private static final String MANIFEST_METADATA_NOTIFICATION_DELEGATION_ENABLED = "firebase_messaging_notification_delegation_enabled";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(Context context, boolean z6, TaskCompletionSource taskCompletionSource) {
        try {
            if (!b(context)) {
                Log.e(e.TAG, "error configuring notification delegate for package " + context.getPackageName());
                return;
            }
            n0.c(context, true);
            NotificationManager notificationManager = (NotificationManager) context.getSystemService(NotificationManager.class);
            if (z6) {
                notificationManager.setNotificationDelegate("com.google.android.gms");
            } else if ("com.google.android.gms".equals(notificationManager.getNotificationDelegate())) {
                notificationManager.setNotificationDelegate(null);
            }
        } finally {
            taskCompletionSource.trySetResult(null);
        }
    }

    private static boolean f(Context context) {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            Context applicationContext = context.getApplicationContext();
            PackageManager packageManager = applicationContext.getPackageManager();
            if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(applicationContext.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey(MANIFEST_METADATA_NOTIFICATION_DELEGATION_ENABLED)) {
                return true;
            }
            return applicationInfo.metaData.getBoolean(MANIFEST_METADATA_NOTIFICATION_DELEGATION_ENABLED);
        } catch (PackageManager.NameNotFoundException unused) {
            return true;
        }
    }

    private static boolean b(Context context) {
        if (Binder.getCallingUid() == context.getApplicationInfo().uid) {
            return true;
        }
        return false;
    }

    @WorkerThread
    static void c(Context context) {
        if (n0.b(context)) {
            return;
        }
        e(new androidx.media3.exoplayer.dash.offline.a(), context, f(context));
    }

    @TargetApi(29)
    static Task<Void> e(Executor executor, final Context context, final boolean z6) {
        if (!PlatformVersion.isAtLeastQ()) {
            return Tasks.forResult(null);
        }
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        executor.execute(new Runnable() { // from class: com.google.firebase.messaging.l0
            @Override // java.lang.Runnable
            public final void run() {
                m0.d(context, z6, taskCompletionSource);
            }
        });
        return taskCompletionSource.getTask();
    }
}
