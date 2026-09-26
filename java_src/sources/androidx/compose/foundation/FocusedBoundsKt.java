package androidx.compose.foundation;

import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.modifier.ModifierLocalKt;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import androidx.compose.ui.platform.InspectableValueKt;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class FocusedBoundsKt {

    @NotNull
    private static final ProvidableModifierLocal<l<LayoutCoordinates, l0>> ModifierLocalFocusedBoundsObserver = ModifierLocalKt.a(FocusedBoundsKt$ModifierLocalFocusedBoundsObserver$1.INSTANCE);

    @NotNull
    public static final ProvidableModifierLocal<l<LayoutCoordinates, l0>> a() {
        return ModifierLocalFocusedBoundsObserver;
    }

    @ExperimentalFoundationApi
    @NotNull
    public static final Modifier b(@NotNull Modifier modifier, @NotNull l<? super LayoutCoordinates, l0> onPositioned) {
        t.j(modifier, "<this>");
        t.j(onPositioned, "onPositioned");
        return ComposedModifierKt.c(modifier, InspectableValueKt.c() ? new FocusedBoundsKt$onFocusedBoundsChanged$$inlined$debugInspectorInfo$1(onPositioned) : InspectableValueKt.a(), new FocusedBoundsKt$onFocusedBoundsChanged$2(onPositioned));
    }
}
