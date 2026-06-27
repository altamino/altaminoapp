package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.internal.BaseGmsClient;

/* loaded from: classes2.dex */
final class zzvq implements BaseGmsClient.BaseConnectionCallbacks {
    private final /* synthetic */ zzvn zzbwq;

    zzvq(zzvn zzvnVar) {
        this.zzbwq = zzvnVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        synchronized (this.zzbwq.lock) {
            try {
            } catch (DeadObjectException e) {
                zzbad.zzc("Unable to obtain a cache service instance.", e);
                this.zzbwq.disconnect();
            }
            if (this.zzbwq.zzbwo != null) {
                this.zzbwq.zzbwp = this.zzbwq.zzbwo.zznk();
                this.zzbwq.lock.notifyAll();
            } else {
                this.zzbwq.lock.notifyAll();
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        synchronized (this.zzbwq.lock) {
            this.zzbwq.zzbwp = null;
            this.zzbwq.lock.notifyAll();
        }
    }
}
