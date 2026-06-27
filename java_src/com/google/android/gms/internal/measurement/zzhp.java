package com.google.android.gms.internal.measurement;

import java.util.List;

/* loaded from: classes2.dex */
public final class zzhp extends RuntimeException {
    private final List<String> zzako;

    public zzhp(zzgh zzghVar) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
        this.zzako = null;
    }
}
