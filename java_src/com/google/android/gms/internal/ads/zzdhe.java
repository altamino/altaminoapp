package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;

/* loaded from: classes2.dex */
public final class zzdhe extends zzdob<zzdhe, zza> implements zzdpm {
    private static volatile zzdpv<zzdhe> zzdv;
    private static final zzdhe zzgvi = new zzdhe();
    private int zzgqk;
    private zzdhg zzgvh;

    private zzdhe() {
    }

    public static final class zza extends zzdob.zza<zzdhe, zza> implements zzdpm {
        private zza() {
            super(zzdhe.zzgvi);
        }

        public final zza zzex(int i) {
            zzaxw();
            ((zzdhe) this.zzhhh).setVersion(0);
            return this;
        }

        public final zza zzb(zzdhg zzdhgVar) {
            zzaxw();
            ((zzdhe) this.zzhhh).zza(zzdhgVar);
            return this;
        }

        /* synthetic */ zza(zzdhf zzdhfVar) {
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

    public final zzdhg zzasw() {
        zzdhg zzdhgVar = this.zzgvh;
        return zzdhgVar == null ? zzdhg.zzata() : zzdhgVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzdhg zzdhgVar) {
        if (zzdhgVar == null) {
            throw new NullPointerException();
        }
        this.zzgvh = zzdhgVar;
    }

    public static zzdhe zzbp(zzdmr zzdmrVar) throws zzdok {
        return (zzdhe) zzdob.zza(zzgvi, zzdmrVar);
    }

    public static zza zzasx() {
        return (zza) zzgvi.zza(zzdob.zze.zzhho, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.ads.zzdob
    protected final Object zza(int i, Object obj, Object obj2) {
        zzdhf zzdhfVar = null;
        switch (zzdhf.zzdi[i - 1]) {
            case 1:
                return new zzdhe();
            case 2:
                return new zza(zzdhfVar);
            case 3:
                return zzdob.zza(zzgvi, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t", new Object[]{"zzgqk", "zzgvh"});
            case 4:
                return zzgvi;
            case 5:
                zzdpv<zzdhe> zzbVar = zzdv;
                if (zzbVar == null) {
                    synchronized (zzdhe.class) {
                        zzbVar = zzdv;
                        if (zzbVar == null) {
                            zzbVar = new zzdob.zzb<>(zzgvi);
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
        zzdob.zza((Class<zzdhe>) zzdhe.class, zzgvi);
    }
}
