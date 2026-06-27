package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public enum zzwx implements zzdoe {
    ENUM_FALSE(0),
    ENUM_TRUE(1),
    ENUM_UNKNOWN(1000);

    private static final zzdof<zzwx> zzeg = new zzdof<zzwx>() { // from class: com.google.android.gms.internal.ads.zzwy
    };
    private final int value;

    @Override // com.google.android.gms.internal.ads.zzdoe
    public final int zzac() {
        return this.value;
    }

    public static zzwx zzca(int i) {
        if (i == 0) {
            return ENUM_FALSE;
        }
        if (i == 1) {
            return ENUM_TRUE;
        }
        if (i != 1000) {
            return null;
        }
        return ENUM_UNKNOWN;
    }

    public static zzdog zzad() {
        return zzwz.zzei;
    }

    zzwx(int i) {
        this.value = i;
    }
}
