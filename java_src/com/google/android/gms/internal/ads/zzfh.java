package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.internal.ads.zzbp;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public final class zzfh extends zzfk {
    private final View zzze;

    public zzfh(zzdy zzdyVar, String str, String str2, zzbp.zza.C0007zza c0007zza, int i, int i2, View view) {
        super(zzdyVar, str, str2, c0007zza, i, 57);
        this.zzze = view;
    }

    @Override // com.google.android.gms.internal.ads.zzfk
    protected final void zzcx() throws IllegalAccessException, InvocationTargetException {
        if (this.zzze != null) {
            Boolean bool = (Boolean) zzyt.zzpe().zzd(zzacu.zzcrr);
            zzeg zzegVar = new zzeg((String) this.zzzw.invoke(null, this.zzze, this.zzvd.getContext().getResources().getDisplayMetrics(), bool));
            zzbp.zza.zzf.C0009zza c0009zzaZzat = zzbp.zza.zzf.zzat();
            c0009zzaZzat.zzdc(zzegVar.zzyn.longValue()).zzdd(zzegVar.zzyo.longValue()).zzde(zzegVar.zzyp.longValue());
            if (bool.booleanValue()) {
                c0009zzaZzat.zzdf(zzegVar.zzyq.longValue());
            }
            this.zzzm.zzb((zzbp.zza.zzf) c0009zzaZzat.zzaya());
        }
    }
}
