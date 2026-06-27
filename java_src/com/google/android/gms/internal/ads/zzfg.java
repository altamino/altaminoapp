package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbp;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public final class zzfg extends zzfk {
    public zzfg(zzdy zzdyVar, String str, String str2, zzbp.zza.C0007zza c0007zza, int i, int i2) {
        super(zzdyVar, str, str2, c0007zza, i, 48);
    }

    @Override // com.google.android.gms.internal.ads.zzfk
    protected final void zzcx() throws IllegalAccessException, InvocationTargetException {
        this.zzzm.zze(zzbz.ENUM_FAILURE);
        boolean zBooleanValue = ((Boolean) this.zzzw.invoke(null, this.zzvd.getContext())).booleanValue();
        synchronized (this.zzzm) {
            if (zBooleanValue) {
                this.zzzm.zze(zzbz.ENUM_TRUE);
            } else {
                this.zzzm.zze(zzbz.ENUM_FALSE);
            }
        }
    }
}
