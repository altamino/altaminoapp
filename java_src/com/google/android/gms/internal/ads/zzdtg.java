package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzdtg<T> implements zzdti<T> {
    private zzdtu<T> zzhug;

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final T get() {
        zzdtu<T> zzdtuVar = this.zzhug;
        if (zzdtuVar != null) {
            return zzdtuVar.get();
        }
        throw new IllegalStateException();
    }

    public static <T> void zzav(zzdtu<T> zzdtuVar, zzdtu<T> zzdtuVar2) {
        zzdto.checkNotNull(zzdtuVar2);
        zzdtg zzdtgVar = (zzdtg) zzdtuVar;
        if (zzdtgVar.zzhug != null) {
            throw new IllegalStateException();
        }
        zzdtgVar.zzhug = zzdtuVar2;
    }
}
