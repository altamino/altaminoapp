package com.huawei.multimedia.audiokit.interfaces;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;

/* JADX INFO: loaded from: classes4.dex */
public class b {
    private static final String ENGINE_PACKAGE_NAME = "com.huawei.multimedia.audioengine";
    private static final int PACKAGE_INFO_FLAG = 0;
    private static final String TAG = "HwAudioKit.FeatureKitManager";
    private static b sInstance;
    private e mCallBack = null;
    private static final Object SET_CALL_BACK_LOCK = new Object();
    private static final Object NEW_FEATUREMANAGER_LOCK = new Object();
    private static final Object BIND_SERVICE_LOCK = new Object();
    private static final Object UNBIND_SERVICE_LOCK = new Object();

    protected <T extends a> T b(int i10, Context context) {
        m5.a.e(TAG, "createFeatureKit, type = {}", Integer.valueOf(i10));
        if (context == null) {
            return null;
        }
        if (i10 != 1) {
            m5.a.d(TAG, "createFeatureKit, type error");
            return null;
        }
        c cVar = new c(context);
        cVar.o(context);
        return cVar;
    }

    protected e c() {
        return this.mCallBack;
    }

    protected void g(e eVar) {
        this.mCallBack = eVar;
    }

    protected static b d() {
        b bVar;
        synchronized (NEW_FEATUREMANAGER_LOCK) {
            try {
                if (sInstance == null) {
                    sInstance = new b();
                }
                bVar = sInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return bVar;
    }

    protected void a(Context context, ServiceConnection serviceConnection, String str) {
        synchronized (BIND_SERVICE_LOCK) {
            try {
                if (context == null) {
                    return;
                }
                Intent intent = new Intent();
                intent.setClassName(ENGINE_PACKAGE_NAME, str);
                try {
                    m5.a.d(TAG, "bindService");
                    context.bindService(intent, serviceConnection, 1);
                } catch (SecurityException e) {
                    m5.a.b(TAG, "bindService, SecurityException, {}", e.getMessage());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    protected boolean e(Context context) {
        if (context == null) {
            return false;
        }
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return true;
        }
        try {
            if (packageManager.getPackageInfo(ENGINE_PACKAGE_NAME, 0) != null) {
                return true;
            }
            m5.a.d(TAG, "packageInfo is null");
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
            m5.a.a(TAG, "isMediaKitSupport ,NameNotFoundException");
            return false;
        }
    }

    protected void f(int i10) {
        m5.a.e(TAG, "onCallBack, result = {}", Integer.valueOf(i10));
        synchronized (SET_CALL_BACK_LOCK) {
            try {
                if (c() != null) {
                    c().onResult(i10);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    protected void h(Context context, ServiceConnection serviceConnection) {
        m5.a.d(TAG, "unbindService");
        synchronized (UNBIND_SERVICE_LOCK) {
            if (context != null) {
                try {
                    context.unbindService(serviceConnection);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private b() {
    }
}
