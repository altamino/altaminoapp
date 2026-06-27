package kotlin;

import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LazyJVM.kt */
/* loaded from: classes4.dex */
public class LazyKt__LazyJVMKt {
    public static <T> Lazy<T> lazy(Function0<? extends T> initializer) {
        Intrinsics.checkParameterIsNotNull(initializer, "initializer");
        return new SynchronizedLazyImpl(initializer, null, 2, null);
    }

    public static <T> Lazy<T> lazy(LazyThreadSafetyMode mode, Function0<? extends T> initializer) {
        Intrinsics.checkParameterIsNotNull(mode, "mode");
        Intrinsics.checkParameterIsNotNull(initializer, "initializer");
        int i = LazyKt.WhenMappings.$EnumSwitchMapping$0[mode.ordinal()];
        if (i == 1) {
            return new SynchronizedLazyImpl(initializer, null, 2, null);
        }
        if (i == 2) {
            return new SafePublicationLazyImpl(initializer);
        }
        if (i == 3) {
            return new UnsafeLazyImpl(initializer);
        }
        throw new NoWhenBranchMatchedException();
    }
}
