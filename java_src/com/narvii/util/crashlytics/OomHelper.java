package com.narvii.util.crashlytics;

import com.narvii.util.log.Logger;

/* loaded from: classes.dex */
public class OomHelper {
    public static int oomCount;

    public static void test(Throwable th) {
        if (isOutOfMemory(th)) {
            oomCount++;
        }
    }

    public static boolean isOutOfMemory(Throwable th) {
        Throwable cause = th;
        for (int i = 0; i < 8 && cause != null; i++) {
            if (cause instanceof OutOfMemoryError) {
                return true;
            }
            cause = cause.getCause();
        }
        return false;
    }

    /* loaded from: classes3.dex */
    public static class OomCountLogger implements Logger {
        @Override // com.narvii.util.log.Logger
        public void log(int i, String str, String str2, Throwable th) {
            OomHelper.test(th);
        }
    }
}
