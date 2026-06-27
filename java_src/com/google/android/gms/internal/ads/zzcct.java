package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzcct<T> implements zzaho<Object> {
    private final WeakReference<T> zzfst;
    private final String zzfsu;
    private final zzaho<T> zzfsv;
    private final /* synthetic */ zzccj zzfsw;

    private zzcct(zzccj zzccjVar, WeakReference<T> weakReference, String str, zzaho<T> zzahoVar) {
        this.zzfsw = zzccjVar;
        this.zzfst = weakReference;
        this.zzfsu = str;
        this.zzfsv = zzahoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaho
    public final void zza(Object obj, Map<String, String> map) {
        T t = this.zzfst.get();
        if (t == null) {
            this.zzfsw.zzb(this.zzfsu, this);
        } else {
            this.zzfsv.zza(t, map);
        }
    }

    /* synthetic */ zzcct(zzccj zzccjVar, WeakReference weakReference, String str, zzaho zzahoVar, zzccm zzccmVar) {
        this(zzccjVar, weakReference, str, zzahoVar);
    }
}
