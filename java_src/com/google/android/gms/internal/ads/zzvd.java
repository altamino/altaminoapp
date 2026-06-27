package com.google.android.gms.internal.ads;

import android.util.Base64OutputStream;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

@VisibleForTesting
/* loaded from: classes2.dex */
final class zzvd {

    @VisibleForTesting
    private ByteArrayOutputStream zzbwa = new ByteArrayOutputStream(4096);

    @VisibleForTesting
    private Base64OutputStream zzbwb = new Base64OutputStream(this.zzbwa, 10);

    public final void write(byte[] bArr) throws IOException {
        this.zzbwb.write(bArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String toString() throws IOException {
        try {
            this.zzbwb.close();
        } catch (IOException e) {
            zzbad.zzc("HashManager: Unable to convert to Base64.", e);
        }
        try {
            this.zzbwa.close();
            return this.zzbwa.toString();
        } catch (IOException e2) {
            zzbad.zzc("HashManager: Unable to convert to Base64.", e2);
            return "";
        } finally {
            this.zzbwa = null;
            this.zzbwb = null;
        }
    }
}
