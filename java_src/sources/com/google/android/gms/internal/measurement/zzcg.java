package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;

/* JADX INFO: loaded from: classes6.dex */
final class zzcg extends zzcd {
    private zzcg() {
    }

    @Override // com.google.android.gms.internal.measurement.zzcd
    public final URLConnection zza(URL url, String str) throws IOException {
        return url.openConnection();
    }
}
