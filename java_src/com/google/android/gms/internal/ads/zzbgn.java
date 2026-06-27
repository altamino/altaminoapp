package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@zzard
/* loaded from: classes2.dex */
final class zzbgn {
    private final ArrayList<zzsa> zzeir = new ArrayList<>();
    private long zzeis;

    zzbgn() {
    }

    final long zzzz() throws NumberFormatException {
        Iterator<zzsa> it = this.zzeir.iterator();
        while (it.hasNext()) {
            Map<String, List<String>> responseHeaders = it.next().getResponseHeaders();
            if (responseHeaders != null) {
                for (Map.Entry<String, List<String>> entry : responseHeaders.entrySet()) {
                    try {
                        if ("content-length".equalsIgnoreCase(entry.getKey())) {
                            this.zzeis = Math.max(this.zzeis, Long.parseLong(entry.getValue().get(0)));
                        }
                    } catch (RuntimeException unused) {
                    }
                }
                it.remove();
            }
        }
        return this.zzeis;
    }

    final void zza(zzsa zzsaVar) {
        this.zzeir.add(zzsaVar);
    }
}
