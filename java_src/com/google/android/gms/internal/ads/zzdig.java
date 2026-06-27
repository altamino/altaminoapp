package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;

/* loaded from: classes2.dex */
public final class zzdig extends zzdob<zzdig, zza> implements zzdpm {
    private static volatile zzdpv<zzdig> zzdv;
    private static final zzdig zzgwz = new zzdig();
    private int zzgqk;
    private zzdmr zzgqs = zzdmr.zzhcr;

    private zzdig() {
    }

    public static final class zza extends zzdob.zza<zzdig, zza> implements zzdpm {
        private zza() {
            super(zzdig.zzgwz);
        }

        public final zza zzfe(int i) {
            zzaxw();
            ((zzdig) this.zzhhh).setVersion(0);
            return this;
        }

        public final zza zzcy(zzdmr zzdmrVar) {
            zzaxw();
            ((zzdig) this.zzhhh).zzw(zzdmrVar);
            return this;
        }

        /* synthetic */ zza(zzdih zzdihVar) {
            this();
        }
    }

    public final int getVersion() {
        return this.zzgqk;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setVersion(int i) {
        this.zzgqk = i;
    }

    public final zzdmr zzaoi() {
        return this.zzgqs;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzw(zzdmr zzdmrVar) {
        if (zzdmrVar == null) {
            throw new NullPointerException();
        }
        this.zzgqs = zzdmrVar;
    }

    public static zzdig zzcx(zzdmr zzdmrVar) throws zzdok {
        return (zzdig) zzdob.zza(zzgwz, zzdmrVar);
    }

    public static zza zzaus() {
        return (zza) zzgwz.zza(zzdob.zze.zzhho, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.ads.zzdob
    protected final Object zza(int i, Object obj, Object obj2) {
        zzdih zzdihVar = null;
        switch (zzdih.zzdi[i - 1]) {
            case 1:
                return new zzdig();
            case 2:
                return new zza(zzdihVar);
            case 3:
                return zzdob.zza(zzgwz, "\u0000\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003\n", new Object[]{"zzgqk", "zzgqs"});
            case 4:
                return zzgwz;
            case 5:
                zzdpv<zzdig> zzbVar = zzdv;
                if (zzbVar == null) {
                    synchronized (zzdig.class) {
                        zzbVar = zzdv;
                        if (zzbVar == null) {
                            zzbVar = new zzdob.zzb<>(zzgwz);
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
        zzdob.zza((Class<zzdig>) zzdig.class, zzgwz);
    }
}
