package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes2.dex */
public final class zzcmg implements zzcka<zzbyn, zzaov, zzcla> {
    private final zzbxo zzgav;
    private zzang zzgba;
    private final Context zzlj;

    public zzcmg(Context context, zzbxo zzbxoVar) {
        this.zzlj = context;
        this.zzgav = zzbxoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcka
    public final void zza(zzcxu zzcxuVar, zzcxm zzcxmVar, zzcjy<zzaov, zzcla> zzcjyVar) throws RemoteException {
        zzcjyVar.zzdgc.zza(zzcxmVar.zzemu, zzcxmVar.zzgkh.toString(), zzcxuVar.zzgkx.zzfjp.zzghg, ObjectWrapper.wrap(this.zzlj), new zzcmi(this, zzcjyVar), (zzamv) zzcjyVar.zzfzn);
    }

    @Override // com.google.android.gms.internal.ads.zzcka
    public final /* synthetic */ zzbyn zzb(zzcxu zzcxuVar, zzcxm zzcxmVar, zzcjy zzcjyVar) throws RemoteException, zzcmw {
        if (!zzcxuVar.zzgkx.zzfjp.zzglc.contains(Integer.toString(6))) {
            throw new zzcmw("Unified must be used for RTB.", 1);
        }
        zzbyt zzbytVarZzb = zzbyt.zzb(this.zzgba);
        if (!zzcxuVar.zzgkx.zzfjp.zzglc.contains(Integer.toString(zzbytVarZzb.zzahv()))) {
            throw new zzcmw("No corresponding native ad listener", 0);
        }
        zzbyw zzbywVarZza = this.zzgav.zza(new zzbpr(zzcxuVar, zzcxmVar, zzcjyVar.zzfis), new zzbzf(zzbytVarZzb), new zzcag(null, null, this.zzgba));
        ((zzcla) zzcjyVar.zzfzn).zza(zzbywVarZza.zzadi());
        return zzbywVarZza.zzadj();
    }
}
