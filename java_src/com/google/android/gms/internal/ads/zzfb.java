package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbp;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public final class zzfb extends zzfk {
    private final boolean zzzr;

    public zzfb(zzdy zzdyVar, String str, String str2, zzbp.zza.C0007zza c0007zza, int i, int i2) {
        super(zzdyVar, str, str2, c0007zza, i, 61);
        this.zzzr = zzdyVar.zzco();
    }

    @Override // com.google.android.gms.internal.ads.zzfk
    protected final void zzcx() throws IllegalAccessException, InvocationTargetException {
        long jLongValue = ((Long) this.zzzw.invoke(null, this.zzvd.getContext(), Boolean.valueOf(this.zzzr))).longValue();
        synchronized (this.zzzm) {
            this.zzzm.zzbo(jLongValue);
        }
    }
}
