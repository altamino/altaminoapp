package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public enum zzbw implements zzdoe {
    UNKNOWN_ENCRYPTION_METHOD(0),
    BITSLICER(1),
    TINK_HYBRID(2),
    UNENCRYPTED(3);

    private static final zzdof<zzbw> zzeg = new zzdof<zzbw>() { // from class: com.google.android.gms.internal.ads.zzbx
    };
    private final int value;

    @Override // com.google.android.gms.internal.ads.zzdoe
    public final int zzac() {
        return this.value;
    }

    public static zzbw zzi(int i) {
        if (i == 0) {
            return UNKNOWN_ENCRYPTION_METHOD;
        }
        if (i == 1) {
            return BITSLICER;
        }
        if (i == 2) {
            return TINK_HYBRID;
        }
        if (i != 3) {
            return null;
        }
        return UNENCRYPTED;
    }

    public static zzdog zzad() {
        return zzby.zzei;
    }

    zzbw(int i) {
        this.value = i;
    }
}
