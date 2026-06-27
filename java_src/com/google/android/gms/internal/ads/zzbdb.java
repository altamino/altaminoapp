package com.google.android.gms.internal.ads;

import android.os.Looper;

/* loaded from: classes2.dex */
final class zzbdb implements Runnable {
    zzbdb(zzbda zzbdaVar) {
    }

    @Override // java.lang.Runnable
    public final void run() {
        Looper.myLooper().quit();
    }
}
