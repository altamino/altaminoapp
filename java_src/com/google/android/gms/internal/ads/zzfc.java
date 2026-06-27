package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbp;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public final class zzfc extends zzfk {
    private final StackTraceElement[] zzzs;

    public zzfc(zzdy zzdyVar, String str, String str2, zzbp.zza.C0007zza c0007zza, int i, int i2, StackTraceElement[] stackTraceElementArr) {
        super(zzdyVar, str, str2, c0007zza, i, 45);
        this.zzzs = stackTraceElementArr;
    }

    @Override // com.google.android.gms.internal.ads.zzfk
    protected final void zzcx() throws IllegalAccessException, InvocationTargetException {
        zzbz zzbzVar;
        StackTraceElement[] stackTraceElementArr = this.zzzs;
        if (stackTraceElementArr != null) {
            zzdw zzdwVar = new zzdw((String) this.zzzw.invoke(null, stackTraceElementArr));
            synchronized (this.zzzm) {
                this.zzzm.zzbi(zzdwVar.zzxa.longValue());
                if (zzdwVar.zzxb.booleanValue()) {
                    zzbp.zza.C0007zza c0007zza = this.zzzm;
                    if (zzdwVar.zzxc.booleanValue()) {
                        zzbzVar = zzbz.ENUM_FALSE;
                    } else {
                        zzbzVar = zzbz.ENUM_TRUE;
                    }
                    c0007zza.zzg(zzbzVar);
                } else {
                    this.zzzm.zzg(zzbz.ENUM_FAILURE);
                }
            }
        }
    }
}
