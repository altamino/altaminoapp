package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.internal.BaseGmsClient;

/* loaded from: classes2.dex */
final class zzaim implements BaseGmsClient.BaseConnectionCallbacks {
    private final /* synthetic */ zzbbr zzbxc;
    private final /* synthetic */ zzaii zzdaz;

    zzaim(zzaii zzaiiVar, zzbbr zzbbrVar) {
        this.zzdaz = zzaiiVar;
        this.zzbxc = zzbbrVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        try {
            this.zzbxc.set(this.zzdaz.zzdax.zzrs());
        } catch (DeadObjectException e) {
            this.zzbxc.setException(e);
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        zzbbr zzbbrVar = this.zzbxc;
        StringBuilder sb = new StringBuilder(34);
        sb.append("onConnectionSuspended: ");
        sb.append(i);
        zzbbrVar.setException(new RuntimeException(sb.toString()));
    }
}
