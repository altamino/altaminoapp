package androidx.compose.foundation.text;

import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.text.TextStyle;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class MaxLinesHeightModifierKt {
    @NotNull
    public static final Modifier a(@NotNull Modifier modifier, int i10, @NotNull TextStyle textStyle) {
        t.j(modifier, "<this>");
        t.j(textStyle, "textStyle");
        return ComposedModifierKt.c(modifier, InspectableValueKt.c() ? new MaxLinesHeightModifierKt$maxLinesHeight$$inlined$debugInspectorInfo$1(i10, textStyle) : InspectableValueKt.a(), new MaxLinesHeightModifierKt$maxLinesHeight$2(i10, textStyle));
    }
}
