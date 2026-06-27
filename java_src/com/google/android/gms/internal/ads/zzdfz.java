package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;

/* loaded from: classes2.dex */
public final class zzdfz extends zzdob<zzdfz, zza> implements zzdpm {
    private static volatile zzdpv<zzdfz> zzdv;
    private static final zzdfz zzgtc = new zzdfz();
    private int zzgqy;
    private int zzgta;
    private zzdmr zzgtb = zzdmr.zzhcr;

    private zzdfz() {
    }

    public static final class zza extends zzdob.zza<zzdfz, zza> implements zzdpm {
        private zza() {
            super(zzdfz.zzgtc);
        }

        /* synthetic */ zza(zzdga zzdgaVar) {
            this();
        }
    }

    public final zzdgf zzara() {
        zzdgf zzdgfVarZzek = zzdgf.zzek(this.zzgta);
        return zzdgfVarZzek == null ? zzdgf.UNRECOGNIZED : zzdgfVarZzek;
    }

    public final zzdgj zzaoo() {
        zzdgj zzdgjVarZzel = zzdgj.zzel(this.zzgqy);
        return zzdgjVarZzel == null ? zzdgj.UNRECOGNIZED : zzdgjVarZzel;
    }

    public final zzdmr zzarb() {
        return this.zzgtb;
    }

    @Override // com.google.android.gms.internal.ads.zzdob
    protected final Object zza(int i, Object obj, Object obj2) {
        zzdga zzdgaVar = null;
        switch (zzdga.zzdi[i - 1]) {
            case 1:
                return new zzdfz();
            case 2:
                return new zza(zzdgaVar);
            case 3:
                return zzdob.zza(zzgtc, "\u0000\u0003\u0000\u0000\u0001\u000b\u0003\u0000\u0000\u0000\u0001\f\u0002\f\u000b\n", new Object[]{"zzgta", "zzgqy", "zzgtb"});
            case 4:
                return zzgtc;
            case 5:
                zzdpv<zzdfz> zzbVar = zzdv;
                if (zzbVar == null) {
                    synchronized (zzdfz.class) {
                        zzbVar = zzdv;
                        if (zzbVar == null) {
                            zzbVar = new zzdob.zzb<>(zzgtc);
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

    public static zzdfz zzarc() {
        return zzgtc;
    }

    static {
        zzdob.zza((Class<zzdfz>) zzdfz.class, zzgtc);
    }
}
