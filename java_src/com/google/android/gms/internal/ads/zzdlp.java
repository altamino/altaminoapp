package com.google.android.gms.internal.ads;

import java.security.SecureRandom;

/* loaded from: classes2.dex */
final class zzdlp extends ThreadLocal<SecureRandom> {
    zzdlp() {
    }

    @Override // java.lang.ThreadLocal
    protected final /* synthetic */ SecureRandom initialValue() {
        return zzdlo.zzavb();
    }
}
