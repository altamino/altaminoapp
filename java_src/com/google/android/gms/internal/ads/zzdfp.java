package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;

/* loaded from: classes2.dex */
public final class zzdfp extends zzdob<zzdfp, zza> implements zzdpm {
    private static volatile zzdpv<zzdfp> zzdv;
    private static final zzdfp zzgsq = new zzdfp();
    private zzdgw zzgsp;

    private zzdfp() {
    }

    public static final class zza extends zzdob.zza<zzdfp, zza> implements zzdpm {
        private zza() {
            super(zzdfp.zzgsq);
        }

        /* synthetic */ zza(zzdfq zzdfqVar) {
            this();
        }
    }

    public final zzdgw zzaqk() {
        zzdgw zzdgwVar = this.zzgsp;
        return zzdgwVar == null ? zzdgw.zzarz() : zzdgwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdob
    protected final Object zza(int i, Object obj, Object obj2) {
        zzdfq zzdfqVar = null;
        switch (zzdfq.zzdi[i - 1]) {
            case 1:
                return new zzdfp();
            case 2:
                return new zza(zzdfqVar);
            case 3:
                return zzdob.zza(zzgsq, "\u0000\u0001\u0000\u0000\u0002\u0002\u0001\u0000\u0000\u0000\u0002\t", new Object[]{"zzgsp"});
            case 4:
                return zzgsq;
            case 5:
                zzdpv<zzdfp> zzbVar = zzdv;
                if (zzbVar == null) {
                    synchronized (zzdfp.class) {
                        zzbVar = zzdv;
                        if (zzbVar == null) {
                            zzbVar = new zzdob.zzb<>(zzgsq);
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

    public static zzdfp zzaql() {
        return zzgsq;
    }

    static {
        zzdob.zza((Class<zzdfp>) zzdfp.class, zzgsq);
    }
}
