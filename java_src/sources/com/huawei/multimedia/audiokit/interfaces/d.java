package com.huawei.multimedia.audiokit.interfaces;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class d {
    private static final List<Integer> DEFAULT_FEATURE_LIST = new ArrayList(0);
    private static final String ENGINE_CLASS_NAME = "com.huawei.multimedia.audioengine.HwAudioEngineService";
    private static final String TAG = "HwAudioKit.HwAudioKit";
    private Context mContext;
    private com.huawei.multimedia.audiokit.interfaces.b mFeatureKitManager;
    private com.huawei.multimedia.audioengine.a mIHwAudioEngine = null;
    private boolean mIsServiceConnected = false;
    private IBinder mService = null;
    private ServiceConnection mConnection = new a();
    private IBinder.DeathRecipient mDeathRecipient = new b();

    class a implements ServiceConnection {
        a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            d.this.mIHwAudioEngine = com.huawei.multimedia.audioengine.a.AbstractBinderC0275a.x1(iBinder);
            m5.a.d(d.TAG, "onServiceConnected");
            if (d.this.mIHwAudioEngine != null) {
                d.this.mIsServiceConnected = true;
                m5.a.d(d.TAG, "onServiceConnected, mIHwAudioEngine is not null");
                d.this.mFeatureKitManager.f(0);
                d dVar = d.this;
                dVar.o(dVar.mContext.getPackageName(), "1.0.1");
                d.this.p(iBinder);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            m5.a.d(d.TAG, "onServiceDisconnected");
            d.this.mIHwAudioEngine = null;
            d.this.mIsServiceConnected = false;
            d.this.mFeatureKitManager.f(4);
        }
    }

    class b implements IBinder.DeathRecipient {
        b() {
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            d.this.mService.unlinkToDeath(d.this.mDeathRecipient, 0);
            d.this.mFeatureKitManager.f(6);
            m5.a.a(d.TAG, "service binder died");
            d.this.mService = null;
        }
    }

    private void k(Context context) {
        m5.a.e(TAG, "bindService, mIsServiceConnected = {}", Boolean.valueOf(this.mIsServiceConnected));
        com.huawei.multimedia.audiokit.interfaces.b bVar = this.mFeatureKitManager;
        if (bVar == null || this.mIsServiceConnected) {
            return;
        }
        bVar.a(context, this.mConnection, ENGINE_CLASS_NAME);
    }

    public void m() {
        m5.a.e(TAG, "destroy, mIsServiceConnected = {}", Boolean.valueOf(this.mIsServiceConnected));
        if (this.mIsServiceConnected) {
            this.mIsServiceConnected = false;
            this.mFeatureKitManager.h(this.mContext, this.mConnection);
        }
    }

    public enum c {
        HWAUDIO_FEATURE_KARAOKE(1);

        private int mFeatureType;

        public int a() {
            return this.mFeatureType;
        }

        c(int i10) {
            this.mFeatureType = i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o(String str, String str2) {
        m5.a.d(TAG, "serviceInit");
        try {
            com.huawei.multimedia.audioengine.a aVar = this.mIHwAudioEngine;
            if (aVar == null || !this.mIsServiceConnected) {
                return;
            }
            aVar.r0(str, str2);
        } catch (RemoteException e) {
            m5.a.b(TAG, "isFeatureSupported,RemoteException ex : {}", e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(IBinder iBinder) {
        this.mService = iBinder;
        if (iBinder != null) {
            try {
                iBinder.linkToDeath(this.mDeathRecipient, 0);
            } catch (RemoteException unused) {
                this.mFeatureKitManager.f(5);
                m5.a.a(TAG, "serviceLinkToDeath, RemoteException");
            }
        }
    }

    public <T extends com.huawei.multimedia.audiokit.interfaces.a> T l(c cVar) {
        return (T) this.mFeatureKitManager.b(cVar.a(), this.mContext);
    }

    public void n() {
        m5.a.d(TAG, "initialize");
        Context context = this.mContext;
        if (context == null) {
            m5.a.d(TAG, "mContext is null");
            this.mFeatureKitManager.f(7);
        } else if (this.mFeatureKitManager.e(context)) {
            k(this.mContext);
        } else {
            m5.a.d(TAG, "not install AudioKitEngine");
            this.mFeatureKitManager.f(2);
        }
    }

    public d(Context context, e eVar) {
        this.mContext = null;
        com.huawei.multimedia.audiokit.interfaces.b bVarD = com.huawei.multimedia.audiokit.interfaces.b.d();
        this.mFeatureKitManager = bVarD;
        bVarD.g(eVar);
        this.mContext = context;
    }
}
