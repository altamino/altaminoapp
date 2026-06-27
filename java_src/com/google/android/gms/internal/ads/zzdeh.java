package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;

/* loaded from: classes2.dex */
public final class zzdeh extends zzdob<zzdeh, zza> implements zzdpm {
    private static volatile zzdpv<zzdeh> zzdv;
    private static final zzdeh zzgrh = new zzdeh();
    private int zzgqk;
    private zzdmr zzgqs = zzdmr.zzhcr;
    private zzdel zzgrg;

    private zzdeh() {
    }

    public static final class zza extends zzdob.zza<zzdeh, zza> implements zzdpm {
        private zza() {
            super(zzdeh.zzgrh);
        }

        public final zza zzdx(int i) {
            zzaxw();
            ((zzdeh) this.zzhhh).setVersion(0);
            return this;
        }

        public final zza zzb(zzdel zzdelVar) {
            zzaxw();
            ((zzdeh) this.zzhhh).zza(zzdelVar);
            return this;
        }

        public final zza zzae(zzdmr zzdmrVar) {
            zzaxw();
            ((zzdeh) this.zzhhh).zzw(zzdmrVar);
            return this;
        }

        /* synthetic */ zza(zzdei zzdeiVar) {
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

    public final zzdel zzapb() {
        zzdel zzdelVar = this.zzgrg;
        return zzdelVar == null ? zzdel.zzapf() : zzdelVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzdel zzdelVar) {
        if (zzdelVar == null) {
            throw new NullPointerException();
        }
        this.zzgrg = zzdelVar;
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

    public static zzdeh zzad(zzdmr zzdmrVar) throws zzdok {
        return (zzdeh) zzdob.zza(zzgrh, zzdmrVar);
    }

    public static zza zzapc() {
        return (zza) zzgrh.zza(zzdob.zze.zzhho, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.ads.zzdob
    protected final Object zza(int i, Object obj, Object obj2) {
        zzdei zzdeiVar = null;
        switch (zzdei.zzdi[i - 1]) {
            case 1:
                return new zzdeh();
            case 2:
                return new zza(zzdeiVar);
            case 3:
                return zzdob.zza(zzgrh, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzgqk", "zzgrg", "zzgqs"});
            case 4:
                return zzgrh;
            case 5:
                zzdpv<zzdeh> zzbVar = zzdv;
                if (zzbVar == null) {
                    synchronized (zzdeh.class) {
                        zzbVar = zzdv;
                        if (zzbVar == null) {
                            zzbVar = new zzdob.zzb<>(zzgrh);
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
        zzdob.zza((Class<zzdeh>) zzdeh.class, zzgrh);
    }
}
