package androidx.compose.foundation;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.lazy.layout.PinnableParent;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusModifierKt;
import androidx.compose.ui.focus.FocusPropertiesKt;
import androidx.compose.ui.platform.InspectableModifier;
import androidx.compose.ui.platform.InspectableValueKt;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class FocusableKt {

    @NotNull
    private static final InspectableModifier focusGroupInspectorInfo;

    static {
        focusGroupInspectorInfo = new InspectableModifier(InspectableValueKt.c() ? new FocusableKt$special$$inlined$debugInspectorInfo$1() : InspectableValueKt.a());
    }

    @ExperimentalFoundationApi
    @NotNull
    public static final Modifier b(@NotNull Modifier modifier) {
        t.j(modifier, "<this>");
        return FocusModifierKt.a(FocusPropertiesKt.b(modifier.B(focusGroupInspectorInfo), FocusableKt$focusGroup$1.INSTANCE));
    }

    @NotNull
    public static final Modifier c(@NotNull Modifier modifier, boolean z6, @Nullable MutableInteractionSource mutableInteractionSource) {
        t.j(modifier, "<this>");
        return ComposedModifierKt.c(modifier, InspectableValueKt.c() ? new FocusableKt$focusable$$inlined$debugInspectorInfo$1(z6, mutableInteractionSource) : InspectableValueKt.a(), new FocusableKt$focusable$2(mutableInteractionSource, z6));
    }

    public static /* synthetic */ Modifier d(Modifier modifier, boolean z6, MutableInteractionSource mutableInteractionSource, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z6 = true;
        }
        if ((i10 & 2) != 0) {
            mutableInteractionSource = null;
        }
        return c(modifier, z6, mutableInteractionSource);
    }

    @NotNull
    public static final Modifier e(@NotNull Modifier modifier, boolean z6, @Nullable MutableInteractionSource mutableInteractionSource) {
        t.j(modifier, "<this>");
        return ComposedModifierKt.c(modifier, InspectableValueKt.c() ? new FocusableKt$focusableInNonTouchMode$$inlined$debugInspectorInfo$1(z6, mutableInteractionSource) : InspectableValueKt.a(), new FocusableKt$focusableInNonTouchMode$2(z6, mutableInteractionSource));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Stable
    @ExperimentalFoundationApi
    public static final Modifier f(Modifier modifier, l<? super PinnableParent, l0> lVar) {
        l lVarA;
        if (InspectableValueKt.c()) {
            lVarA = new FocusableKt$onPinnableParentAvailable$$inlined$debugInspectorInfo$1(lVar);
        } else {
            lVarA = InspectableValueKt.a();
        }
        return InspectableValueKt.b(modifier, lVarA, Modifier.Companion.B(new PinnableParentConsumer(lVar)));
    }
}
