package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;

/* loaded from: classes2.dex */
public final class zzdev extends zzdob<zzdev, zza> implements zzdpm {
    private static volatile zzdpv<zzdev> zzdv;
    private static final zzdev zzgrp = new zzdev();
    private int zzgqu;

    private zzdev() {
    }

    public static final class zza extends zzdob.zza<zzdev, zza> implements zzdpm {
        private zza() {
            super(zzdev.zzgrp);
        }

        /* synthetic */ zza(zzdew zzdewVar) {
            this();
        }
    }

    public final int getKeySize() {
        return this.zzgqu;
    }

    public static zzdev zzal(zzdmr zzdmrVar) throws zzdok {
        return (zzdev) zzdob.zza(zzgrp, zzdmrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdob
    protected final Object zza(int i, Object obj, Object obj2) {
        zzdew zzdewVar = null;
        switch (zzdew.zzdi[i - 1]) {
            case 1:
                return new zzdev();
            case 2:
                return new zza(zzdewVar);
            case 3:
                return zzdob.zza(zzgrp, "\u0000\u0001\u0000\u0000\u0002\u0002\u0001\u0000\u0000\u0000\u0002\u000b", new Object[]{"zzgqu"});
            case 4:
                return zzgrp;
            case 5:
                zzdpv<zzdev> zzbVar = zzdv;
                if (zzbVar == null) {
                    synchronized (zzdev.class) {
                        zzbVar = zzdv;
                        if (zzbVar == null) {
                            zzbVar = new zzdob.zzb<>(zzgrp);
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
        zzdob.zza((Class<zzdev>) zzdev.class, zzgrp);
    }
}
