package org.bouncycastle.util.encoders;

import java.io.ByteArrayOutputStream;

/* JADX INFO: loaded from: classes10.dex */
public class f {
    private static final g encoder = new g();

    public static byte[] a(String str) {
        try {
            return encoder.c(str, 0, str.length());
        } catch (Exception e) {
            throw new c("exception decoding Hex string: " + e.getMessage(), e);
        }
    }

    public static byte[] b(byte[] bArr) {
        return c(bArr, 0, bArr.length);
    }

    public static byte[] c(byte[] bArr, int i10, int i11) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            encoder.b(bArr, i10, i11, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e) {
            throw new e("exception encoding Hex string: " + e.getMessage(), e);
        }
    }
}
