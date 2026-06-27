package kotlin.concurrent;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Thread.kt */
/* loaded from: classes4.dex */
public final class ThreadsKt {
    public static final Thread thread(boolean z, boolean z2, ClassLoader classLoader, String str, int i, final Function0<Unit> block) {
        Intrinsics.checkParameterIsNotNull(block, "block");
        Thread thread = new Thread() { // from class: kotlin.concurrent.ThreadsKt$thread$thread$1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                block.invoke();
            }
        };
        if (z2) {
            thread.setDaemon(true);
        }
        if (i > 0) {
            thread.setPriority(i);
        }
        if (str != null) {
            thread.setName(str);
        }
        if (classLoader != null) {
            thread.setContextClassLoader(classLoader);
        }
        if (z) {
            thread.start();
        }
        return thread;
    }
}
