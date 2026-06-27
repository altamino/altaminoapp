package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import java.io.InputStream;

/* loaded from: classes2.dex */
public abstract class zzchx implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {
    protected zzarx zzfxh;
    protected zzarf zzfxi;
    protected final zzbbr<InputStream> zzddv = new zzbbr<>();
    protected final Object mLock = new Object();
    protected boolean zzfxf = false;
    protected boolean zzfxg = false;

    protected final void zzakh() {
        synchronized (this.mLock) {
            this.zzfxg = true;
            if (this.zzfxi.isConnected() || this.zzfxi.isConnecting()) {
                this.zzfxi.disconnect();
            }
            Binder.flushPendingCommands();
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public void onConnectionSuspended(int i) {
        zzbad.zzdp("Cannot connect to remote service, fallback to local instance.");
    }

    public void onConnectionFailed(ConnectionResult connectionResult) {
        zzbad.zzdp("Disconnected from remote ad request service.");
        this.zzddv.setException(new zzcie(0));
    }
}
