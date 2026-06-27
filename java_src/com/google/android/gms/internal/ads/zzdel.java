package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;

/* loaded from: classes2.dex */
public final class zzdel extends zzdob<zzdel, zza> implements zzdpm {
    private static volatile zzdpv<zzdel> zzdv;
    private static final zzdel zzgrj = new zzdel();
    private int zzgre;

    private zzdel() {
    }

    public static final class zza extends zzdob.zza<zzdel, zza> implements zzdpm {
        private zza() {
            super(zzdel.zzgrj);
        }

        /* synthetic */ zza(zzdem zzdemVar) {
            this();
        }
    }

    public final int zzaoy() {
        return this.zzgre;
    }

    @Override // com.google.android.gms.internal.ads.zzdob
    protected final Object zza(int i, Object obj, Object obj2) {
        zzdem zzdemVar = null;
        switch (zzdem.zzdi[i - 1]) {
            case 1:
                return new zzdel();
            case 2:
                return new zza(zzdemVar);
            case 3:
                return zzdob.zza(zzgrj, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zzgre"});
            case 4:
                return zzgrj;
            case 5:
                zzdpv<zzdel> zzbVar = zzdv;
                if (zzbVar == null) {
                    synchronized (zzdel.class) {
                        zzbVar = zzdv;
                        if (zzbVar == null) {
                            zzbVar = new zzdob.zzb<>(zzgrj);
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

    public static zzdel zzapf() {
        return zzgrj;
    }

    static {
        zzdob.zza((Class<zzdel>) zzdel.class, zzgrj);
    }
}
