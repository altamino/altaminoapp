package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbp;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public final class zzfe extends zzfk {
    private final zzeh zzwj;
    private long zzzb;

    public zzfe(zzdy zzdyVar, String str, String str2, zzbp.zza.C0007zza c0007zza, int i, int i2, zzeh zzehVar) {
        super(zzdyVar, str, str2, c0007zza, i, 53);
        this.zzwj = zzehVar;
        if (zzehVar != null) {
            this.zzzb = zzehVar.zzcv();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfk
    protected final void zzcx() throws IllegalAccessException, InvocationTargetException {
        if (this.zzwj != null) {
            this.zzzm.zzbl(((Long) this.zzzw.invoke(null, Long.valueOf(this.zzzb))).longValue());
        }
    }
}
