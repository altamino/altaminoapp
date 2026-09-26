package com.codemonkeylabs.fpslibrary.ui;

import android.os.Build;

/* JADX INFO: loaded from: classes11.dex */
public final class b {
    public static int a() {
        return Build.VERSION.SDK_INT >= 26 ? 2038 : 2002;
    }
}
