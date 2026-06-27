package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes2.dex */
public final class zzcnd implements zzcka<zzcdb, zzaov, zzcla> {
    private final zzcdf zzgbq;
    private final Context zzlj;

    public zzcnd(Context context, zzcdf zzcdfVar) {
        this.zzlj = context;
        this.zzgbq = zzcdfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcka
    public final void zza(zzcxu zzcxuVar, zzcxm zzcxmVar, zzcjy<zzaov, zzcla> zzcjyVar) throws RemoteException {
        zzcjyVar.zzdgc.zza(zzcxmVar.zzemu, zzcxmVar.zzgkh.toString(), zzcxuVar.zzgkx.zzfjp.zzghg, ObjectWrapper.wrap(this.zzlj), new zzcng(this, zzcjyVar), (zzamv) zzcjyVar.zzfzn);
    }

    @Override // com.google.android.gms.internal.ads.zzcka
    public final /* synthetic */ zzcdb zzb(zzcxu zzcxuVar, zzcxm zzcxmVar, final zzcjy zzcjyVar) throws RemoteException, zzcmw {
        final zzcjx zzcjxVar = new zzcjx(zzcxmVar);
        zzcdc zzcdcVarZza = this.zzgbq.zza(new zzbpr(zzcxuVar, zzcxmVar, zzcjyVar.zzfis), new zzcdd(new zzbwz(zzcjyVar, zzcjxVar) { // from class: com.google.android.gms.internal.ads.zzcne
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
                    if (((zzaov) zzcjyVar2.zzdgc).zzz(ObjectWrapper.wrap(context))) {
                        zzcjxVar2.zzakq();
                    } else {
                        zzbad.zzep("Can't show rewarded video.");
                    }
                } catch (RemoteException e) {
                    zzbad.zzd("Can't show rewarded video.", e);
                }
            }
        }));
        zzcjxVar.zza(zzcdcVarZza.zzadg());
        ((zzcla) zzcjyVar.zzfzn).zza(zzcdcVarZza.zzael());
        return zzcdcVarZza.zzaej();
    }
}
