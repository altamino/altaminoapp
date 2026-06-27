package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbp;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public final class zzez extends zzfk {
    public zzez(zzdy zzdyVar, String str, String str2, zzbp.zza.C0007zza c0007zza, int i, int i2) {
        super(zzdyVar, str, str2, c0007zza, i, 73);
    }

    @Override // com.google.android.gms.internal.ads.zzfk
    protected final void zzcx() throws IllegalAccessException, InvocationTargetException {
        try {
            this.zzzm.zzh(((Boolean) this.zzzw.invoke(null, this.zzvd.getContext())).booleanValue() ? zzbz.ENUM_TRUE : zzbz.ENUM_FALSE);
        } catch (InvocationTargetException unused) {
            this.zzzm.zzh(zzbz.ENUM_FAILURE);
        }
    }
}
