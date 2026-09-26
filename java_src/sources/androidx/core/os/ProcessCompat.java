package androidx.core.os;

import androidx.annotation.RequiresApi;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes5.dex */
public final class ProcessCompat {

    @RequiresApi
    static class Api16Impl {
        private static Method sMethodUserIdIsAppMethod;
        private static boolean sResolved;
        private static final Object sResolvedLock = new Object();

        private Api16Impl() {
        }
    }

    @RequiresApi
    static class Api17Impl {
        private static Method sMethodUserHandleIsAppMethod;
        private static boolean sResolved;
        private static final Object sResolvedLock = new Object();

        private Api17Impl() {
        }
    }

    @RequiresApi
    static class Api24Impl {
        private Api24Impl() {
        }
    }

    private ProcessCompat() {
    }
}
