package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;

/* loaded from: classes2.dex */
public final class zzdhi extends zzdob<zzdhi, zza> implements zzdpm {
    private static volatile zzdpv<zzdhi> zzdv;
    private static final zzdhi zzgvm = new zzdhi();
    private int zzgqk;
    private zzdhk zzgvl;

    private zzdhi() {
    }

    public static final class zza extends zzdob.zza<zzdhi, zza> implements zzdpm {
        private zza() {
            super(zzdhi.zzgvm);
        }

        public final zza zzey(int i) {
            zzaxw();
            ((zzdhi) this.zzhhh).setVersion(0);
            return this;
        }

        public final zza zzb(zzdhk zzdhkVar) {
            zzaxw();
            ((zzdhi) this.zzhhh).zza(zzdhkVar);
            return this;
        }

        /* synthetic */ zza(zzdhj zzdhjVar) {
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

    public final zzdhk zzatc() {
        zzdhk zzdhkVar = this.zzgvl;
        return zzdhkVar == null ? zzdhk.zzath() : zzdhkVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzdhk zzdhkVar) {
        if (zzdhkVar == null) {
            throw new NullPointerException();
        }
        this.zzgvl = zzdhkVar;
    }

    public static zzdhi zzbr(zzdmr zzdmrVar) throws zzdok {
        return (zzdhi) zzdob.zza(zzgvm, zzdmrVar);
    }

    public static zza zzatd() {
        return (zza) zzgvm.zza(zzdob.zze.zzhho, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.ads.zzdob
    protected final Object zza(int i, Object obj, Object obj2) {
        zzdhj zzdhjVar = null;
        switch (zzdhj.zzdi[i - 1]) {
            case 1:
                return new zzdhi();
            case 2:
                return new zza(zzdhjVar);
            case 3:
                return zzdob.zza(zzgvm, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t", new Object[]{"zzgqk", "zzgvl"});
            case 4:
                return zzgvm;
            case 5:
                zzdpv<zzdhi> zzbVar = zzdv;
                if (zzbVar == null) {
                    synchronized (zzdhi.class) {
                        zzbVar = zzdv;
                        if (zzbVar == null) {
                            zzbVar = new zzdob.zzb<>(zzgvm);
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
        zzdob.zza((Class<zzdhi>) zzdhi.class, zzgvm);
    }
}
