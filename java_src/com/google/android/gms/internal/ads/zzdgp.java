package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;

/* loaded from: classes2.dex */
public final class zzdgp extends zzdob<zzdgp, zza> implements zzdpm {
    private static volatile zzdpv<zzdgp> zzdv;
    private static final zzdgp zzgty = new zzdgp();
    private int zzgtw;
    private int zzgtx;

    private zzdgp() {
    }

    public static final class zza extends zzdob.zza<zzdgp, zza> implements zzdpm {
        private zza() {
            super(zzdgp.zzgty);
        }

        /* synthetic */ zza(zzdgq zzdgqVar) {
            this();
        }
    }

    public final zzdgj zzarp() {
        zzdgj zzdgjVarZzel = zzdgj.zzel(this.zzgtw);
        return zzdgjVarZzel == null ? zzdgj.UNRECOGNIZED : zzdgjVarZzel;
    }

    public final int zzarq() {
        return this.zzgtx;
    }

    @Override // com.google.android.gms.internal.ads.zzdob
    protected final Object zza(int i, Object obj, Object obj2) {
        zzdgq zzdgqVar = null;
        switch (zzdgq.zzdi[i - 1]) {
            case 1:
                return new zzdgp();
            case 2:
                return new zza(zzdgqVar);
            case 3:
                return zzdob.zza(zzgty, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0002\u000b", new Object[]{"zzgtw", "zzgtx"});
            case 4:
                return zzgty;
            case 5:
                zzdpv<zzdgp> zzbVar = zzdv;
                if (zzbVar == null) {
                    synchronized (zzdgp.class) {
                        zzbVar = zzdv;
                        if (zzbVar == null) {
                            zzbVar = new zzdob.zzb<>(zzgty);
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

    public static zzdgp zzarr() {
        return zzgty;
    }

    static {
        zzdob.zza((Class<zzdgp>) zzdgp.class, zzgty);
    }
}
