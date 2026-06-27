package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;

/* loaded from: classes2.dex */
public final class zzdef extends zzdob<zzdef, zza> implements zzdpm {
    private static volatile zzdpv<zzdef> zzdv;
    private static final zzdef zzgrf = new zzdef();
    private int zzgre;

    private zzdef() {
    }

    public static final class zza extends zzdob.zza<zzdef, zza> implements zzdpm {
        private zza() {
            super(zzdef.zzgrf);
        }

        /* synthetic */ zza(zzdeg zzdegVar) {
            this();
        }
    }

    public final int zzaoy() {
        return this.zzgre;
    }

    @Override // com.google.android.gms.internal.ads.zzdob
    protected final Object zza(int i, Object obj, Object obj2) {
        zzdeg zzdegVar = null;
        switch (zzdeg.zzdi[i - 1]) {
            case 1:
                return new zzdef();
            case 2:
                return new zza(zzdegVar);
            case 3:
                return zzdob.zza(zzgrf, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zzgre"});
            case 4:
                return zzgrf;
            case 5:
                zzdpv<zzdef> zzbVar = zzdv;
                if (zzbVar == null) {
                    synchronized (zzdef.class) {
                        zzbVar = zzdv;
                        if (zzbVar == null) {
                            zzbVar = new zzdob.zzb<>(zzgrf);
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

    public static zzdef zzaoz() {
        return zzgrf;
    }

    static {
        zzdob.zza((Class<zzdef>) zzdef.class, zzgrf);
    }
}
