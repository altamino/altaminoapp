package com.bumptech.glide.load.engine.executor;

/* JADX INFO: loaded from: classes9.dex */
final class b {
    private static final String CPU_LOCATION = "/sys/devices/system/cpu/";
    private static final String CPU_NAME_REGEX = "cpu[0-9]+";
    private static final String TAG = "GlideRuntimeCompat";

    static int a() {
        return Runtime.getRuntime().availableProcessors();
    }
}
