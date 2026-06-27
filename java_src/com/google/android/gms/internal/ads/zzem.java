package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbp;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class zzem extends zzfk {
    private static zzfl<String> zzzf = new zzfl<>();
    private final Context zzzg;

    public zzem(zzdy zzdyVar, String str, String str2, zzbp.zza.C0007zza c0007zza, int i, int i2, Context context) {
        super(zzdyVar, str, str2, c0007zza, i, 29);
        this.zzzg = context;
    }

    @Override // com.google.android.gms.internal.ads.zzfk
    protected final void zzcx() throws IllegalAccessException, InvocationTargetException {
        this.zzzm.zzaa("E");
        AtomicReference<String> atomicReferenceZzar = zzzf.zzar(this.zzzg.getPackageName());
        if (atomicReferenceZzar.get() == null) {
            synchronized (atomicReferenceZzar) {
                if (atomicReferenceZzar.get() == null) {
                    atomicReferenceZzar.set((String) this.zzzw.invoke(null, this.zzzg));
                }
            }
        }
        String str = atomicReferenceZzar.get();
        synchronized (this.zzzm) {
            this.zzzm.zzaa(zzcg.zza(str.getBytes(), true));
        }
    }
}
