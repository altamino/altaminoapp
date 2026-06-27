package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;

/* loaded from: classes2.dex */
public final class zzdfb extends zzdob<zzdfb, zza> implements zzdpm {
    private static volatile zzdpv<zzdfb> zzdv;
    private static final zzdfb zzgrs = new zzdfb();
    private int zzgqk;
    private zzdmr zzgqs = zzdmr.zzhcr;

    private zzdfb() {
    }

    public static final class zza extends zzdob.zza<zzdfb, zza> implements zzdpm {
        private zza() {
            super(zzdfb.zzgrs);
        }

        public final zza zzeb(int i) {
            zzaxw();
            ((zzdfb) this.zzhhh).setVersion(0);
            return this;
        }

        public final zza zzaq(zzdmr zzdmrVar) {
            zzaxw();
            ((zzdfb) this.zzhhh).zzw(zzdmrVar);
            return this;
        }

        /* synthetic */ zza(zzdfc zzdfcVar) {
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

    public static zzdfb zzap(zzdmr zzdmrVar) throws zzdok {
        return (zzdfb) zzdob.zza(zzgrs, zzdmrVar);
    }

    public static zza zzapt() {
        return (zza) zzgrs.zza(zzdob.zze.zzhho, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.ads.zzdob
    protected final Object zza(int i, Object obj, Object obj2) {
        zzdfc zzdfcVar = null;
        switch (zzdfc.zzdi[i - 1]) {
            case 1:
                return new zzdfb();
            case 2:
                return new zza(zzdfcVar);
            case 3:
                return zzdob.zza(zzgrs, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\n", new Object[]{"zzgqk", "zzgqs"});
            case 4:
                return zzgrs;
            case 5:
                zzdpv<zzdfb> zzbVar = zzdv;
                if (zzbVar == null) {
                    synchronized (zzdfb.class) {
                        zzbVar = zzdv;
                        if (zzbVar == null) {
                            zzbVar = new zzdob.zzb<>(zzgrs);
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
        zzdob.zza((Class<zzdfb>) zzdfb.class, zzgrs);
    }
}
