package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
final /* synthetic */ class zzcjd implements Callable {
    private final zzcja zzfye;

    private zzcjd(zzcja zzcjaVar) {
        this.zzfye = zzcjaVar;
    }

    static Callable zza(zzcja zzcjaVar) {
        return new zzcjd(zzcjaVar);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzfye.getWritableDatabase();
    }
}
