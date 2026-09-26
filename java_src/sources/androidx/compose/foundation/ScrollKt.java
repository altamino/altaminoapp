package androidx.compose.foundation;

import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class ScrollKt {
    @NotNull
    public static final Modifier a(@NotNull Modifier modifier, @NotNull ScrollState state, boolean z6, @Nullable FlingBehavior flingBehavior, boolean z10) {
        t.j(modifier, "<this>");
        t.j(state, "state");
        return d(modifier, state, z10, flingBehavior, z6, false);
    }

    public static /* synthetic */ Modifier b(Modifier modifier, ScrollState scrollState, boolean z6, FlingBehavior flingBehavior, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z6 = true;
        }
        if ((i10 & 4) != 0) {
            flingBehavior = null;
        }
        if ((i10 & 8) != 0) {
            z10 = false;
        }
        return a(modifier, scrollState, z6, flingBehavior, z10);
    }

    @NotNull
    public static final Modifier e(@NotNull Modifier modifier, @NotNull ScrollState state, boolean z6, @Nullable FlingBehavior flingBehavior, boolean z10) {
        t.j(modifier, "<this>");
        t.j(state, "state");
        return d(modifier, state, z10, flingBehavior, z6, true);
    }

    public static /* synthetic */ Modifier f(Modifier modifier, ScrollState scrollState, boolean z6, FlingBehavior flingBehavior, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z6 = true;
        }
        if ((i10 & 4) != 0) {
            flingBehavior = null;
        }
        if ((i10 & 8) != 0) {
            z10 = false;
        }
        return e(modifier, scrollState, z6, flingBehavior, z10);
    }

    @Composable
    @NotNull
    public static final ScrollState c(int i10, @Nullable Composer composer, int i11, int i12) {
        composer.G(-1464256199);
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        ScrollState scrollState = (ScrollState) RememberSaveableKt.b(new Object[0], ScrollState.Companion.a(), null, new ScrollKt$rememberScrollState$1(i10), composer, 72, 4);
        composer.Q();
        return scrollState;
    }

    private static final Modifier d(Modifier modifier, ScrollState scrollState, boolean z6, FlingBehavior flingBehavior, boolean z10, boolean z11) {
        l lVarA;
        if (InspectableValueKt.c()) {
            lVarA = new ScrollKt$scroll$$inlined$debugInspectorInfo$1(scrollState, z6, flingBehavior, z10, z11);
        } else {
            lVarA = InspectableValueKt.a();
        }
        return ComposedModifierKt.c(modifier, lVarA, new ScrollKt$scroll$2(z11, scrollState, z10, flingBehavior, z6));
    }
}
