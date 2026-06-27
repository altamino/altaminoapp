package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;

/* loaded from: classes2.dex */
public final class zzdet extends zzdob<zzdet, zza> implements zzdpm {
    private static volatile zzdpv<zzdet> zzdv;
    private static final zzdet zzgro = new zzdet();
    private int zzgqk;
    private zzdmr zzgqs = zzdmr.zzhcr;

    private zzdet() {
    }

    public static final class zza extends zzdob.zza<zzdet, zza> implements zzdpm {
        private zza() {
            super(zzdet.zzgro);
        }

        public final zza zzdz(int i) {
            zzaxw();
            ((zzdet) this.zzhhh).setVersion(0);
            return this;
        }

        public final zza zzak(zzdmr zzdmrVar) {
            zzaxw();
            ((zzdet) this.zzhhh).zzw(zzdmrVar);
            return this;
        }

        /* synthetic */ zza(zzdeu zzdeuVar) {
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

    public static zzdet zzaj(zzdmr zzdmrVar) throws zzdok {
        return (zzdet) zzdob.zza(zzgro, zzdmrVar);
    }

    public static zza zzapn() {
        return (zza) zzgro.zza(zzdob.zze.zzhho, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.ads.zzdob
    protected final Object zza(int i, Object obj, Object obj2) {
        zzdeu zzdeuVar = null;
        switch (zzdeu.zzdi[i - 1]) {
            case 1:
                return new zzdet();
            case 2:
                return new zza(zzdeuVar);
            case 3:
                return zzdob.zza(zzgro, "\u0000\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003\n", new Object[]{"zzgqk", "zzgqs"});
            case 4:
                return zzgro;
            case 5:
                zzdpv<zzdet> zzbVar = zzdv;
                if (zzbVar == null) {
                    synchronized (zzdet.class) {
                        zzbVar = zzdv;
                        if (zzbVar == null) {
                            zzbVar = new zzdob.zzb<>(zzgro);
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
        zzdob.zza((Class<zzdet>) zzdet.class, zzgro);
    }
}
