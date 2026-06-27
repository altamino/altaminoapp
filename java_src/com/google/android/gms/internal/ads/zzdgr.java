package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;

/* loaded from: classes2.dex */
public final class zzdgr extends zzdob<zzdgr, zza> implements zzdpm {
    private static volatile zzdpv<zzdgr> zzdv;
    private static final zzdgr zzguc = new zzdgr();
    private String zzgtz = "";
    private zzdmr zzgua = zzdmr.zzhcr;
    private int zzgub;

    public enum zzb implements zzdoe {
        UNKNOWN_KEYMATERIAL(0),
        SYMMETRIC(1),
        ASYMMETRIC_PRIVATE(2),
        ASYMMETRIC_PUBLIC(3),
        REMOTE(4),
        UNRECOGNIZED(-1);

        private static final zzdof<zzb> zzeg = new zzdgt();
        private final int value;

        @Override // com.google.android.gms.internal.ads.zzdoe
        public final int zzac() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }

        public static zzb zzen(int i) {
            if (i == 0) {
                return UNKNOWN_KEYMATERIAL;
            }
            if (i == 1) {
                return SYMMETRIC;
            }
            if (i == 2) {
                return ASYMMETRIC_PRIVATE;
            }
            if (i == 3) {
                return ASYMMETRIC_PUBLIC;
            }
            if (i != 4) {
                return null;
            }
            return REMOTE;
        }

        zzb(int i) {
            this.value = i;
        }
    }

    private zzdgr() {
    }

    public static final class zza extends zzdob.zza<zzdgr, zza> implements zzdpm {
        private zza() {
            super(zzdgr.zzguc);
        }

        public final zza zzgk(String str) {
            zzaxw();
            ((zzdgr) this.zzhhh).zzgj(str);
            return this;
        }

        public final zza zzbo(zzdmr zzdmrVar) {
            zzaxw();
            ((zzdgr) this.zzhhh).zzbn(zzdmrVar);
            return this;
        }

        public final zza zzb(zzb zzbVar) {
            zzaxw();
            ((zzdgr) this.zzhhh).zza(zzbVar);
            return this;
        }

        /* synthetic */ zza(zzdgs zzdgsVar) {
            this();
        }
    }

    public final String zzart() {
        return this.zzgtz;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzgj(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.zzgtz = str;
    }

    public final zzdmr zzaru() {
        return this.zzgua;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzbn(zzdmr zzdmrVar) {
        if (zzdmrVar == null) {
            throw new NullPointerException();
        }
        this.zzgua = zzdmrVar;
    }

    public final zzb zzarv() {
        zzb zzbVarZzen = zzb.zzen(this.zzgub);
        return zzbVarZzen == null ? zzb.UNRECOGNIZED : zzbVarZzen;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzb zzbVar) {
        if (zzbVar == null) {
            throw new NullPointerException();
        }
        this.zzgub = zzbVar.zzac();
    }

    public static zza zzarw() {
        return (zza) zzguc.zza(zzdob.zze.zzhho, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.ads.zzdob
    protected final Object zza(int i, Object obj, Object obj2) {
        zzdgs zzdgsVar = null;
        switch (zzdgs.zzdi[i - 1]) {
            case 1:
                return new zzdgr();
            case 2:
                return new zza(zzdgsVar);
            case 3:
                return zzdob.zza(zzguc, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzgtz", "zzgua", "zzgub"});
            case 4:
                return zzguc;
            case 5:
                zzdpv<zzdgr> zzbVar = zzdv;
                if (zzbVar == null) {
                    synchronized (zzdgr.class) {
                        zzbVar = zzdv;
                        if (zzbVar == null) {
                            zzbVar = new zzdob.zzb<>(zzguc);
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

    public static zzdgr zzarx() {
        return zzguc;
    }

    static {
        zzdob.zza((Class<zzdgr>) zzdgr.class, zzguc);
    }
}
