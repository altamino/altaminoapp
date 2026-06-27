package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.reward.AdMetadataListener;

/* loaded from: classes2.dex */
public final class zzcpz extends AdMetadataListener {
    private zzaao zzger;

    public final synchronized void zzb(zzaao zzaaoVar) {
        this.zzger = zzaaoVar;
    }

    @Override // com.google.android.gms.ads.reward.AdMetadataListener
    public final synchronized void onAdMetadataChanged() {
        if (this.zzger != null) {
            try {
                this.zzger.onAdMetadataChanged();
            } catch (RemoteException e) {
                zzbad.zze("#007 Could not call remote method.", e);
            }
        }
    }
}
