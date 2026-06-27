package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbp;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public final class zzew extends zzfk {
    private long zzzo;

    public zzew(zzdy zzdyVar, String str, String str2, zzbp.zza.C0007zza c0007zza, int i, int i2) {
        super(zzdyVar, str, str2, c0007zza, i, 12);
        this.zzzo = -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzfk
    protected final void zzcx() throws IllegalAccessException, InvocationTargetException {
        this.zzzm.zzap(-1L);
        this.zzzm.zzap(((Long) this.zzzw.invoke(null, this.zzvd.getContext())).longValue());
    }
}
