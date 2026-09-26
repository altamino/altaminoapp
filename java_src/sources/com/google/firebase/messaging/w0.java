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
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes8.dex */
class w0 implements Runnable {
    private final FirebaseMessaging firebaseMessaging;
    private final long nextDelaySeconds;

    @SuppressLint({"ThreadPoolCreation"})
    @VisibleForTesting
    ExecutorService processorExecutor = new ThreadPoolExecutor(0, 1, 30, TimeUnit.SECONDS, new LinkedBlockingQueue(), new NamedThreadFactory("firebase-iid-executor"));
    private final PowerManager.WakeLock syncWakeLock;

    @VisibleForTesting
    static class a extends BroadcastReceiver {

        @Nullable
        private w0 task;

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            w0 w0Var = this.task;
            if (w0Var != null && w0Var.d()) {
                if (w0.c()) {
                    Log.d(e.TAG, "Connectivity changed. Starting background sync.");
                }
                this.task.firebaseMessaging.j(this.task, 0L);
                this.task.b().unregisterReceiver(this);
                this.task = null;
            }
        }

        public a(w0 w0Var) {
            this.task = w0Var;
        }

        public void a() {
            if (w0.c()) {
                Log.d(e.TAG, "Connectivity change received registered");
            }
            this.task.b().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        }
    }

    static boolean c() {
        return Log.isLoggable(e.TAG, 3) || (Build.VERSION.SDK_INT == 23 && Log.isLoggable(e.TAG, 3));
    }

    Context b() {
        return this.firebaseMessaging.k();
    }

    @VisibleForTesting
    boolean e() throws IOException {
        try {
            if (this.firebaseMessaging.i() == null) {
                Log.e(e.TAG, "Token retrieval failed: null");
                return false;
            }
            if (!Log.isLoggable(e.TAG, 3)) {
                return true;
            }
            Log.d(e.TAG, "Token successfully retrieved");
            return true;
        } catch (IOException e) {
            if (!b0.g(e.getMessage())) {
                if (e.getMessage() != null) {
                    throw e;
                }
                Log.w(e.TAG, "Token retrieval failed without exception message. Will retry token retrieval");
                return false;
            }
            Log.w(e.TAG, "Token retrieval failed: " + e.getMessage() + ". Will retry token retrieval");
            return false;
        } catch (SecurityException unused) {
            Log.w(e.TAG, "Token retrieval failed with SecurityException. Will retry token retrieval");
            return false;
        }
    }

    @SuppressLint({"InvalidWakeLockTag"})
    @VisibleForTesting
    public w0(FirebaseMessaging firebaseMessaging, long j6) {
        this.firebaseMessaging = firebaseMessaging;
        this.nextDelaySeconds = j6;
        PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) b().getSystemService("power")).newWakeLock(1, "fiid-sync");
        this.syncWakeLock = wakeLockNewWakeLock;
        wakeLockNewWakeLock.setReferenceCounted(false);
    }

    boolean d() {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) b().getSystemService("connectivity");
        if (connectivityManager != null) {
            activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        } else {
            activeNetworkInfo = null;
        }
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            return true;
        }
        return false;
    }

    @Override // java.lang.Runnable
    @SuppressLint({"WakelockTimeout"})
    public void run() {
        if (s0.b().e(b())) {
            this.syncWakeLock.acquire();
        }
        try {
            this.firebaseMessaging.B(true);
            if (!this.firebaseMessaging.t()) {
                this.firebaseMessaging.B(false);
            } else if (s0.b().d(b()) && !d()) {
                new a(this).a();
            } else {
                if (e()) {
                    this.firebaseMessaging.B(false);
                } else {
                    this.firebaseMessaging.E(this.nextDelaySeconds);
                }
            }
        } catch (IOException e) {
            Log.e(e.TAG, "Topic sync or token retrieval failed on hard failure exceptions: " + e.getMessage() + ". Won't retry the operation.");
            this.firebaseMessaging.B(false);
        } finally {
            if (s0.b().e(b())) {
                this.syncWakeLock.release();
            }
        }
    }
}
