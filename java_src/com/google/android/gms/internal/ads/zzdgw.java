package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;

/* loaded from: classes2.dex */
public final class zzdgw extends zzdob<zzdgw, zza> implements zzdpm {
    private static volatile zzdpv<zzdgw> zzdv;
    private static final zzdgw zzgur = new zzdgw();
    private String zzgtz = "";
    private zzdmr zzgua = zzdmr.zzhcr;
    private int zzguq;

    private zzdgw() {
    }

    public static final class zza extends zzdob.zza<zzdgw, zza> implements zzdpm {
        private zza() {
            super(zzdgw.zzgur);
        }

        /* synthetic */ zza(zzdgx zzdgxVar) {
            this();
        }
    }

    public final String zzart() {
        return this.zzgtz;
    }

    public final zzdmr zzaru() {
        return this.zzgua;
    }

    @Override // com.google.android.gms.internal.ads.zzdob
    protected final Object zza(int i, Object obj, Object obj2) {
        zzdgx zzdgxVar = null;
        switch (zzdgx.zzdi[i - 1]) {
            case 1:
                return new zzdgw();
            case 2:
                return new zza(zzdgxVar);
            case 3:
                return zzdob.zza(zzgur, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzgtz", "zzgua", "zzguq"});
            case 4:
                return zzgur;
            case 5:
                zzdpv<zzdgw> zzbVar = zzdv;
                if (zzbVar == null) {
                    synchronized (zzdgw.class) {
                        zzbVar = zzdv;
                        if (zzbVar == null) {
                            zzbVar = new zzdob.zzb<>(zzgur);
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

    public static zzdgw zzarz() {
        return zzgur;
    }

    static {
        zzdob.zza((Class<zzdgw>) zzdgw.class, zzgur);
    }
}
