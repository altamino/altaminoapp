package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;

/* loaded from: classes2.dex */
public final class zzdej extends zzdob<zzdej, zza> implements zzdpm {
    private static volatile zzdpv<zzdej> zzdv;
    private static final zzdej zzgri = new zzdej();
    private int zzgqu;
    private zzdel zzgrg;

    private zzdej() {
    }

    public static final class zza extends zzdob.zza<zzdej, zza> implements zzdpm {
        private zza() {
            super(zzdej.zzgri);
        }

        /* synthetic */ zza(zzdek zzdekVar) {
            this();
        }
    }

    public final zzdel zzapb() {
        zzdel zzdelVar = this.zzgrg;
        return zzdelVar == null ? zzdel.zzapf() : zzdelVar;
    }

    public final int getKeySize() {
        return this.zzgqu;
    }

    public static zzdej zzaf(zzdmr zzdmrVar) throws zzdok {
        return (zzdej) zzdob.zza(zzgri, zzdmrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdob
    protected final Object zza(int i, Object obj, Object obj2) {
        zzdek zzdekVar = null;
        switch (zzdek.zzdi[i - 1]) {
            case 1:
                return new zzdej();
            case 2:
                return new zza(zzdekVar);
            case 3:
                return zzdob.zza(zzgri, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\u000b", new Object[]{"zzgrg", "zzgqu"});
            case 4:
                return zzgri;
            case 5:
                zzdpv<zzdej> zzbVar = zzdv;
                if (zzbVar == null) {
                    synchronized (zzdej.class) {
                        zzbVar = zzdv;
                        if (zzbVar == null) {
                            zzbVar = new zzdob.zzb<>(zzgri);
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
        zzdob.zza((Class<zzdej>) zzdej.class, zzgri);
    }
}
