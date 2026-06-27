package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicInteger;

@zzard
@Deprecated
/* loaded from: classes2.dex */
public class zzbbw<T> {
    private final zzbbr<T> zzeao = new zzbbr<>();
    private final AtomicInteger zzeap = new AtomicInteger(0);

    public zzbbw() {
        zzbar.zza(this.zzeao, new zzbbx(this), zzbbm.zzeaf);
    }

    @Deprecated
    public final void zza(zzbbv<T> zzbbvVar, zzbbt zzbbtVar) {
        zzbar.zza(this.zzeao, new zzbby(this, zzbbvVar, zzbbtVar), zzbbm.zzeaf);
    }

    @Deprecated
    public final void zzo(T t) {
        this.zzeao.set(t);
    }

    @Deprecated
    public final void reject() {
        this.zzeao.setException(new Exception());
    }

    @Deprecated
    public final int getStatus() {
        return this.zzeap.get();
    }
}
