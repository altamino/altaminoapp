package com.google.android.gms.internal.ads;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class zzjo implements zzjp {
    private final byte[] data;
    private int zzape;
    private int zzapf;

    public zzjo(byte[] bArr) {
        zzkh.checkNotNull(bArr);
        zzkh.checkArgument(bArr.length > 0);
        this.data = bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzjp
    public final void close() throws IOException {
    }

    @Override // com.google.android.gms.internal.ads.zzjp
    public final long zza(zzjq zzjqVar) throws IOException {
        long j = zzjqVar.zzahv;
        this.zzape = (int) j;
        long length = zzjqVar.zzcd;
        if (length == -1) {
            length = this.data.length - j;
        }
        this.zzapf = (int) length;
        int i = this.zzapf;
        if (i > 0 && this.zzape + i <= this.data.length) {
            return i;
        }
        int i2 = this.zzape;
        long j2 = zzjqVar.zzcd;
        int length2 = this.data.length;
        StringBuilder sb = new StringBuilder(77);
        sb.append("Unsatisfiable range: [");
        sb.append(i2);
        sb.append(", ");
        sb.append(j2);
        sb.append("], length: ");
        sb.append(length2);
        throw new IOException(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzjp
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.zzapf;
        if (i3 == 0) {
            return -1;
        }
        int iMin = Math.min(i2, i3);
        System.arraycopy(this.data, this.zzape, bArr, i, iMin);
        this.zzape += iMin;
        this.zzapf -= iMin;
        return iMin;
    }
}
