package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;

/* loaded from: classes2.dex */
public final class zzddt extends zzdob<zzddt, zza> implements zzdpm {
    private static volatile zzdpv<zzddt> zzdv;
    private static final zzddt zzgqq = new zzddt();
    private zzded zzgqo;
    private zzdgn zzgqp;

    private zzddt() {
    }

    public static final class zza extends zzdob.zza<zzddt, zza> implements zzdpm {
        private zza() {
            super(zzddt.zzgqq);
        }

        /* synthetic */ zza(zzddu zzdduVar) {
            this();
        }
    }

    public final zzded zzaoe() {
        zzded zzdedVar = this.zzgqo;
        return zzdedVar == null ? zzded.zzaow() : zzdedVar;
    }

    public final zzdgn zzaof() {
        zzdgn zzdgnVar = this.zzgqp;
        return zzdgnVar == null ? zzdgn.zzarn() : zzdgnVar;
    }

    public static zzddt zzv(zzdmr zzdmrVar) throws zzdok {
        return (zzddt) zzdob.zza(zzgqq, zzdmrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdob
    protected final Object zza(int i, Object obj, Object obj2) {
        zzddu zzdduVar = null;
        switch (zzddu.zzdi[i - 1]) {
            case 1:
                return new zzddt();
            case 2:
                return new zza(zzdduVar);
            case 3:
                return zzdob.zza(zzgqq, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\t", new Object[]{"zzgqo", "zzgqp"});
            case 4:
                return zzgqq;
            case 5:
                zzdpv<zzddt> zzbVar = zzdv;
                if (zzbVar == null) {
                    synchronized (zzddt.class) {
                        zzbVar = zzdv;
                        if (zzbVar == null) {
                            zzbVar = new zzdob.zzb<>(zzgqq);
                            zzdv = zzbVar;
                        }
                    }
                }
                return zzbVar;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    static {
        zzdob.zza((Class<zzddt>) zzddt.class, zzgqq);
    }
}
