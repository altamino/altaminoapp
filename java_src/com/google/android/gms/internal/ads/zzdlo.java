package com.google.android.gms.internal.ads;

import java.security.SecureRandom;

/* loaded from: classes2.dex */
public final class zzdlo {
    private static final ThreadLocal<SecureRandom> zzhbl = new zzdlp();

    /* JADX INFO: Access modifiers changed from: private */
    public static SecureRandom zzavb() {
        SecureRandom secureRandom = new SecureRandom();
        secureRandom.nextLong();
        return secureRandom;
    }

    public static byte[] zzff(int i) {
        byte[] bArr = new byte[i];
        zzhbl.get().nextBytes(bArr);
        return bArr;
    }
}
