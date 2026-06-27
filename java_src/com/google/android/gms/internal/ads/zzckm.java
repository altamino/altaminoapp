package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes2.dex */
public final class zzckm implements zzcka<zzbnf, zzaov, zzcla> {
    private View view;
    private final zzboc zzfzo;
    private final Context zzlj;

    public zzckm(Context context, zzboc zzbocVar) {
        this.zzlj = context;
        this.zzfzo = zzbocVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcka
    public final void zza(zzcxu zzcxuVar, zzcxm zzcxmVar, zzcjy<zzaov, zzcla> zzcjyVar) throws RemoteException {
        zzcjyVar.zzdgc.zza(zzcxmVar.zzemu, zzcxmVar.zzgkh.toString(), zzcxuVar.zzgkx.zzfjp.zzghg, ObjectWrapper.wrap(this.zzlj), new zzckp(this, zzcjyVar), (zzamv) zzcjyVar.zzfzn, zzcxuVar.zzgkx.zzfjp.zzdll);
    }

    @Override // com.google.android.gms.internal.ads.zzcka
    public final /* synthetic */ zzbnf zzb(zzcxu zzcxuVar, zzcxm zzcxmVar, zzcjy zzcjyVar) throws RemoteException, zzcmw {
        zzboc zzbocVar = this.zzfzo;
        zzbpr zzbprVar = new zzbpr(zzcxuVar, zzcxmVar, zzcjyVar.zzfis);
        View view = this.view;
        zzaov zzaovVar = (zzaov) zzcjyVar.zzdgc;
        zzaovVar.getClass();
        zzbng zzbngVarZza = zzbocVar.zza(zzbprVar, new zzbnk(view, null, zzckn.zza(zzaovVar), zzcxmVar.zzgkg.get(0)));
        zzbngVarZza.zzadz().zzq(this.view);
        ((zzcla) zzcjyVar.zzfzn).zza(zzbngVarZza.zzadi());
        return zzbngVarZza.zzadx();
    }
}
