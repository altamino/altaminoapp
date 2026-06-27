package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbp;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public abstract class zzfk implements Callable {
    private final String TAG = getClass().getSimpleName();
    private final String className;
    private final int zzaaa;
    private final int zzaab;
    protected final zzdy zzvd;
    protected final zzbp.zza.C0007zza zzzm;
    private final String zzzu;
    protected Method zzzw;

    public zzfk(zzdy zzdyVar, String str, String str2, zzbp.zza.C0007zza c0007zza, int i, int i2) {
        this.zzvd = zzdyVar;
        this.className = str;
        this.zzzu = str2;
        this.zzzm = c0007zza;
        this.zzaaa = i;
        this.zzaab = i2;
    }

    protected abstract void zzcx() throws IllegalAccessException, InvocationTargetException;

    @Override // java.util.concurrent.Callable
    /* renamed from: zzcz, reason: merged with bridge method [inline-methods] */
    public Void call() throws Exception {
        long jNanoTime;
        try {
            jNanoTime = System.nanoTime();
            this.zzzw = this.zzvd.zzc(this.className, this.zzzu);
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
        if (this.zzzw == null) {
            return null;
        }
        zzcx();
        zzda zzdaVarZzcm = this.zzvd.zzcm();
        if (zzdaVarZzcm != null && this.zzaaa != Integer.MIN_VALUE) {
            zzdaVarZzcm.zza(this.zzaab, this.zzaaa, (System.nanoTime() - jNanoTime) / 1000);
        }
        return null;
    }
}
