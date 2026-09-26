package com.google.firebase.perf.session.gauges;

import android.app.ActivityManager;
import android.content.Context;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.perf.util.n;

/* JADX INFO: loaded from: classes3.dex */
class i {
    private static final y4.a logger = y4.a.e();
    private final ActivityManager activityManager;
    private final Context appContext;
    private final ActivityManager.MemoryInfo memoryInfo;
    private final Runtime runtime;

    i(Context context) {
        this(Runtime.getRuntime(), context);
    }

    @VisibleForTesting
    i(Runtime runtime, Context context) {
        this.runtime = runtime;
        this.appContext = context;
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        this.activityManager = activityManager;
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        this.memoryInfo = memoryInfo;
        activityManager.getMemoryInfo(memoryInfo);
    }

    public int a() {
        return n.c(com.google.firebase.perf.util.k.BYTES.a(this.memoryInfo.totalMem));
    }

    public int b() {
        return n.c(com.google.firebase.perf.util.k.BYTES.a(this.runtime.maxMemory()));
    }

    public int c() {
        return n.c(com.google.firebase.perf.util.k.MEGABYTES.a(this.activityManager.getMemoryClass()));
    }
}
