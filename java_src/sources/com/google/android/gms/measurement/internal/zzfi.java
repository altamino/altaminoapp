package com.google.android.gms.measurement.internal;

import androidx.annotation.GuardedBy;

/* JADX INFO: loaded from: classes10.dex */
public final class zzfi<V> {
    private static final Object zza = new Object();
    private final String zzb;
    private final zzfg<V> zzc;
    private final V zzd;
    private final V zze;
    private final Object zzf;

    @GuardedBy
    private volatile V zzg;

    @GuardedBy
    private volatile V zzh;

    public final String zza() {
        return this.zzb;
    }

    private zzfi(String str, V v5, V v6, zzfg<V> zzfgVar) {
        this.zzf = new Object();
        this.zzg = null;
        this.zzh = null;
        this.zzb = str;
        this.zzd = v5;
        this.zze = v6;
        this.zzc = zzfgVar;
    }

    public final V zza(V v5) {
        synchronized (this.zzf) {
        }
        if (v5 != null) {
            return v5;
        }
        if (zzff.zza == null) {
            return this.zzd;
        }
        synchronized (zza) {
            try {
                if (zzae.zza()) {
                    return this.zzh == null ? this.zzd : this.zzh;
                }
                try {
                    for (zzfi zzfiVar : zzbi.zzcv) {
                        if (zzae.zza()) {
                            throw new IllegalStateException("Refreshing flag cache must be done on a worker thread.");
                        }
                        V vZza = null;
                        try {
                            zzfg<V> zzfgVar = zzfiVar.zzc;
                            if (zzfgVar != null) {
                                vZza = zzfgVar.zza();
                            }
                        } catch (IllegalStateException unused) {
                        }
                        synchronized (zza) {
                            zzfiVar.zzh = vZza;
                        }
                    }
                } catch (SecurityException unused2) {
                }
                zzfg<V> zzfgVar2 = this.zzc;
                if (zzfgVar2 == null) {
                    return this.zzd;
                }
                try {
                    return zzfgVar2.zza();
                } catch (IllegalStateException unused3) {
                    return this.zzd;
                } catch (SecurityException unused4) {
                    return this.zzd;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
