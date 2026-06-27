package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzdtt<T> implements zzdtu<T> {
    private static final Object zzhuh = new Object();
    private volatile Object zzdxz = zzhuh;
    private volatile zzdtu<T> zzhui;

    private zzdtt(zzdtu<T> zzdtuVar) {
        this.zzhui = zzdtuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final T get() {
        T t = (T) this.zzdxz;
        if (t != zzhuh) {
            return t;
        }
        zzdtu<T> zzdtuVar = this.zzhui;
        if (zzdtuVar == null) {
            return (T) this.zzdxz;
        }
        T t2 = zzdtuVar.get();
        this.zzdxz = t2;
        this.zzhui = null;
        return t2;
    }

    public static <P extends zzdtu<T>, T> zzdtu<T> zzao(P p) {
        return ((p instanceof zzdtt) || (p instanceof zzdth)) ? p : new zzdtt((zzdtu) zzdto.checkNotNull(p));
    }
}
