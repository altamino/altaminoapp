package androidx.compose.foundation.layout;

import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class WindowInsetsPadding_androidKt {
    @NotNull
    public static final Modifier a(@NotNull Modifier modifier) {
        t.j(modifier, "<this>");
        return ComposedModifierKt.c(modifier, InspectableValueKt.c() ? new WindowInsetsPadding_androidKt$displayCutoutPadding$$inlined$debugInspectorInfo$1() : InspectableValueKt.a(), new WindowInsetsPadding_androidKt$displayCutoutPadding$$inlined$windowInsetsPadding$1());
    }
}
