package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;

/* loaded from: classes2.dex */
public final class zzdfr extends zzdob<zzdfr, zza> implements zzdpm {
    private static volatile zzdpv<zzdfr> zzdv;
    private static final zzdfr zzgss = new zzdfr();
    private zzdft zzgsr;

    private zzdfr() {
    }

    public static final class zza extends zzdob.zza<zzdfr, zza> implements zzdpm {
        private zza() {
            super(zzdfr.zzgss);
        }

        /* synthetic */ zza(zzdfs zzdfsVar) {
            this();
        }
    }

    public final zzdft zzaqn() {
        zzdft zzdftVar = this.zzgsr;
        return zzdftVar == null ? zzdft.zzaqs() : zzdftVar;
    }

    public static zzdfr zzaz(zzdmr zzdmrVar) throws zzdok {
        return (zzdfr) zzdob.zza(zzgss, zzdmrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdob
    protected final Object zza(int i, Object obj, Object obj2) {
        zzdfs zzdfsVar = null;
        switch (zzdfs.zzdi[i - 1]) {
            case 1:
                return new zzdfr();
            case 2:
                return new zza(zzdfsVar);
            case 3:
                return zzdob.zza(zzgss, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\t", new Object[]{"zzgsr"});
            case 4:
                return zzgss;
            case 5:
                zzdpv<zzdfr> zzbVar = zzdv;
                if (zzbVar == null) {
                    synchronized (zzdfr.class) {
                        zzbVar = zzdv;
                        if (zzbVar == null) {
                            zzbVar = new zzdob.zzb<>(zzgss);
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
        zzdob.zza((Class<zzdfr>) zzdfr.class, zzgss);
    }
}
