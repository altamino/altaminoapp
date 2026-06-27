package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;

/* loaded from: classes2.dex */
public final class zzdfv extends zzdob<zzdfv, zza> implements zzdpm {
    private static volatile zzdpv<zzdfv> zzdv;
    private static final zzdfv zzgsy = new zzdfv();
    private int zzgqk;
    private zzdmr zzgqs = zzdmr.zzhcr;
    private zzdfx zzgsx;

    private zzdfv() {
    }

    public static final class zza extends zzdob.zza<zzdfv, zza> implements zzdpm {
        private zza() {
            super(zzdfv.zzgsy);
        }

        public final zza zzeg(int i) {
            zzaxw();
            ((zzdfv) this.zzhhh).setVersion(0);
            return this;
        }

        public final zza zzb(zzdfx zzdfxVar) {
            zzaxw();
            ((zzdfv) this.zzhhh).zza(zzdfxVar);
            return this;
        }

        public final zza zzbb(zzdmr zzdmrVar) {
            zzaxw();
            ((zzdfv) this.zzhhh).zzw(zzdmrVar);
            return this;
        }

        /* synthetic */ zza(zzdfw zzdfwVar) {
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

    public final zzdfx zzaqu() {
        zzdfx zzdfxVar = this.zzgsx;
        return zzdfxVar == null ? zzdfx.zzaqy() : zzdfxVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzdfx zzdfxVar) {
        if (zzdfxVar == null) {
            throw new NullPointerException();
        }
        this.zzgsx = zzdfxVar;
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

    public static zzdfv zzba(zzdmr zzdmrVar) throws zzdok {
        return (zzdfv) zzdob.zza(zzgsy, zzdmrVar);
    }

    public static zza zzaqv() {
        return (zza) zzgsy.zza(zzdob.zze.zzhho, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.ads.zzdob
    protected final Object zza(int i, Object obj, Object obj2) {
        zzdfw zzdfwVar = null;
        switch (zzdfw.zzdi[i - 1]) {
            case 1:
                return new zzdfv();
            case 2:
                return new zza(zzdfwVar);
            case 3:
                return zzdob.zza(zzgsy, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzgqk", "zzgsx", "zzgqs"});
            case 4:
                return zzgsy;
            case 5:
                zzdpv<zzdfv> zzbVar = zzdv;
                if (zzbVar == null) {
                    synchronized (zzdfv.class) {
                        zzbVar = zzdv;
                        if (zzbVar == null) {
                            zzbVar = new zzdob.zzb<>(zzgsy);
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
        zzdob.zza((Class<zzdfv>) zzdfv.class, zzgsy);
    }
}
