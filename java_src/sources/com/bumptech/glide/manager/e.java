package com.bumptech.glide.manager;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes10.dex */
final class e implements c {
    private static final String TAG = "ConnectivityMonitor";
    private final BroadcastReceiver connectivityReceiver = new a();
    private final Context context;
    boolean isConnected;
    private boolean isRegistered;
    final c.a listener;

    class a extends BroadcastReceiver {
        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(@NonNull Context context, Intent intent) {
            e eVar = e.this;
            boolean z6 = eVar.isConnected;
            eVar.isConnected = eVar.i(context);
            if (z6 != e.this.isConnected) {
                if (Log.isLoggable(e.TAG, 3)) {
                    Log.d(e.TAG, "connectivity changed, isConnected: " + e.this.isConnected);
                }
                e eVar2 = e.this;
                eVar2.listener.a(eVar2.isConnected);
            }
        }
    }

    @Override // com.bumptech.glide.manager.i
    public void onDestroy() {
    }

    private void j() {
        if (this.isRegistered) {
            return;
        }
        this.isConnected = i(this.context);
        try {
            this.context.registerReceiver(this.connectivityReceiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            this.isRegistered = true;
        } catch (SecurityException e) {
            if (Log.isLoggable(TAG, 5)) {
                Log.w(TAG, "Failed to register", e);
            }
        }
    }

    private void k() {
        if (this.isRegistered) {
            this.context.unregisterReceiver(this.connectivityReceiver);
            this.isRegistered = false;
        }
    }

    @SuppressLint({"MissingPermission"})
    boolean i(@NonNull Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) com.bumptech.glide.util.j.d((ConnectivityManager) context.getSystemService("connectivity"))).getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isConnected();
        } catch (RuntimeException e) {
            if (Log.isLoggable(TAG, 5)) {
                Log.w(TAG, "Failed to determine connectivity status when connectivity changed", e);
            }
            return true;
        }
    }

    e(@NonNull Context context, @NonNull c.a aVar) {
        this.context = context.getApplicationContext();
        this.listener = aVar;
    }

    @Override // com.bumptech.glide.manager.i
    public void onStart() {
        j();
    }

    @Override // com.bumptech.glide.manager.i
    public void onStop() {
        k();
    }
}
