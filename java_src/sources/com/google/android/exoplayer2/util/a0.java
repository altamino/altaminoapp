package com.google.android.exoplayer2.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Looper;
import android.telephony.TelephonyCallback;
import android.telephony.TelephonyDisplayInfo;
import android.telephony.TelephonyManager;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.lang.ref.WeakReference;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class a0 {

    @Nullable
    private static a0 staticInstance;
    private final Handler mainHandler = new Handler(Looper.getMainLooper());
    private final CopyOnWriteArrayList<WeakReference<c>> listeners = new CopyOnWriteArrayList<>();
    private final Object networkTypeLock = new Object();

    @GuardedBy
    private int networkType = 0;

    @RequiresApi
    private static final class b {

        private static final class a extends TelephonyCallback implements TelephonyCallback.DisplayInfoListener {
            private final a0 instance;

            public a(a0 a0Var) {
                this.instance = a0Var;
            }

            public void onDisplayInfoChanged(TelephonyDisplayInfo telephonyDisplayInfo) {
                boolean z6;
                int overrideNetworkType = telephonyDisplayInfo.getOverrideNetworkType();
                int i10 = 5;
                if (overrideNetworkType != 3 && overrideNetworkType != 4 && overrideNetworkType != 5) {
                    z6 = false;
                } else {
                    z6 = true;
                }
                a0 a0Var = this.instance;
                if (z6) {
                    i10 = 10;
                }
                a0Var.k(i10);
            }
        }

        public static void a(Context context, a0 a0Var) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) com.google.android.exoplayer2.util.a.e((TelephonyManager) context.getSystemService("phone"));
                a aVar = new a(a0Var);
                telephonyManager.registerTelephonyCallback(context.getMainExecutor(), aVar);
                telephonyManager.unregisterTelephonyCallback(aVar);
            } catch (RuntimeException unused) {
                a0Var.k(5);
            }
        }
    }

    public interface c {
        void a(int i10);
    }

    private final class d extends BroadcastReceiver {
        private d() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int iG = a0.g(context);
            if (o0.SDK_INT < 31 || iG != 5) {
                a0.this.k(iG);
            } else {
                b.a(context, a0.this);
            }
        }
    }

    public static synchronized a0 d(Context context) {
        try {
            if (staticInstance == null) {
                staticInstance = new a0(context);
            }
        } catch (Throwable th) {
            throw th;
        }
        return staticInstance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int g(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        int i10 = 0;
        if (connectivityManager == null) {
            return 0;
        }
        try {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            i10 = 1;
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                int type = activeNetworkInfo.getType();
                if (type != 0) {
                    if (type == 1) {
                        return 2;
                    }
                    if (type != 4 && type != 5) {
                        if (type != 6) {
                            return type != 9 ? 8 : 7;
                        }
                        return 5;
                    }
                }
                return e(activeNetworkInfo);
            }
        } catch (SecurityException unused) {
        }
        return i10;
    }

    private void j() {
        for (WeakReference<c> weakReference : this.listeners) {
            if (weakReference.get() == null) {
                this.listeners.remove(weakReference);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(int i10) {
        synchronized (this.networkTypeLock) {
            try {
                if (this.networkType == i10) {
                    return;
                }
                this.networkType = i10;
                for (WeakReference<c> weakReference : this.listeners) {
                    c cVar = weakReference.get();
                    if (cVar != null) {
                        cVar.a(i10);
                    } else {
                        this.listeners.remove(weakReference);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public int f() {
        int i10;
        synchronized (this.networkTypeLock) {
            i10 = this.networkType;
        }
        return i10;
    }

    private a0(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        o0.E0(context, new d(), intentFilter);
    }

    private static int e(NetworkInfo networkInfo) {
        switch (networkInfo.getSubtype()) {
            case 1:
            case 2:
                return 3;
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 14:
            case 15:
            case 17:
                return 4;
            case 13:
                return 5;
            case 16:
            case 19:
            default:
                return 6;
            case 18:
                return 2;
            case 20:
                if (o0.SDK_INT >= 29) {
                    return 9;
                }
                return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(c cVar) {
        cVar.a(f());
    }

    public void i(final c cVar) {
        j();
        this.listeners.add(new WeakReference<>(cVar));
        this.mainHandler.post(new Runnable() { // from class: com.google.android.exoplayer2.util.z
            @Override // java.lang.Runnable
            public final void run() {
                this.f1347a.h(cVar);
            }
        });
    }
}
