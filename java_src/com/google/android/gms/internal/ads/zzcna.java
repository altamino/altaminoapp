package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzcna implements zzcka<zzcdb, zzams, zzcla> {
    private final Executor zzffv;
    private final zzcdf zzgbq;
    private final Context zzlj;

    public zzcna(Context context, Executor executor, zzcdf zzcdfVar) {
        this.zzlj = context;
        this.zzffv = executor;
        this.zzgbq = zzcdfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcka
    public final void zza(zzcxu zzcxuVar, zzcxm zzcxmVar, zzcjy<zzams, zzcla> zzcjyVar) throws RemoteException {
        try {
            zzcjyVar.zzdgc.zzb(ObjectWrapper.wrap(this.zzlj), zzcxuVar.zzgkx.zzfjp.zzghg, zzcxmVar.zzgkh.toString(), (zzamv) zzcjyVar.zzfzn);
        } catch (Exception e) {
            String strValueOf = String.valueOf(zzcjyVar.zzfis);
            zzbad.zzd(strValueOf.length() != 0 ? "Fail to load ad from adapter ".concat(strValueOf) : new String("Fail to load ad from adapter "), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcka
    public final /* synthetic */ zzcdb zzb(zzcxu zzcxuVar, zzcxm zzcxmVar, final zzcjy zzcjyVar) throws RemoteException, zzcmw {
        zzcdc zzcdcVarZza = this.zzgbq.zza(new zzbpr(zzcxuVar, zzcxmVar, zzcjyVar.zzfis), new zzcdd(new zzbwz(zzcjyVar) { // from class: com.google.android.gms.internal.ads.zzcnb
            private final zzcjy zzgat;

            {
                this.zzgat = zzcjyVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbwz
            public final void zza(boolean z, Context context) {
                zzcjy zzcjyVar2 = this.zzgat;
                try {
                    ((zzams) zzcjyVar2.zzdgc).setImmersiveMode(z);
                    ((zzams) zzcjyVar2.zzdgc).zzs(ObjectWrapper.wrap(context));
                } catch (RemoteException e) {
                    zzbad.zzd("Cannot show rewarded .", e);
                }
            }
        }));
        zzcdcVarZza.zzadd().zza((zzbry) new zzccy((zzams) zzcjyVar.zzdgc), this.zzffv);
        ((zzcla) zzcjyVar.zzfzn).zza(zzcdcVarZza.zzael());
        return zzcdcVarZza.zzaej();
    }
}
