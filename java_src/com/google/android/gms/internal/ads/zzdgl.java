package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;

/* loaded from: classes2.dex */
public final class zzdgl extends zzdob<zzdgl, zza> implements zzdpm {
    private static volatile zzdpv<zzdgl> zzdv;
    private static final zzdgl zzgtu = new zzdgl();
    private int zzgqk;
    private zzdmr zzgqs = zzdmr.zzhcr;
    private zzdgp zzgtt;

    private zzdgl() {
    }

    public static final class zza extends zzdob.zza<zzdgl, zza> implements zzdpm {
        private zza() {
            super(zzdgl.zzgtu);
        }

        public final zza zzem(int i) {
            zzaxw();
            ((zzdgl) this.zzhhh).setVersion(0);
            return this;
        }

        public final zza zzc(zzdgp zzdgpVar) {
            zzaxw();
            ((zzdgl) this.zzhhh).zzb(zzdgpVar);
            return this;
        }

        public final zza zzbl(zzdmr zzdmrVar) {
            zzaxw();
            ((zzdgl) this.zzhhh).zzw(zzdmrVar);
            return this;
        }

        /* synthetic */ zza(zzdgm zzdgmVar) {
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

    public final zzdgp zzarj() {
        zzdgp zzdgpVar = this.zzgtt;
        return zzdgpVar == null ? zzdgp.zzarr() : zzdgpVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzb(zzdgp zzdgpVar) {
        if (zzdgpVar == null) {
            throw new NullPointerException();
        }
        this.zzgtt = zzdgpVar;
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

    public static zzdgl zzbk(zzdmr zzdmrVar) throws zzdok {
        return (zzdgl) zzdob.zza(zzgtu, zzdmrVar);
    }

    public static zza zzark() {
        return (zza) zzgtu.zza(zzdob.zze.zzhho, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.ads.zzdob
    protected final Object zza(int i, Object obj, Object obj2) {
        zzdgm zzdgmVar = null;
        switch (zzdgm.zzdi[i - 1]) {
            case 1:
                return new zzdgl();
            case 2:
                return new zza(zzdgmVar);
            case 3:
                return zzdob.zza(zzgtu, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzgqk", "zzgtt", "zzgqs"});
            case 4:
                return zzgtu;
            case 5:
                zzdpv<zzdgl> zzbVar = zzdv;
                if (zzbVar == null) {
                    synchronized (zzdgl.class) {
                        zzbVar = zzdv;
                        if (zzbVar == null) {
                            zzbVar = new zzdob.zzb<>(zzgtu);
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

    public static zzdgl zzarl() {
        return zzgtu;
    }

    static {
        zzdob.zza((Class<zzdgl>) zzdgl.class, zzgtu);
    }
}
