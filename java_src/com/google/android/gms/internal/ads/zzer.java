package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbp;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public final class zzer extends zzfk {
    private long startTime;

    public zzer(zzdy zzdyVar, String str, String str2, zzbp.zza.C0007zza c0007zza, long j, int i, int i2) {
        super(zzdyVar, str, str2, c0007zza, i, 25);
        this.startTime = j;
    }

    @Override // com.google.android.gms.internal.ads.zzfk
    protected final void zzcx() throws IllegalAccessException, InvocationTargetException {
        long jLongValue = ((Long) this.zzzw.invoke(null, new Object[0])).longValue();
        synchronized (this.zzzm) {
            this.zzzm.zzbr(jLongValue);
            if (this.startTime != 0) {
                this.zzzm.zzat(jLongValue - this.startTime);
                this.zzzm.zzaw(this.startTime);
            }
        }
    }
}
