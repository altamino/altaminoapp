package com.google.android.gms.internal.ads;

import android.os.HandlerThread;
import android.os.Process;

/* loaded from: classes2.dex */
public final class zzko extends HandlerThread {
    private final int priority;

    public zzko(String str, int i) {
        super(str);
        this.priority = -16;
    }

    @Override // android.os.HandlerThread, java.lang.Thread, java.lang.Runnable
    public final void run() throws SecurityException, IllegalArgumentException {
        Process.setThreadPriority(this.priority);
        super.run();
    }
}
