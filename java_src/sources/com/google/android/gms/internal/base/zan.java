package com.google.android.gms.internal.base;

import android.os.Build;
import androidx.annotation.ChecksSdkIntAtLeast;

/* JADX INFO: loaded from: classes6.dex */
final class zan {
    @ChecksSdkIntAtLeast
    static boolean zaa() {
        return Build.VERSION.SDK_INT >= 33;
    }
}
