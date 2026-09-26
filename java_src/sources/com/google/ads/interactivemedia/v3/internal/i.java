package com.google.ads.interactivemedia.v3.internal;

import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class i {
    public static /* synthetic */ boolean a(Unsafe unsafe, Object obj, long j6, Object obj2, Object obj3) {
        while (!unsafe.compareAndSwapObject(obj, j6, obj2, obj3)) {
            if (unsafe.getObject(obj, j6) != obj2) {
                return false;
            }
        }
        return true;
    }
}
