package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbp;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public final class zzep extends zzfk {
    public zzep(zzdy zzdyVar, String str, String str2, zzbp.zza.C0007zza c0007zza, int i, int i2) {
        super(zzdyVar, str, str2, c0007zza, i, 5);
    }

    @Override // com.google.android.gms.internal.ads.zzfk
    protected final void zzcx() throws IllegalAccessException, InvocationTargetException {
        this.zzzm.zzam(-1L);
        this.zzzm.zzan(-1L);
        int[] iArr = (int[]) this.zzzw.invoke(null, this.zzvd.getContext());
        synchronized (this.zzzm) {
            this.zzzm.zzam(iArr[0]);
            this.zzzm.zzan(iArr[1]);
            if (iArr[2] != Integer.MIN_VALUE) {
                this.zzzm.zzbm(iArr[2]);
            }
        }
    }
}
