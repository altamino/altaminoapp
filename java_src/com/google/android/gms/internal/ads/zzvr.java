package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;

/* loaded from: classes2.dex */
final class zzvr implements BaseGmsClient.BaseOnConnectionFailedListener {
    private final /* synthetic */ zzvn zzbwq;

    zzvr(zzvn zzvnVar) {
        this.zzbwq = zzvnVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        synchronized (this.zzbwq.lock) {
            this.zzbwq.zzbwp = null;
            if (this.zzbwq.zzbwo != null) {
                zzvn.zza(this.zzbwq, (zzvu) null);
            }
            this.zzbwq.lock.notifyAll();
        }
    }
}
