package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes2.dex */
public final class zzcln implements zzcka<zzbvx, zzams, zzcla> {
    private final zzbai zzbrc;
    private final zzbws zzfzy;
    private final Context zzlj;

    public zzcln(Context context, zzbai zzbaiVar, zzbws zzbwsVar) {
        this.zzlj = context;
        this.zzbrc = zzbaiVar;
        this.zzfzy = zzbwsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcka
    public final void zza(zzcxu zzcxuVar, zzcxm zzcxmVar, zzcjy<zzams, zzcla> zzcjyVar) throws RemoteException {
        if (this.zzbrc.zzdzd < 4100000) {
            zzcjyVar.zzdgc.zza(ObjectWrapper.wrap(this.zzlj), zzcxuVar.zzgkx.zzfjp.zzghg, zzcxmVar.zzgkh.toString(), (zzamv) zzcjyVar.zzfzn);
        } else {
            zzcjyVar.zzdgc.zza(ObjectWrapper.wrap(this.zzlj), zzcxuVar.zzgkx.zzfjp.zzghg, zzcxmVar.zzgkh.toString(), zzazc.zza(zzcxmVar.zzgke), (zzamv) zzcjyVar.zzfzn);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcka
    public final /* synthetic */ zzbvx zzb(zzcxu zzcxuVar, zzcxm zzcxmVar, final zzcjy zzcjyVar) throws RemoteException, zzcmw {
        zzbvy zzbvyVarZza = this.zzfzy.zza(new zzbpr(zzcxuVar, zzcxmVar, zzcjyVar.zzfis), new zzbvz(new zzbwz(zzcjyVar) { // from class: com.google.android.gms.internal.ads.zzclo
            private final zzcjy zzgat;

            {
                this.zzgat = zzcjyVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbwz
            public final void zza(boolean z, Context context) {
                zzcjy zzcjyVar2 = this.zzgat;
                try {
                    ((zzams) zzcjyVar2.zzdgc).setImmersiveMode(z);
                    ((zzams) zzcjyVar2.zzdgc).showInterstitial();
                } catch (RemoteException unused) {
                    zzbad.zzeo("Cannot show interstitial.");
                }
            }
        }));
        ((zzcla) zzcjyVar.zzfzn).zza(zzbvyVarZza.zzadi());
        return zzbvyVarZza.zzaee();
    }
}
