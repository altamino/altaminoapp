package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;

/* loaded from: classes2.dex */
public final class zzdhg extends zzdob<zzdhg, zza> implements zzdpm {
    private static volatile zzdpv<zzdhg> zzdv;
    private static final zzdhg zzgvk = new zzdhg();
    private String zzgvj = "";

    private zzdhg() {
    }

    public static final class zza extends zzdob.zza<zzdhg, zza> implements zzdpm {
        private zza() {
            super(zzdhg.zzgvk);
        }

        /* synthetic */ zza(zzdhh zzdhhVar) {
            this();
        }
    }

    public final String zzasz() {
        return this.zzgvj;
    }

    public static zzdhg zzbq(zzdmr zzdmrVar) throws zzdok {
        return (zzdhg) zzdob.zza(zzgvk, zzdmrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdob
    protected final Object zza(int i, Object obj, Object obj2) {
        zzdhh zzdhhVar = null;
        switch (zzdhh.zzdi[i - 1]) {
            case 1:
                return new zzdhg();
            case 2:
                return new zza(zzdhhVar);
            case 3:
                return zzdob.zza(zzgvk, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{"zzgvj"});
            case 4:
                return zzgvk;
            case 5:
                zzdpv<zzdhg> zzbVar = zzdv;
                if (zzbVar == null) {
                    synchronized (zzdhg.class) {
                        zzbVar = zzdv;
                        if (zzbVar == null) {
                            zzbVar = new zzdob.zzb<>(zzgvk);
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

    public static zzdhg zzata() {
        return zzgvk;
    }

    static {
        zzdob.zza((Class<zzdhg>) zzdhg.class, zzgvk);
    }
}
