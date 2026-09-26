package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public final class zzlx extends RuntimeException {
    private final List<String> zza;

    public zzlx(zzkj zzkjVar) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
        this.zza = null;
    }
}
