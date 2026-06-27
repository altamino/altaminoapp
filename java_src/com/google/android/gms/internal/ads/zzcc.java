package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public enum zzcc implements zzdoe {
    UNKNOWN_PROTO(0),
    AFMA_SIGNALS(1),
    UNITY_SIGNALS(2),
    PARTNER_SIGNALS(3);

    private static final zzdof<zzcc> zzeg = new zzdof<zzcc>() { // from class: com.google.android.gms.internal.ads.zzcd
    };
    private final int value;

    @Override // com.google.android.gms.internal.ads.zzdoe
    public final int zzac() {
        return this.value;
    }

    public static zzcc zzk(int i) {
        if (i == 0) {
            return UNKNOWN_PROTO;
        }
        if (i == 1) {
            return AFMA_SIGNALS;
        }
        if (i == 2) {
            return UNITY_SIGNALS;
        }
        if (i != 3) {
            return null;
        }
        return PARTNER_SIGNALS;
    }

    public static zzdog zzad() {
        return zzce.zzei;
    }

    zzcc(int i) {
        this.value = i;
    }
}
