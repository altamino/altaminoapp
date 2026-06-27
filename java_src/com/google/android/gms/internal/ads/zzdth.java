package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzdth<T> implements zzdte<T>, zzdtu<T> {
    private static final Object zzhuh = new Object();
    private volatile Object zzdxz = zzhuh;
    private volatile zzdtu<T> zzhui;

    private zzdth(zzdtu<T> zzdtuVar) {
        this.zzhui = zzdtuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdte, com.google.android.gms.internal.ads.zzdtu
    public final T get() {
        T t = (T) this.zzdxz;
        if (t == zzhuh) {
            synchronized (this) {
                t = (T) this.zzdxz;
                if (t == zzhuh) {
                    t = this.zzhui.get();
                    Object obj = this.zzdxz;
                    if (((obj == zzhuh || (obj instanceof zzdtn)) ? false : true) && obj != t) {
                        String strValueOf = String.valueOf(obj);
                        String strValueOf2 = String.valueOf(t);
                        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 118 + String.valueOf(strValueOf2).length());
                        sb.append("Scoped provider was invoked recursively returning different results: ");
                        sb.append(strValueOf);
                        sb.append(" & ");
                        sb.append(strValueOf2);
                        sb.append(". This is likely due to a circular dependency.");
                        throw new IllegalStateException(sb.toString());
                    }
                    this.zzdxz = t;
                    this.zzhui = null;
                }
            }
        }
        return t;
    }

    public static <P extends zzdtu<T>, T> zzdtu<T> zzao(P p) {
        zzdto.checkNotNull(p);
        return p instanceof zzdth ? p : new zzdth(p);
    }

    public static <P extends zzdtu<T>, T> zzdte<T> zzap(P p) {
        if (p instanceof zzdte) {
            return (zzdte) p;
        }
        return new zzdth((zzdtu) zzdto.checkNotNull(p));
    }
}
