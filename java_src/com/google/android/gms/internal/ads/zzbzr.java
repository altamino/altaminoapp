package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzbzr implements zzaho<Object> {
    private final /* synthetic */ zzagd zzfqf;
    private final /* synthetic */ zzbzq zzfqg;

    zzbzr(zzbzq zzbzqVar, zzagd zzagdVar) {
        this.zzfqg = zzbzqVar;
        this.zzfqf = zzagdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaho
    public final void zza(Object obj, Map<String, String> map) {
        try {
            this.zzfqg.zzfqd = Long.valueOf(Long.parseLong(map.get("timestamp")));
        } catch (NumberFormatException unused) {
            zzbad.zzen("Failed to call parse unconfirmedClickTimestamp.");
        }
        this.zzfqg.zzfqc = map.get("id");
        String str = map.get("asset_id");
        zzagd zzagdVar = this.zzfqf;
        if (zzagdVar == null) {
            zzbad.zzdp("Received unconfirmed click but UnconfirmedClickListener is null.");
            return;
        }
        try {
            zzagdVar.onUnconfirmedClickReceived(str);
        } catch (RemoteException e) {
            zzbad.zze("#007 Could not call remote method.", e);
        }
    }
}
