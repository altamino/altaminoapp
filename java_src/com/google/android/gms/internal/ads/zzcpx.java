package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.reward.AdMetadataListener;

/* loaded from: classes2.dex */
public final class zzcpx extends AdMetadataListener {
    private zzzp zzgep;

    public final synchronized void zzb(zzzp zzzpVar) {
        this.zzgep = zzzpVar;
    }

    @Override // com.google.android.gms.ads.reward.AdMetadataListener
    public final synchronized void onAdMetadataChanged() {
        if (this.zzgep != null) {
            try {
                this.zzgep.onAdMetadataChanged();
            } catch (RemoteException e) {
                zzbad.zzd("Remote Exception at onAdMetadataChanged.", e);
            }
        }
    }
}
