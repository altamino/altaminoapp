package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdap;
import com.google.android.gms.internal.ads.zzdob;

/* loaded from: classes2.dex */
public final class zzdau extends zzdob<zzdau, zza> implements zzdpm {
    private static volatile zzdpv<zzdau> zzdv;
    private static final zzdau zzgoq = new zzdau();
    private int zzdj;
    private int zzgon;
    private zzdap zzgop;
    private String zzdk = "";
    private String zzgoo = "";

    public enum zzb implements zzdoe {
        EVENT_TYPE_UNKNOWN(0),
        BLOCKED_IMPRESSION(1);

        private static final zzdof<zzb> zzeg = new zzdaw();
        private final int value;

        @Override // com.google.android.gms.internal.ads.zzdoe
        public final int zzac() {
            return this.value;
        }

        public static zzb zzdt(int i) {
            if (i == 0) {
                return EVENT_TYPE_UNKNOWN;
            }
            if (i != 1) {
                return null;
            }
            return BLOCKED_IMPRESSION;
        }

        public static zzdog zzad() {
            return zzdax.zzei;
        }

        zzb(int i) {
            this.value = i;
        }
    }

    private zzdau() {
    }

    public static final class zza extends zzdob.zza<zzdau, zza> implements zzdpm {
        private zza() {
            super(zzdau.zzgoq);
        }

        public final zza zzb(zzb zzbVar) {
            zzaxw();
            ((zzdau) this.zzhhh).zza(zzbVar);
            return this;
        }

        public final zza zzge(String str) {
            zzaxw();
            ((zzdau) this.zzhhh).zzi(str);
            return this;
        }

        public final zza zzb(zzdap.zzb zzbVar) {
            zzaxw();
            ((zzdau) this.zzhhh).zza(zzbVar);
            return this;
        }

        /* synthetic */ zza(zzdav zzdavVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzb zzbVar) {
        if (zzbVar == null) {
            throw new NullPointerException();
        }
        this.zzdj |= 1;
        this.zzgon = zzbVar.zzac();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzi(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.zzdj |= 2;
        this.zzdk = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzdap.zzb zzbVar) {
        this.zzgop = (zzdap) zzbVar.zzaya();
        this.zzdj |= 8;
    }

    public static zza zzank() {
        return (zza) zzgoq.zza(zzdob.zze.zzhho, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.ads.zzdob
    protected final Object zza(int i, Object obj, Object obj2) {
        zzdav zzdavVar = null;
        switch (zzdav.zzdi[i - 1]) {
            case 1:
                return new zzdau();
            case 2:
                return new zza(zzdavVar);
            case 3:
                return zzdob.zza(zzgoq, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\f\u0000\u0002\b\u0001\u0003\b\u0002\u0004\t\u0003", new Object[]{"zzdj", "zzgon", zzb.zzad(), "zzdk", "zzgoo", "zzgop"});
            case 4:
                return zzgoq;
            case 5:
                zzdpv<zzdau> zzbVar = zzdv;
                if (zzbVar == null) {
                    synchronized (zzdau.class) {
                        zzbVar = zzdv;
                        if (zzbVar == null) {
                            zzbVar = new zzdob.zzb<>(zzgoq);
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
        zzdob.zza((Class<zzdau>) zzdau.class, zzgoq);
    }
}
