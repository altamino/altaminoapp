package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;

/* loaded from: classes2.dex */
public final class zzded extends zzdob<zzded, zza> implements zzdpm {
    private static volatile zzdpv<zzded> zzdv;
    private static final zzded zzgrd = new zzded();
    private int zzgqu;
    private zzdef zzgrb;

    private zzded() {
    }

    public static final class zza extends zzdob.zza<zzded, zza> implements zzdpm {
        private zza() {
            super(zzded.zzgrd);
        }

        /* synthetic */ zza(zzdee zzdeeVar) {
            this();
        }
    }

    public final zzdef zzaos() {
        zzdef zzdefVar = this.zzgrb;
        return zzdefVar == null ? zzdef.zzaoz() : zzdefVar;
    }

    public final int getKeySize() {
        return this.zzgqu;
    }

    public static zzded zzac(zzdmr zzdmrVar) throws zzdok {
        return (zzded) zzdob.zza(zzgrd, zzdmrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdob
    protected final Object zza(int i, Object obj, Object obj2) {
        zzdee zzdeeVar = null;
        switch (zzdee.zzdi[i - 1]) {
            case 1:
                return new zzded();
            case 2:
                return new zza(zzdeeVar);
            case 3:
                return zzdob.zza(zzgrd, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\u000b", new Object[]{"zzgrb", "zzgqu"});
            case 4:
                return zzgrd;
            case 5:
                zzdpv<zzded> zzbVar = zzdv;
                if (zzbVar == null) {
                    synchronized (zzded.class) {
                        zzbVar = zzdv;
                        if (zzbVar == null) {
                            zzbVar = new zzdob.zzb<>(zzgrd);
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

    public static zzded zzaow() {
        return zzgrd;
    }

    static {
        zzdob.zza((Class<zzded>) zzded.class, zzgrd);
    }
}
