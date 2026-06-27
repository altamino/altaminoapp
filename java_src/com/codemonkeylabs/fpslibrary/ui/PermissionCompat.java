package com.codemonkeylabs.fpslibrary.ui;

import android.os.Build;

/* loaded from: classes.dex */
public final class PermissionCompat {
    public static int getFlag() {
        return Build.VERSION.SDK_INT >= 26 ? 2038 : 2002;
    }
}
