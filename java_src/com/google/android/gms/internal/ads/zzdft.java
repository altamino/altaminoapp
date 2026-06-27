package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;

/* loaded from: classes2.dex */
public final class zzdft extends zzdob<zzdft, zza> implements zzdpm {
    private static volatile zzdpv<zzdft> zzdv;
    private static final zzdft zzgsw = new zzdft();
    private zzdfz zzgst;
    private zzdfp zzgsu;
    private int zzgsv;

    private zzdft() {
    }

    public static final class zza extends zzdob.zza<zzdft, zza> implements zzdpm {
        private zza() {
            super(zzdft.zzgsw);
        }

        /* synthetic */ zza(zzdfu zzdfuVar) {
            this();
        }
    }

    public final zzdfz zzaqp() {
        zzdfz zzdfzVar = this.zzgst;
        return zzdfzVar == null ? zzdfz.zzarc() : zzdfzVar;
    }

    public final zzdfp zzaqq() {
        zzdfp zzdfpVar = this.zzgsu;
        return zzdfpVar == null ? zzdfp.zzaql() : zzdfpVar;
    }

    public final zzdfd zzaqr() {
        zzdfd zzdfdVarZzec = zzdfd.zzec(this.zzgsv);
        return zzdfdVarZzec == null ? zzdfd.UNRECOGNIZED : zzdfdVarZzec;
    }

    @Override // com.google.android.gms.internal.ads.zzdob
    protected final Object zza(int i, Object obj, Object obj2) {
        zzdfu zzdfuVar = null;
        switch (zzdfu.zzdi[i - 1]) {
            case 1:
                return new zzdft();
            case 2:
                return new zza(zzdfuVar);
            case 3:
                return zzdob.zza(zzgsw, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\t\u0003\f", new Object[]{"zzgst", "zzgsu", "zzgsv"});
            case 4:
                return zzgsw;
            case 5:
                zzdpv<zzdft> zzbVar = zzdv;
                if (zzbVar == null) {
                    synchronized (zzdft.class) {
                        zzbVar = zzdv;
                        if (zzbVar == null) {
                            zzbVar = new zzdob.zzb<>(zzgsw);
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

    public static zzdft zzaqs() {
        return zzgsw;
    }

    static {
        zzdob.zza((Class<zzdft>) zzdft.class, zzgsw);
    }
}
