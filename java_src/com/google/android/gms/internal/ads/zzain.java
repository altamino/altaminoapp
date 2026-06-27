package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;

/* loaded from: classes2.dex */
final class zzain implements BaseGmsClient.BaseOnConnectionFailedListener {
    private final /* synthetic */ zzbbr zzbxc;

    zzain(zzaii zzaiiVar, zzbbr zzbbrVar) {
        this.zzbxc = zzbbrVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        this.zzbxc.setException(new RuntimeException("Connection failed."));
    }
}
