package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes2.dex */
public final class zzckj implements zzcka<zzbnf, zzams, zzcla> {
    private final zzbai zzbrc;
    private final zzboc zzfzo;
    private final Context zzlj;

    public zzckj(Context context, zzbai zzbaiVar, zzboc zzbocVar) {
        this.zzlj = context;
        this.zzbrc = zzbaiVar;
        this.zzfzo = zzbocVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcka
    public final void zza(zzcxu zzcxuVar, zzcxm zzcxmVar, zzcjy<zzams, zzcla> zzcjyVar) throws RemoteException {
        zzyd zzydVarZza = zzcxy.zza(this.zzlj, zzcxmVar.zzgkg);
        if (this.zzbrc.zzdzd < 4100000) {
            zzcjyVar.zzdgc.zza(ObjectWrapper.wrap(this.zzlj), zzydVarZza, zzcxuVar.zzgkx.zzfjp.zzghg, zzcxmVar.zzgkh.toString(), (zzamv) zzcjyVar.zzfzn);
        } else {
            zzcjyVar.zzdgc.zza(ObjectWrapper.wrap(this.zzlj), zzydVarZza, zzcxuVar.zzgkx.zzfjp.zzghg, zzcxmVar.zzgkh.toString(), zzazc.zza(zzcxmVar.zzgke), (zzamv) zzcjyVar.zzfzn);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcka
    public final /* synthetic */ zzbnf zzb(zzcxu zzcxuVar, zzcxm zzcxmVar, zzcjy zzcjyVar) throws RemoteException, zzcmw {
        zzboc zzbocVar = this.zzfzo;
        zzbpr zzbprVar = new zzbpr(zzcxuVar, zzcxmVar, zzcjyVar.zzfis);
        View view = (View) ObjectWrapper.unwrap(((zzams) zzcjyVar.zzdgc).zzse());
        zzams zzamsVar = (zzams) zzcjyVar.zzdgc;
        zzamsVar.getClass();
        zzbng zzbngVarZza = zzbocVar.zza(zzbprVar, new zzbnk(view, null, zzckk.zza(zzamsVar), zzcxmVar.zzgkg.get(0)));
        zzbngVarZza.zzadz().zzq((View) ObjectWrapper.unwrap(((zzams) zzcjyVar.zzdgc).zzse()));
        ((zzcla) zzcjyVar.zzfzn).zza(zzbngVarZza.zzadi());
        return zzbngVarZza.zzadx();
    }
}
