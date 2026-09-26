package com.huawei.multimedia.audiokit.interfaces;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes4.dex */
public class c extends com.huawei.multimedia.audiokit.interfaces.a {
    private static final String ENGINE_CLASS_NAME = "com.huawei.multimedia.audioengine.HwAudioKaraokeFeatureService";
    private static final String TAG = "HwAudioKit.HwAudioKaraokeFeatureKit";
    private Context mContext;
    private com.huawei.multimedia.audiokit.interfaces.b mFeatureKitManager;
    private com.huawei.multimedia.audioengine.b mIHwAudioKaraokeFeatureAidl;
    private boolean mIsServiceConnected = false;
    private IBinder mService = null;
    private ServiceConnection mConnection = new a();
    private IBinder.DeathRecipient mDeathRecipient = new b();

    class a implements ServiceConnection {
        a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            m5.a.d(c.TAG, "onServiceConnected");
            c.this.mIHwAudioKaraokeFeatureAidl = com.huawei.multimedia.audioengine.b.a.x1(iBinder);
            if (c.this.mIHwAudioKaraokeFeatureAidl != null) {
                c.this.mIsServiceConnected = true;
                c.this.mFeatureKitManager.f(1000);
                c cVar = c.this;
                cVar.q(cVar.mContext.getPackageName());
                c.this.r(iBinder);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            m5.a.d(c.TAG, "onServiceDisconnected");
            c.this.mIsServiceConnected = false;
            if (c.this.mFeatureKitManager != null) {
                c.this.mFeatureKitManager.f(1001);
            }
        }
    }

    class b implements IBinder.DeathRecipient {
        b() {
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            m5.a.a(c.TAG, "binderDied");
            c.this.mService.unlinkToDeath(c.this.mDeathRecipient, 0);
            c.this.mFeatureKitManager.f(1003);
            c.this.mService = null;
        }
    }

    public void l() {
        m5.a.e(TAG, "destroy, mIsServiceConnected = {}", Boolean.valueOf(this.mIsServiceConnected));
        if (this.mIsServiceConnected) {
            this.mIsServiceConnected = false;
            this.mFeatureKitManager.h(this.mContext, this.mConnection);
        }
    }

    public int m(boolean z6) {
        m5.a.e(TAG, "enableKaraokeFeature, enable = {}", Boolean.valueOf(z6));
        try {
            com.huawei.multimedia.audioengine.b bVar = this.mIHwAudioKaraokeFeatureAidl;
            if (bVar == null || !this.mIsServiceConnected) {
                return -2;
            }
            return bVar.x0(z6);
        } catch (RemoteException e) {
            m5.a.b(TAG, "enableKaraokeFeature,RemoteException ex : {}", e.getMessage());
            return -2;
        }
    }

    /* JADX INFO: renamed from: com.huawei.multimedia.audiokit.interfaces.c$c, reason: collision with other inner class name */
    public enum EnumC0278c {
        CMD_SET_AUDIO_EFFECT_MODE_BASE("Karaoke_reverb_mode="),
        CMD_SET_VOCAL_VOLUME_BASE("Karaoke_volume="),
        CMD_SET_VOCAL_EQUALIZER_MODE("Karaoke_eq_mode=");

        private String mParameName;

        public String a() {
            return this.mParameName;
        }

        EnumC0278c(String str) {
            this.mParameName = str;
        }
    }

    private void k(Context context) {
        m5.a.d(TAG, "bindService");
        com.huawei.multimedia.audiokit.interfaces.b bVar = this.mFeatureKitManager;
        if (bVar == null || this.mIsServiceConnected) {
            return;
        }
        bVar.a(context, this.mConnection, ENGINE_CLASS_NAME);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(String str) {
        try {
            com.huawei.multimedia.audioengine.b bVar = this.mIHwAudioKaraokeFeatureAidl;
            if (bVar == null || !this.mIsServiceConnected) {
                return;
            }
            bVar.S(str);
        } catch (RemoteException e) {
            m5.a.b(TAG, "isFeatureSupported,RemoteException ex : {}", e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r(IBinder iBinder) {
        this.mService = iBinder;
        if (iBinder != null) {
            try {
                iBinder.linkToDeath(this.mDeathRecipient, 0);
            } catch (RemoteException unused) {
                this.mFeatureKitManager.f(1002);
                m5.a.a(TAG, "serviceLinkToDeath, RemoteException");
            }
        }
    }

    public int n() {
        m5.a.d(TAG, "getKaraokeLatency");
        try {
            com.huawei.multimedia.audioengine.b bVar = this.mIHwAudioKaraokeFeatureAidl;
            if (bVar == null || !this.mIsServiceConnected) {
                return -1;
            }
            return bVar.X0();
        } catch (RemoteException e) {
            m5.a.b(TAG, "getKaraokeLatency,RemoteException ex : {}", e.getMessage());
            return -1;
        }
    }

    protected void o(Context context) {
        m5.a.d(TAG, "initialize");
        if (context == null) {
            m5.a.d(TAG, "initialize, context is null");
        } else if (this.mFeatureKitManager.e(context)) {
            k(context);
        } else {
            this.mFeatureKitManager.f(2);
            m5.a.d(TAG, "initialize, not install AudioEngine");
        }
    }

    public boolean p() {
        m5.a.d(TAG, "isKaraokeFeatureSupport");
        try {
            com.huawei.multimedia.audioengine.b bVar = this.mIHwAudioKaraokeFeatureAidl;
            if (bVar == null || !this.mIsServiceConnected) {
                return false;
            }
            return bVar.Y0();
        } catch (RemoteException e) {
            m5.a.b(TAG, "isFeatureSupported,RemoteException ex : {}", e.getMessage());
            return false;
        }
    }

    public int s(EnumC0278c enumC0278c, int i10) {
        try {
            m5.a.e(TAG, "parame.getParameName() = {}, parameValue = {}", enumC0278c.a(), Integer.valueOf(i10));
            com.huawei.multimedia.audioengine.b bVar = this.mIHwAudioKaraokeFeatureAidl;
            if (bVar == null || !this.mIsServiceConnected) {
                return -2;
            }
            return bVar.G0(enumC0278c.a(), i10);
        } catch (RemoteException e) {
            m5.a.b(TAG, "setParameter,RemoteException ex : {}", e.getMessage());
            return -2;
        }
    }

    protected c(Context context) {
        this.mFeatureKitManager = null;
        this.mFeatureKitManager = com.huawei.multimedia.audiokit.interfaces.b.d();
        this.mContext = context;
    }
}
