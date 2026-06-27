package com.google.android.gms.internal.ads;

import java.io.Closeable;
import java.io.IOException;

/* loaded from: classes2.dex */
public class zzbb extends zzdsu implements Closeable {
    private static zzdtc zzcp = zzdtc.zzm(zzbb.class);

    public zzbb(zzdsw zzdswVar, zzba zzbaVar) throws IOException {
        zza(zzdswVar, zzdswVar.size(), zzbaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdsu, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.zzhtn.close();
    }

    @Override // com.google.android.gms.internal.ads.zzdsu
    public String toString() {
        String string = this.zzhtn.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(string).length() + 7);
        sb.append("model(");
        sb.append(string);
        sb.append(")");
        return sb.toString();
    }
}
