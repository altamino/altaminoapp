package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;

/* loaded from: classes2.dex */
final class zzwh implements BaseGmsClient.BaseOnConnectionFailedListener {
    private final /* synthetic */ zzwb zzbxa;
    private final /* synthetic */ zzbbr zzbxc;

    zzwh(zzwb zzwbVar, zzbbr zzbbrVar) {
        this.zzbxa = zzwbVar;
        this.zzbxc = zzbbrVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        synchronized (this.zzbxa.lock) {
            this.zzbxc.setException(new RuntimeException("Connection failed."));
        }
    }
}
