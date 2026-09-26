package com.google.android.gms.internal.measurement;

import com.google.firebase.remoteconfig.a;

/* JADX INFO: loaded from: classes7.dex */
public enum zzmx {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf(0.0f)),
    DOUBLE(Double.valueOf(a.DEFAULT_VALUE_FOR_DOUBLE)),
    BOOLEAN(Boolean.FALSE),
    STRING(""),
    BYTE_STRING(zzhm.zza),
    ENUM(null),
    MESSAGE(null);

    private final Object zzk;

    zzmx(Object obj) {
        this.zzk = obj;
    }
}
