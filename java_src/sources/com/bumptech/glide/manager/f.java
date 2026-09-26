package com.bumptech.glide.manager;

import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;

/* JADX INFO: loaded from: classes10.dex */
public class f implements d {
    private static final String NETWORK_PERMISSION = "android.permission.ACCESS_NETWORK_STATE";
    private static final String TAG = "ConnectivityMonitor";

    @Override // com.bumptech.glide.manager.d
    @NonNull
    public c a(@NonNull Context context, @NonNull c.a aVar) {
        boolean z6 = ContextCompat.checkSelfPermission(context, NETWORK_PERMISSION) == 0;
        if (Log.isLoggable(TAG, 3)) {
            Log.d(TAG, z6 ? "ACCESS_NETWORK_STATE permission granted, registering connectivity monitor" : "ACCESS_NETWORK_STATE permission missing, cannot register connectivity monitor");
        }
        return z6 ? new e(context, aVar) : new j();
    }
}
