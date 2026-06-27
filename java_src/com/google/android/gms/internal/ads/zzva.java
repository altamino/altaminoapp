package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

@zzard
/* loaded from: classes2.dex */
public abstract class zzva {
    private static MessageDigest zzbvv;
    protected Object mLock = new Object();

    abstract byte[] zzbl(String str);

    protected final MessageDigest zznf() {
        synchronized (this.mLock) {
            if (zzbvv != null) {
                return zzbvv;
            }
            for (int i = 0; i < 2; i++) {
                try {
                    zzbvv = MessageDigest.getInstance("MD5");
                } catch (NoSuchAlgorithmException unused) {
                }
            }
            return zzbvv;
        }
    }
}
