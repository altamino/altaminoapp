package com.google.firebase.messaging;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.stats.WakeLock;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes7.dex */
final class d1 {
    private static final String EXTRA_WAKEFUL_INTENT = "com.google.firebase.iid.WakeLockHolder.wakefulintent";
    static final long WAKE_LOCK_ACQUIRE_TIMEOUT_MILLIS = TimeUnit.MINUTES.toMillis(1);
    private static final Object syncObject = new Object();

    @GuardedBy
    private static WakeLock wakeLock;

    @GuardedBy
    private static void b(Context context) {
        if (wakeLock == null) {
            WakeLock wakeLock2 = new WakeLock(context, 1, "wake:com.google.firebase.iid.WakeLockHolder");
            wakeLock = wakeLock2;
            wakeLock2.setReferenceCounted(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(@NonNull Intent intent) {
        synchronized (syncObject) {
            try {
                if (wakeLock != null && d(intent)) {
                    g(intent, false);
                    wakeLock.release();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @VisibleForTesting
    static boolean d(@NonNull Intent intent) {
        return intent.getBooleanExtra(EXTRA_WAKEFUL_INTENT, false);
    }

    @SuppressLint({"TaskMainThread"})
    static void f(Context context, i1 i1Var, final Intent intent) {
        synchronized (syncObject) {
            try {
                b(context);
                boolean zD = d(intent);
                g(intent, true);
                if (!zD) {
                    wakeLock.acquire(WAKE_LOCK_ACQUIRE_TIMEOUT_MILLIS);
                }
                i1Var.o(intent).addOnCompleteListener(new OnCompleteListener() { // from class: com.google.firebase.messaging.c1
                    @Override // com.google.android.gms.tasks.OnCompleteListener
                    public final void onComplete(Task task) {
                        d1.c(intent);
                    }
                });
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static void g(@NonNull Intent intent, boolean z6) {
        intent.putExtra(EXTRA_WAKEFUL_INTENT, z6);
    }

    static ComponentName h(@NonNull Context context, @NonNull Intent intent) {
        synchronized (syncObject) {
            try {
                b(context);
                boolean zD = d(intent);
                g(intent, true);
                ComponentName componentNameStartService = context.startService(intent);
                if (componentNameStartService == null) {
                    return null;
                }
                if (!zD) {
                    wakeLock.acquire(WAKE_LOCK_ACQUIRE_TIMEOUT_MILLIS);
                }
                return componentNameStartService;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
