package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;

/* loaded from: classes2.dex */
public final class zzdgh extends zzdob<zzdgh, zza> implements zzdpm {
    private static volatile zzdpv<zzdgh> zzdv;
    private static final zzdgh zzgtm = new zzdgh();

    private zzdgh() {
    }

    public static final class zza extends zzdob.zza<zzdgh, zza> implements zzdpm {
        private zza() {
            super(zzdgh.zzgtm);
        }

        /* synthetic */ zza(zzdgi zzdgiVar) {
            this();
        }
    }

    public static zzdgh zzbj(zzdmr zzdmrVar) throws zzdok {
        return (zzdgh) zzdob.zza(zzgtm, zzdmrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdob
    protected final Object zza(int i, Object obj, Object obj2) {
        zzdgi zzdgiVar = null;
        switch (zzdgi.zzdi[i - 1]) {
            case 1:
                return new zzdgh();
            case 2:
                return new zza(zzdgiVar);
            case 3:
                return zzdob.zza(zzgtm, "\u0000\u0000", (Object[]) null);
            case 4:
                return zzgtm;
            case 5:
                zzdpv<zzdgh> zzbVar = zzdv;
                if (zzbVar == null) {
                    synchronized (zzdgh.class) {
                        zzbVar = zzdv;
                        if (zzbVar == null) {
                            zzbVar = new zzdob.zzb<>(zzgtm);
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
        zzdob.zza((Class<zzdgh>) zzdgh.class, zzgtm);
    }
}
