package androidx.compose.ui.semantics;

import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class SemanticsModifierKt {
    @NotNull
    public static final Modifier a(@NotNull Modifier modifier, @NotNull l<? super SemanticsPropertyReceiver, l0> properties) {
        t.j(modifier, "<this>");
        t.j(properties, "properties");
        return ComposedModifierKt.c(modifier, InspectableValueKt.c() ? new SemanticsModifierKt$clearAndSetSemantics$$inlined$debugInspectorInfo$1(properties) : InspectableValueKt.a(), new SemanticsModifierKt$clearAndSetSemantics$2(properties));
    }

    @NotNull
    public static final Modifier b(@NotNull Modifier modifier, boolean z6, @NotNull l<? super SemanticsPropertyReceiver, l0> properties) {
        t.j(modifier, "<this>");
        t.j(properties, "properties");
        return ComposedModifierKt.c(modifier, InspectableValueKt.c() ? new SemanticsModifierKt$semantics$$inlined$debugInspectorInfo$1(z6, properties) : InspectableValueKt.a(), new SemanticsModifierKt$semantics$2(z6, properties));
    }

    public static /* synthetic */ Modifier c(Modifier modifier, boolean z6, l lVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z6 = false;
        }
        return b(modifier, z6, lVar);
    }
}
