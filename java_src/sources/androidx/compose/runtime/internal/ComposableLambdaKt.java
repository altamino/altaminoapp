package androidx.compose.runtime.internal;

import androidx.compose.runtime.ComposeCompilerApi;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScope;
import androidx.compose.runtime.RecomposeScopeImpl;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class ComposableLambdaKt {
    private static final int BITS_PER_SLOT = 3;
    private static final int SLOTS_PER_INT = 10;

    public static final int d(int i10) {
        return a(2, i10);
    }

    public static final int f(int i10) {
        return a(1, i10);
    }

    public static final int a(int i10, int i11) {
        return i10 << (((i11 % 10) * 3) + 1);
    }

    @ComposeCompilerApi
    @NotNull
    public static final ComposableLambda b(@NotNull Composer composer, int i10, boolean z6, @NotNull Object block) {
        ComposableLambdaImpl composableLambdaImpl;
        t.j(composer, "composer");
        t.j(block, "block");
        composer.G(i10);
        Object objH = composer.H();
        if (objH == Composer.Companion.a()) {
            composableLambdaImpl = new ComposableLambdaImpl(i10, z6);
            composer.z(composableLambdaImpl);
        } else {
            if (objH == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.compose.runtime.internal.ComposableLambdaImpl");
            }
            composableLambdaImpl = (ComposableLambdaImpl) objH;
        }
        composableLambdaImpl.y(block);
        composer.Q();
        return composableLambdaImpl;
    }

    @ComposeCompilerApi
    @NotNull
    public static final ComposableLambda c(int i10, boolean z6, @NotNull Object block) {
        t.j(block, "block");
        ComposableLambdaImpl composableLambdaImpl = new ComposableLambdaImpl(i10, z6);
        composableLambdaImpl.y(block);
        return composableLambdaImpl;
    }

    public static final boolean e(@Nullable RecomposeScope recomposeScope, @NotNull RecomposeScope other) {
        t.j(other, "other");
        if (recomposeScope != null) {
            if ((recomposeScope instanceof RecomposeScopeImpl) && (other instanceof RecomposeScopeImpl)) {
                RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) recomposeScope;
                if (!recomposeScopeImpl.s() || t.e(recomposeScope, other) || t.e(recomposeScopeImpl.j(), ((RecomposeScopeImpl) other).j())) {
                }
            }
            return false;
        }
        return true;
    }
}
