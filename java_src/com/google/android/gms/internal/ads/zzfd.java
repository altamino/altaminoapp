package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbp;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public final class zzfd extends zzfk {
    public zzfd(zzdy zzdyVar, String str, String str2, zzbp.zza.C0007zza c0007zza, int i, int i2) {
        super(zzdyVar, str, str2, c0007zza, i, 51);
    }

    @Override // com.google.android.gms.internal.ads.zzfk
    protected final void zzcx() throws IllegalAccessException, InvocationTargetException {
        synchronized (this.zzzm) {
            zzdx zzdxVar = new zzdx((String) this.zzzw.invoke(null, new Object[0]));
            this.zzzm.zzbj(zzdxVar.zzxd.longValue());
            this.zzzm.zzbk(zzdxVar.zzxe.longValue());
        }
    }
}
