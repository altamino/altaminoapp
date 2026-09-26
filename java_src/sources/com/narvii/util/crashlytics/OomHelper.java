package com.narvii.util.crashlytics;

import com.narvii.util.log.Logger;

/* JADX INFO: loaded from: classes8.dex */
public class OomHelper {
    public static int oomCount;

    public static boolean isOutOfMemory(Throwable th) {
        for (int i10 = 0; i10 < 8 && th != null; i10++) {
            if (th instanceof OutOfMemoryError) {
                return true;
            }
            th = th.getCause();
        }
        return false;
    }

    public static class OomCountLogger implements Logger {
        @Override // com.narvii.util.log.Logger
        public void log(int i10, String str, String str2, Throwable th) {
            OomHelper.test(th);
        }
    }

    public static void test(Throwable th) {
        if (isOutOfMemory(th)) {
            oomCount++;
        }
    }
}
