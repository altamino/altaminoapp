package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes2.dex */
public final class zzclq implements zzcka<zzbvx, zzaov, zzcla> {
    private final zzbws zzfzy;
    private final Context zzlj;

    public zzclq(Context context, zzbws zzbwsVar) {
        this.zzlj = context;
        this.zzfzy = zzbwsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcka
    public final void zza(zzcxu zzcxuVar, zzcxm zzcxmVar, zzcjy<zzaov, zzcla> zzcjyVar) throws RemoteException {
        zzcjyVar.zzdgc.zza(zzcxmVar.zzemu, zzcxmVar.zzgkh.toString(), zzcxuVar.zzgkx.zzfjp.zzghg, ObjectWrapper.wrap(this.zzlj), new zzclt(this, zzcjyVar), (zzamv) zzcjyVar.zzfzn);
    }

    @Override // com.google.android.gms.internal.ads.zzcka
    public final /* synthetic */ zzbvx zzb(zzcxu zzcxuVar, zzcxm zzcxmVar, final zzcjy zzcjyVar) throws RemoteException, zzcmw {
        final zzcjx zzcjxVar = new zzcjx(zzcxmVar);
        zzbvy zzbvyVarZza = this.zzfzy.zza(new zzbpr(zzcxuVar, zzcxmVar, zzcjyVar.zzfis), new zzbvz(new zzbwz(zzcjyVar, zzcjxVar) { // from class: com.google.android.gms.internal.ads.zzclr
            private final zzcjy zzgat;
            private final zzcjx zzgau;

            {
                this.zzgat = zzcjyVar;
                this.zzgau = zzcjxVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbwz
            public final void zza(boolean z, Context context) {
                zzcjy zzcjyVar2 = this.zzgat;
                zzcjx zzcjxVar2 = this.zzgau;
                try {
                    if (((zzaov) zzcjyVar2.zzdgc).zzy(ObjectWrapper.wrap(context))) {
                        zzcjxVar2.zzakq();
                    } else {
                        zzbad.zzep("Cannot show interstitial.");
                    }
                } catch (RemoteException e) {
                    zzbad.zzd("Cannot show interstitial.", e);
                }
            }
        }));
        zzcjxVar.zza(zzbvyVarZza.zzadg());
        ((zzcla) zzcjyVar.zzfzn).zza(zzbvyVarZza.zzadi());
        return zzbvyVarZza.zzaee();
    }
}
