package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;

/* loaded from: classes2.dex */
public final class zzdgn extends zzdob<zzdgn, zza> implements zzdpm {
    private static volatile zzdpv<zzdgn> zzdv;
    private static final zzdgn zzgtv = new zzdgn();
    private int zzgqu;
    private zzdgp zzgtt;

    private zzdgn() {
    }

    public static final class zza extends zzdob.zza<zzdgn, zza> implements zzdpm {
        private zza() {
            super(zzdgn.zzgtv);
        }

        /* synthetic */ zza(zzdgo zzdgoVar) {
            this();
        }
    }

    public final zzdgp zzarj() {
        zzdgp zzdgpVar = this.zzgtt;
        return zzdgpVar == null ? zzdgp.zzarr() : zzdgpVar;
    }

    public final int getKeySize() {
        return this.zzgqu;
    }

    public static zzdgn zzbm(zzdmr zzdmrVar) throws zzdok {
        return (zzdgn) zzdob.zza(zzgtv, zzdmrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdob
    protected final Object zza(int i, Object obj, Object obj2) {
        zzdgo zzdgoVar = null;
        switch (zzdgo.zzdi[i - 1]) {
            case 1:
                return new zzdgn();
            case 2:
                return new zza(zzdgoVar);
            case 3:
                return zzdob.zza(zzgtv, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\u000b", new Object[]{"zzgtt", "zzgqu"});
            case 4:
                return zzgtv;
            case 5:
                zzdpv<zzdgn> zzbVar = zzdv;
                if (zzbVar == null) {
                    synchronized (zzdgn.class) {
                        zzbVar = zzdv;
                        if (zzbVar == null) {
                            zzbVar = new zzdob.zzb<>(zzgtv);
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

    public static zzdgn zzarn() {
        return zzgtv;
    }

    static {
        zzdob.zza((Class<zzdgn>) zzdgn.class, zzgtv);
    }
}
