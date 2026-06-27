package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;

/* loaded from: classes2.dex */
public final class zzdeb extends zzdob<zzdeb, zza> implements zzdpm {
    private static volatile zzdpv<zzdeb> zzdv;
    private static final zzdeb zzgrc = new zzdeb();
    private int zzgqk;
    private zzdmr zzgqs = zzdmr.zzhcr;
    private zzdef zzgrb;

    private zzdeb() {
    }

    public static final class zza extends zzdob.zza<zzdeb, zza> implements zzdpm {
        private zza() {
            super(zzdeb.zzgrc);
        }

        public final zza zzdw(int i) {
            zzaxw();
            ((zzdeb) this.zzhhh).setVersion(0);
            return this;
        }

        public final zza zzc(zzdef zzdefVar) {
            zzaxw();
            ((zzdeb) this.zzhhh).zzb(zzdefVar);
            return this;
        }

        public final zza zzab(zzdmr zzdmrVar) {
            zzaxw();
            ((zzdeb) this.zzhhh).zzw(zzdmrVar);
            return this;
        }

        /* synthetic */ zza(zzdec zzdecVar) {
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

    public final zzdef zzaos() {
        zzdef zzdefVar = this.zzgrb;
        return zzdefVar == null ? zzdef.zzaoz() : zzdefVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzb(zzdef zzdefVar) {
        if (zzdefVar == null) {
            throw new NullPointerException();
        }
        this.zzgrb = zzdefVar;
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

    public static zzdeb zzaa(zzdmr zzdmrVar) throws zzdok {
        return (zzdeb) zzdob.zza(zzgrc, zzdmrVar);
    }

    public static zza zzaot() {
        return (zza) zzgrc.zza(zzdob.zze.zzhho, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.ads.zzdob
    protected final Object zza(int i, Object obj, Object obj2) {
        zzdec zzdecVar = null;
        switch (zzdec.zzdi[i - 1]) {
            case 1:
                return new zzdeb();
            case 2:
                return new zza(zzdecVar);
            case 3:
                return zzdob.zza(zzgrc, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzgqk", "zzgrb", "zzgqs"});
            case 4:
                return zzgrc;
            case 5:
                zzdpv<zzdeb> zzbVar = zzdv;
                if (zzbVar == null) {
                    synchronized (zzdeb.class) {
                        zzbVar = zzdv;
                        if (zzbVar == null) {
                            zzbVar = new zzdob.zzb<>(zzgrc);
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

    public static zzdeb zzaou() {
        return zzgrc;
    }

    static {
        zzdob.zza((Class<zzdeb>) zzdeb.class, zzgrc);
    }
}
