package kotlinx.coroutines.internal;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class h0 {

    @NotNull
    private static final StackTraceElement ARTIFICIAL_FRAME = new a.a().a();

    @NotNull
    private static final String baseContinuationImplClass = "kotlin.coroutines.jvm.internal.BaseContinuationImpl";
    private static final String baseContinuationImplClassName;

    @NotNull
    private static final String stackTraceRecoveryClass = "kotlinx.coroutines.internal.StackTraceRecoveryKt";
    private static final String stackTraceRecoveryClassName;

    @NotNull
    public static final <E extends Throwable> E a(@NotNull E e) {
        return e;
    }

    static {
        Object objB;
        Object objB2;
        try {
            w7.v.a aVar = w7.v.Companion;
            objB = w7.v.b(kotlin.coroutines.jvm.internal.a.class.getCanonicalName());
        } catch (Throwable th) {
            w7.v.a aVar2 = w7.v.Companion;
            objB = w7.v.b(w7.w.a(th));
        }
        if (w7.v.e(objB) != null) {
            objB = baseContinuationImplClass;
        }
        baseContinuationImplClassName = (String) objB;
        try {
            objB2 = w7.v.b(h0.class.getCanonicalName());
        } catch (Throwable th2) {
            w7.v.a aVar3 = w7.v.Companion;
            objB2 = w7.v.b(w7.w.a(th2));
        }
        if (w7.v.e(objB2) != null) {
            objB2 = stackTraceRecoveryClass;
        }
        stackTraceRecoveryClassName = (String) objB2;
    }
}
