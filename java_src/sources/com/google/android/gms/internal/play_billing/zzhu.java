package com.google.android.gms.internal.play_billing;

import com.google.firebase.remoteconfig.a;

/* JADX INFO: loaded from: classes10.dex */
public enum zzhu {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf(0.0f)),
    DOUBLE(Double.valueOf(a.DEFAULT_VALUE_FOR_DOUBLE)),
    BOOLEAN(Boolean.FALSE),
    STRING(""),
    BYTE_STRING(zzdw.zzb),
    ENUM(null),
    MESSAGE(null);

    private final Object zzk;

    zzhu(Object obj) {
        this.zzk = obj;
    }
}
