package com.google.firebase.messaging;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.PowerManager;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
class b1 implements Runnable {
    private static final Object TOPIC_SYNC_TASK_LOCK = new Object();

    @GuardedBy
    private static Boolean hasAccessNetworkStatePermission;

    @GuardedBy
    private static Boolean hasWakeLockPermission;
    private final Context context;
    private final g0 metadata;
    private final long nextDelaySeconds;
    private final PowerManager.WakeLock syncWakeLock;
    private final a1 topicsSubscriber;

    @VisibleForTesting
    class a extends BroadcastReceiver {

        @Nullable
        @GuardedBy
        private b1 task;

        @Override // android.content.BroadcastReceiver
        public synchronized void onReceive(Context context, Intent intent) {
            try {
                b1 b1Var = this.task;
                if (b1Var == null) {
                    return;
                }
                if (b1Var.i()) {
                    if (b1.j()) {
                        Log.d(e.TAG, "Connectivity changed. Starting background sync.");
                    }
                    this.task.topicsSubscriber.l(this.task, 0L);
                    context.unregisterReceiver(this);
                    this.task = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }

        public a(b1 b1Var) {
            this.task = b1Var;
        }

        public void a() {
            if (b1.j()) {
                Log.d(e.TAG, "Connectivity change received registered");
            }
            b1.this.context.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean i() {
        NetworkInfo activeNetworkInfo;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) this.context.getSystemService("connectivity");
            activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
        } catch (Throwable th) {
            throw th;
        }
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    private static String e(String str) {
        return "Missing Permission: " + str + ". This permission should normally be included by the manifest merger, but may needed to be manually added to your manifest";
    }

    private static boolean f(Context context) {
        boolean zBooleanValue;
        synchronized (TOPIC_SYNC_TASK_LOCK) {
            try {
                Boolean bool = hasAccessNetworkStatePermission;
                Boolean boolValueOf = Boolean.valueOf(bool == null ? g(context, "android.permission.ACCESS_NETWORK_STATE", bool) : bool.booleanValue());
                hasAccessNetworkStatePermission = boolValueOf;
                zBooleanValue = boolValueOf.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
        return zBooleanValue;
    }

    private static boolean g(Context context, String str, Boolean bool) {
        if (bool != null) {
            return bool.booleanValue();
        }
        boolean z6 = context.checkCallingOrSelfPermission(str) == 0;
        if (!z6 && Log.isLoggable(e.TAG, 3)) {
            Log.d(e.TAG, e(str));
        }
        return z6;
    }

    private static boolean h(Context context) {
        boolean zBooleanValue;
        synchronized (TOPIC_SYNC_TASK_LOCK) {
            try {
                Boolean bool = hasWakeLockPermission;
                Boolean boolValueOf = Boolean.valueOf(bool == null ? g(context, "android.permission.WAKE_LOCK", bool) : bool.booleanValue());
                hasWakeLockPermission = boolValueOf;
                zBooleanValue = boolValueOf.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
        return zBooleanValue;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean j() {
        return Log.isLoggable(e.TAG, 3) || (Build.VERSION.SDK_INT == 23 && Log.isLoggable(e.TAG, 3));
    }

    @Override // java.lang.Runnable
    @SuppressLint({"Wakelock"})
    public void run() {
        PowerManager.WakeLock wakeLock;
        if (h(this.context)) {
            this.syncWakeLock.acquire(e.WAKE_LOCK_ACQUIRE_TIMEOUT_MILLIS);
        }
        try {
            try {
                try {
                    this.topicsSubscriber.m(true);
                    if (!this.metadata.g()) {
                        this.topicsSubscriber.m(false);
                        if (h(this.context)) {
                            try {
                                this.syncWakeLock.release();
                                return;
                            } catch (RuntimeException unused) {
                                Log.i(e.TAG, "TopicsSyncTask's wakelock was already released due to timeout.");
                                return;
                            }
                        }
                        return;
                    }
                    if (f(this.context) && !i()) {
                        new a(this).a();
                        if (h(this.context)) {
                            try {
                                this.syncWakeLock.release();
                                return;
                            } catch (RuntimeException unused2) {
                                Log.i(e.TAG, "TopicsSyncTask's wakelock was already released due to timeout.");
                                return;
                            }
                        }
                        return;
                    }
                    if (this.topicsSubscriber.p()) {
                        this.topicsSubscriber.m(false);
                    } else {
                        this.topicsSubscriber.q(this.nextDelaySeconds);
                    }
                    if (h(this.context)) {
                        wakeLock = this.syncWakeLock;
                        wakeLock.release();
                    }
                } catch (Throwable th) {
                    if (h(this.context)) {
                        try {
                            this.syncWakeLock.release();
                        } catch (RuntimeException unused3) {
                            Log.i(e.TAG, "TopicsSyncTask's wakelock was already released due to timeout.");
                        }
                    }
                    throw th;
                }
            } catch (IOException e) {
                Log.e(e.TAG, "Failed to sync topics. Won't retry sync. " + e.getMessage());
                this.topicsSubscriber.m(false);
                if (!h(this.context)) {
                } else {
                    wakeLock = this.syncWakeLock;
                }
            }
        } catch (RuntimeException unused4) {
            Log.i(e.TAG, "TopicsSyncTask's wakelock was already released due to timeout.");
        }
    }

    b1(a1 a1Var, Context context, g0 g0Var, long j6) {
        this.topicsSubscriber = a1Var;
        this.context = context;
        this.nextDelaySeconds = j6;
        this.metadata = g0Var;
        this.syncWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(1, e.FCM_WAKE_LOCK);
    }
}
