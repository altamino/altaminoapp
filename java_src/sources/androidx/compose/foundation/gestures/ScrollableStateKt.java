package androidx.compose.foundation.gestures;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class ScrollableStateKt {
    @NotNull
    public static final ScrollableState a(@NotNull l<? super Float, Float> consumeScrollDelta) {
        t.j(consumeScrollDelta, "consumeScrollDelta");
        return new DefaultScrollableState(consumeScrollDelta);
    }

    @Composable
    @NotNull
    public static final ScrollableState b(@NotNull l<? super Float, Float> consumeScrollDelta, @Nullable Composer composer, int i10) {
        t.j(consumeScrollDelta, "consumeScrollDelta");
        composer.G(-180460798);
        State stateN = SnapshotStateKt.n(consumeScrollDelta, composer, i10 & 14);
        composer.G(-492369756);
        Object objH = composer.H();
        if (objH == Composer.Companion.a()) {
            objH = a(new ScrollableStateKt$rememberScrollableState$1$1(stateN));
            composer.z(objH);
        }
        composer.Q();
        ScrollableState scrollableState = (ScrollableState) objH;
        composer.Q();
        return scrollableState;
    }
}
