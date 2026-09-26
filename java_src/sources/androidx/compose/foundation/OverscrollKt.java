package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class OverscrollKt {
    @ExperimentalFoundationApi
    @NotNull
    public static final Modifier a(@NotNull Modifier modifier, @NotNull OverscrollEffect overscrollEffect) {
        t.j(modifier, "<this>");
        t.j(overscrollEffect, "overscrollEffect");
        return modifier.B(overscrollEffect.c());
    }
}
