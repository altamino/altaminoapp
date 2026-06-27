package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;

/* loaded from: classes2.dex */
public final class zzdhk extends zzdob<zzdhk, zza> implements zzdpm {
    private static volatile zzdpv<zzdhk> zzdv;
    private static final zzdhk zzgvp = new zzdhk();
    private String zzgvn = "";
    private zzdgw zzgvo;

    private zzdhk() {
    }

    public static final class zza extends zzdob.zza<zzdhk, zza> implements zzdpm {
        private zza() {
            super(zzdhk.zzgvp);
        }

        /* synthetic */ zza(zzdhl zzdhlVar) {
            this();
        }
    }

    public final String zzatf() {
        return this.zzgvn;
    }

    public final zzdgw zzatg() {
        zzdgw zzdgwVar = this.zzgvo;
        return zzdgwVar == null ? zzdgw.zzarz() : zzdgwVar;
    }

    public static zzdhk zzbs(zzdmr zzdmrVar) throws zzdok {
        return (zzdhk) zzdob.zza(zzgvp, zzdmrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdob
    protected final Object zza(int i, Object obj, Object obj2) {
        zzdhl zzdhlVar = null;
        switch (zzdhl.zzdi[i - 1]) {
            case 1:
                return new zzdhk();
            case 2:
                return new zza(zzdhlVar);
            case 3:
                return zzdob.zza(zzgvp, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\t", new Object[]{"zzgvn", "zzgvo"});
            case 4:
                return zzgvp;
            case 5:
                zzdpv<zzdhk> zzbVar = zzdv;
                if (zzbVar == null) {
                    synchronized (zzdhk.class) {
                        zzbVar = zzdv;
                        if (zzbVar == null) {
                            zzbVar = new zzdob.zzb<>(zzgvp);
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

    public static zzdhk zzath() {
        return zzgvp;
    }

    static {
        zzdob.zza((Class<zzdhk>) zzdhk.class, zzgvp);
    }
}
