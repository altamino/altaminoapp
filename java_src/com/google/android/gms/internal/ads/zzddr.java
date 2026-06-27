package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;

/* loaded from: classes2.dex */
public final class zzddr extends zzdob<zzddr, zza> implements zzdpm {
    private static volatile zzdpv<zzddr> zzdv;
    private static final zzddr zzgqn = new zzddr();
    private int zzgqk;
    private zzdeb zzgql;
    private zzdgl zzgqm;

    private zzddr() {
    }

    public static final class zza extends zzdob.zza<zzddr, zza> implements zzdpm {
        private zza() {
            super(zzddr.zzgqn);
        }

        public final zza zzdu(int i) {
            zzaxw();
            ((zzddr) this.zzhhh).setVersion(i);
            return this;
        }

        public final zza zzb(zzdeb zzdebVar) {
            zzaxw();
            ((zzddr) this.zzhhh).zza(zzdebVar);
            return this;
        }

        public final zza zzb(zzdgl zzdglVar) {
            zzaxw();
            ((zzddr) this.zzhhh).zza(zzdglVar);
            return this;
        }

        /* synthetic */ zza(zzdds zzddsVar) {
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

    public final zzdeb zzaoa() {
        zzdeb zzdebVar = this.zzgql;
        return zzdebVar == null ? zzdeb.zzaou() : zzdebVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzdeb zzdebVar) {
        if (zzdebVar == null) {
            throw new NullPointerException();
        }
        this.zzgql = zzdebVar;
    }

    public final zzdgl zzaob() {
        zzdgl zzdglVar = this.zzgqm;
        return zzdglVar == null ? zzdgl.zzarl() : zzdglVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzdgl zzdglVar) {
        if (zzdglVar == null) {
            throw new NullPointerException();
        }
        this.zzgqm = zzdglVar;
    }

    public static zzddr zzu(zzdmr zzdmrVar) throws zzdok {
        return (zzddr) zzdob.zza(zzgqn, zzdmrVar);
    }

    public static zza zzaoc() {
        return (zza) zzgqn.zza(zzdob.zze.zzhho, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.ads.zzdob
    protected final Object zza(int i, Object obj, Object obj2) {
        zzdds zzddsVar = null;
        switch (zzdds.zzdi[i - 1]) {
            case 1:
                return new zzddr();
            case 2:
                return new zza(zzddsVar);
            case 3:
                return zzdob.zza(zzgqn, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\t", new Object[]{"zzgqk", "zzgql", "zzgqm"});
            case 4:
                return zzgqn;
            case 5:
                zzdpv<zzddr> zzbVar = zzdv;
                if (zzbVar == null) {
                    synchronized (zzddr.class) {
                        zzbVar = zzdv;
                        if (zzbVar == null) {
                            zzbVar = new zzdob.zzb<>(zzgqn);
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
        zzdob.zza((Class<zzddr>) zzddr.class, zzgqn);
    }
}
