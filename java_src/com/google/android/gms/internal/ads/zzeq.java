package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbp;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public final class zzeq extends zzfk {
    private static volatile Long zzzk;
    private static final Object zzzl = new Object();

    public zzeq(zzdy zzdyVar, String str, String str2, zzbp.zza.C0007zza c0007zza, int i, int i2) {
        super(zzdyVar, str, str2, c0007zza, i, 44);
    }

    @Override // com.google.android.gms.internal.ads.zzfk
    protected final void zzcx() throws IllegalAccessException, InvocationTargetException {
        if (zzzk == null) {
            synchronized (zzzl) {
                if (zzzk == null) {
                    zzzk = (Long) this.zzzw.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.zzzm) {
            this.zzzm.zzbh(zzzk.longValue());
        }
    }
}
