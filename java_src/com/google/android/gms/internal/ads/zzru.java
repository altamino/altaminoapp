package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class zzru implements zzrv {
    private final byte[] data;
    private Uri uri;
    private int zzape;
    private int zzbmc;

    public zzru(byte[] bArr) {
        zzsk.checkNotNull(bArr);
        zzsk.checkArgument(bArr.length > 0);
        this.data = bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzrv
    public final long zza(zzry zzryVar) throws IOException {
        this.uri = zzryVar.uri;
        long j = zzryVar.zzahv;
        this.zzape = (int) j;
        long length = zzryVar.zzcd;
        if (length == -1) {
            length = this.data.length - j;
        }
        this.zzbmc = (int) length;
        int i = this.zzbmc;
        if (i > 0 && this.zzape + i <= this.data.length) {
            return i;
        }
        int i2 = this.zzape;
        long j2 = zzryVar.zzcd;
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

    @Override // com.google.android.gms.internal.ads.zzrv
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.zzbmc;
        if (i3 == 0) {
            return -1;
        }
        int iMin = Math.min(i2, i3);
        System.arraycopy(this.data, this.zzape, bArr, i, iMin);
        this.zzape += iMin;
        this.zzbmc -= iMin;
        return iMin;
    }

    @Override // com.google.android.gms.internal.ads.zzrv
    public final Uri getUri() {
        return this.uri;
    }

    @Override // com.google.android.gms.internal.ads.zzrv
    public final void close() throws IOException {
        this.uri = null;
    }
}
