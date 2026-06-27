package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;

/* loaded from: classes2.dex */
public final class zzdfx extends zzdob<zzdfx, zza> implements zzdpm {
    private static volatile zzdpv<zzdfx> zzdv;
    private static final zzdfx zzgsz = new zzdfx();
    private int zzgqk;
    private zzdmr zzgsh;
    private zzdmr zzgsi;
    private zzdft zzgsr;

    private zzdfx() {
        zzdmr zzdmrVar = zzdmr.zzhcr;
        this.zzgsh = zzdmrVar;
        this.zzgsi = zzdmrVar;
    }

    public static final class zza extends zzdob.zza<zzdfx, zza> implements zzdpm {
        private zza() {
            super(zzdfx.zzgsz);
        }

        public final zza zzeh(int i) {
            zzaxw();
            ((zzdfx) this.zzhhh).setVersion(0);
            return this;
        }

        public final zza zzc(zzdft zzdftVar) {
            zzaxw();
            ((zzdfx) this.zzhhh).zzb(zzdftVar);
            return this;
        }

        public final zza zzbd(zzdmr zzdmrVar) {
            zzaxw();
            ((zzdfx) this.zzhhh).zzau(zzdmrVar);
            return this;
        }

        public final zza zzbe(zzdmr zzdmrVar) {
            zzaxw();
            ((zzdfx) this.zzhhh).zzav(zzdmrVar);
            return this;
        }

        /* synthetic */ zza(zzdfy zzdfyVar) {
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

    public final zzdft zzaqn() {
        zzdft zzdftVar = this.zzgsr;
        return zzdftVar == null ? zzdft.zzaqs() : zzdftVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzb(zzdft zzdftVar) {
        if (zzdftVar == null) {
            throw new NullPointerException();
        }
        this.zzgsr = zzdftVar;
    }

    public final zzdmr zzaqf() {
        return this.zzgsh;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzau(zzdmr zzdmrVar) {
        if (zzdmrVar == null) {
            throw new NullPointerException();
        }
        this.zzgsh = zzdmrVar;
    }

    public final zzdmr zzaqg() {
        return this.zzgsi;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzav(zzdmr zzdmrVar) {
        if (zzdmrVar == null) {
            throw new NullPointerException();
        }
        this.zzgsi = zzdmrVar;
    }

    public static zzdfx zzbc(zzdmr zzdmrVar) throws zzdok {
        return (zzdfx) zzdob.zza(zzgsz, zzdmrVar);
    }

    public static zza zzaqx() {
        return (zza) zzgsz.zza(zzdob.zze.zzhho, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.ads.zzdob
    protected final Object zza(int i, Object obj, Object obj2) {
        zzdfy zzdfyVar = null;
        switch (zzdfy.zzdi[i - 1]) {
            case 1:
                return new zzdfx();
            case 2:
                return new zza(zzdfyVar);
            case 3:
                return zzdob.zza(zzgsz, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n\u0004\n", new Object[]{"zzgqk", "zzgsr", "zzgsh", "zzgsi"});
            case 4:
                return zzgsz;
            case 5:
                zzdpv<zzdfx> zzbVar = zzdv;
                if (zzbVar == null) {
                    synchronized (zzdfx.class) {
                        zzbVar = zzdv;
                        if (zzbVar == null) {
                            zzbVar = new zzdob.zzb<>(zzgsz);
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

    public static zzdfx zzaqy() {
        return zzgsz;
    }

    static {
        zzdob.zza((Class<zzdfx>) zzdfx.class, zzgsz);
    }
}
