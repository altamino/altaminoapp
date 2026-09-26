package com.bytedance.tea.frameworks.core.encrypt;

import com.bytedance.tea.common.utility.Logger;

/* JADX INFO: loaded from: classes10.dex */
public class TTEncryptUtils {
    private static native byte[] ttEncrypt(byte[] bArr, int i10);

    static {
        try {
            System.loadLibrary("teaEncrypt");
        } catch (UnsatisfiedLinkError e) {
            e.printStackTrace();
        }
    }

    public static byte[] a(byte[] bArr, int i10) {
        try {
            return ttEncrypt(bArr, i10);
        } catch (Throwable th) {
            if (Logger.debug()) {
                th.printStackTrace();
                return null;
            }
            return null;
        }
    }
}
