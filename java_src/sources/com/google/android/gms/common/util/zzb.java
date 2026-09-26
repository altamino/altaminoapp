package com.google.android.gms.common.util;

import android.os.Looper;

/* JADX INFO: loaded from: classes10.dex */
public final class zzb {
    public static boolean zza() {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            return true;
        }
        return false;
    }
}
