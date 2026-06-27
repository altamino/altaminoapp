package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes2.dex */
public final class zzcme implements zzcka<zzbyn, zzams, zzcla> {
    private final zzbxo zzgav;
    private final Context zzlj;

    public zzcme(Context context, zzbxo zzbxoVar) {
        this.zzlj = context;
        this.zzgav = zzbxoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcka
    public final void zza(zzcxu zzcxuVar, zzcxm zzcxmVar, zzcjy<zzams, zzcla> zzcjyVar) throws RemoteException {
        zzams zzamsVar = zzcjyVar.zzdgc;
        IObjectWrapper iObjectWrapperWrap = ObjectWrapper.wrap(this.zzlj);
        zzxz zzxzVar = zzcxuVar.zzgkx.zzfjp.zzghg;
        String string = zzcxmVar.zzgkh.toString();
        String strZza = zzazc.zza(zzcxmVar.zzgke);
        zzamv zzamvVar = (zzamv) zzcjyVar.zzfzn;
        zzcxv zzcxvVar = zzcxuVar.zzgkx.zzfjp;
        zzamsVar.zza(iObjectWrapperWrap, zzxzVar, string, strZza, zzamvVar, zzcxvVar.zzdgs, zzcxvVar.zzglc);
    }

    private static boolean zza(zzcxu zzcxuVar, int i) {
        return zzcxuVar.zzgkx.zzfjp.zzglc.contains(Integer.toString(i));
    }

    @Override // com.google.android.gms.internal.ads.zzcka
    public final /* synthetic */ zzbyn zzb(zzcxu zzcxuVar, zzcxm zzcxmVar, zzcjy zzcjyVar) throws RemoteException, zzcmw {
        zzbyt zzbytVarZza;
        zzana zzanaVarZzsf = ((zzams) zzcjyVar.zzdgc).zzsf();
        zzand zzandVarZzsg = ((zzams) zzcjyVar.zzdgc).zzsg();
        zzang zzangVarZzsl = ((zzams) zzcjyVar.zzdgc).zzsl();
        if (zzangVarZzsl != null && zza(zzcxuVar, 6)) {
            zzbytVarZza = zzbyt.zzb(zzangVarZzsl);
        } else if (zzanaVarZzsf != null && zza(zzcxuVar, 6)) {
            zzbytVarZza = zzbyt.zzb(zzanaVarZzsf);
        } else if (zzanaVarZzsf != null && zza(zzcxuVar, 2)) {
            zzbytVarZza = zzbyt.zza(zzanaVarZzsf);
        } else if (zzandVarZzsg != null && zza(zzcxuVar, 6)) {
            zzbytVarZza = zzbyt.zzb(zzandVarZzsg);
        } else if (zzandVarZzsg != null && zza(zzcxuVar, 1)) {
            zzbytVarZza = zzbyt.zza(zzandVarZzsg);
        } else {
            throw new zzcmw("No native ad mappers", 0);
        }
        if (!zzcxuVar.zzgkx.zzfjp.zzglc.contains(Integer.toString(zzbytVarZza.zzahv()))) {
            throw new zzcmw("No corresponding native ad listener", 0);
        }
        zzbyw zzbywVarZza = this.zzgav.zza(new zzbpr(zzcxuVar, zzcxmVar, zzcjyVar.zzfis), new zzbzf(zzbytVarZza), new zzcag(zzandVarZzsg, zzanaVarZzsf, zzangVarZzsl));
        ((zzcla) zzcjyVar.zzfzn).zza(zzbywVarZza.zzadi());
        return zzbywVarZza.zzadj();
    }
}
