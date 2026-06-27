package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
final class zzdp implements Runnable {
    private final /* synthetic */ String zzao;
    private final /* synthetic */ String zzav;
    private final /* synthetic */ boolean zzbd;
    private final /* synthetic */ String zzdk;
    private final /* synthetic */ AtomicReference zzpl;
    private final /* synthetic */ zzdd zzpm;

    zzdp(zzdd zzddVar, AtomicReference atomicReference, String str, String str2, String str3, boolean z) {
        this.zzpm = zzddVar;
        this.zzpl = atomicReference;
        this.zzdk = str;
        this.zzao = str2;
        this.zzav = str3;
        this.zzbd = z;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        this.zzpm.zzl.zzu().zza(this.zzpl, this.zzdk, this.zzao, this.zzav, this.zzbd);
    }
}
