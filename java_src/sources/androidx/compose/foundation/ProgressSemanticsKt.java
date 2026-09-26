package androidx.compose.foundation;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import j8.e;
import j8.n;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class ProgressSemanticsKt {
    @Stable
    @NotNull
    public static final Modifier a(@NotNull Modifier modifier) {
        t.j(modifier, "<this>");
        return SemanticsModifierKt.b(modifier, true, ProgressSemanticsKt$progressSemantics$2.INSTANCE);
    }

    @Stable
    @NotNull
    public static final Modifier b(@NotNull Modifier modifier, float f, @NotNull e<Float> valueRange, int i10) {
        t.j(modifier, "<this>");
        t.j(valueRange, "valueRange");
        return SemanticsModifierKt.b(modifier, true, new ProgressSemanticsKt$progressSemantics$1(f, valueRange, i10));
    }

    public static /* synthetic */ Modifier c(Modifier modifier, float f, e eVar, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            eVar = n.b(0.0f, 1.0f);
        }
        if ((i11 & 4) != 0) {
            i10 = 0;
        }
        return b(modifier, f, eVar, i10);
    }
}
