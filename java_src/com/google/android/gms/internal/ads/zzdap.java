package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;

/* loaded from: classes2.dex */
public final class zzdap extends zzdob<zzdap, zzb> implements zzdpm {
    private static volatile zzdpv<zzdap> zzdv;
    private static final zzdoi<Integer, zza> zzgof = new zzdaq();
    private static final zzdap zzgoj = new zzdap();
    private int zzdj;
    private zzdoh zzgoe = zzdob.zzaxr();
    private String zzgog = "";
    private String zzgoh = "";
    private String zzgoi = "";

    public enum zza implements zzdoe {
        BLOCKED_REASON_UNKNOWN(1),
        BLOCKED_REASON_BACKGROUND(2);

        private static final zzdof<zza> zzeg = new zzdas();
        private final int value;

        @Override // com.google.android.gms.internal.ads.zzdoe
        public final int zzac() {
            return this.value;
        }

        public static zza zzds(int i) {
            if (i == 1) {
                return BLOCKED_REASON_UNKNOWN;
            }
            if (i != 2) {
                return null;
            }
            return BLOCKED_REASON_BACKGROUND;
        }

        public static zzdog zzad() {
            return zzdat.zzei;
        }

        zza(int i) {
            this.value = i;
        }
    }

    private zzdap() {
    }

    public static final class zzb extends zzdob.zza<zzdap, zzb> implements zzdpm {
        private zzb() {
            super(zzdap.zzgoj);
        }

        public final zzb zzb(zza zzaVar) {
            zzaxw();
            ((zzdap) this.zzhhh).zza(zzaVar);
            return this;
        }

        public final zzb zzgd(String str) {
            zzaxw();
            ((zzdap) this.zzhhh).zzgc(str);
            return this;
        }

        /* synthetic */ zzb(zzdaq zzdaqVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zza zzaVar) {
        if (zzaVar == null) {
            throw new NullPointerException();
        }
        if (!this.zzgoe.zzavi()) {
            zzdoh zzdohVar = this.zzgoe;
            int size = zzdohVar.size();
            this.zzgoe = zzdohVar.zzfl(size == 0 ? 10 : size << 1);
        }
        this.zzgoe.zzgp(zzaVar.zzac());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzgc(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.zzdj |= 1;
        this.zzgog = str;
    }

    public static zzb zzani() {
        return (zzb) zzgoj.zza(zzdob.zze.zzhho, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.ads.zzdob
    protected final Object zza(int i, Object obj, Object obj2) {
        zzdaq zzdaqVar = null;
        switch (zzdar.zzdi[i - 1]) {
            case 1:
                return new zzdap();
            case 2:
                return new zzb(zzdaqVar);
            case 3:
                return zzdob.zza(zzgoj, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001e\u0002\b\u0000\u0003\b\u0001\u0004\b\u0002", new Object[]{"zzdj", "zzgoe", zza.zzad(), "zzgog", "zzgoh", "zzgoi"});
            case 4:
                return zzgoj;
            case 5:
                zzdpv<zzdap> zzbVar = zzdv;
                if (zzbVar == null) {
                    synchronized (zzdap.class) {
                        zzbVar = zzdv;
                        if (zzbVar == null) {
                            zzbVar = new zzdob.zzb<>(zzgoj);
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
        zzdob.zza((Class<zzdap>) zzdap.class, zzgoj);
    }
}
