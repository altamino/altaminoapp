package androidx.compose.ui.input.pointer;

import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import e8.p;
import kotlin.collections.v;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public final class SuspendingPointerInputFilterKt {

    @NotNull
    private static final PointerEvent EmptyPointerEvent = new PointerEvent(v.m());

    @NotNull
    private static final String PointerInputModifierNoParamError = "Modifier.pointerInput must provide one or more 'key' parameters that define the identity of the modifier and determine when its previous input processing coroutine should be cancelled and a new effect launched for the new key.";

    @NotNull
    public static final Modifier b(@NotNull Modifier modifier, @Nullable Object obj, @NotNull p<? super PointerInputScope, ? super kotlin.coroutines.d<? super l0>, ? extends Object> block) {
        t.j(modifier, "<this>");
        t.j(block, "block");
        return ComposedModifierKt.c(modifier, InspectableValueKt.c() ? new SuspendingPointerInputFilterKt$pointerInput$$inlined$debugInspectorInfo$1(obj, block) : InspectableValueKt.a(), new SuspendingPointerInputFilterKt$pointerInput$2(obj, block));
    }

    @NotNull
    public static final Modifier c(@NotNull Modifier modifier, @Nullable Object obj, @Nullable Object obj2, @NotNull p<? super PointerInputScope, ? super kotlin.coroutines.d<? super l0>, ? extends Object> block) {
        t.j(modifier, "<this>");
        t.j(block, "block");
        return ComposedModifierKt.c(modifier, InspectableValueKt.c() ? new SuspendingPointerInputFilterKt$pointerInput$$inlined$debugInspectorInfo$2(obj, obj2, block) : InspectableValueKt.a(), new SuspendingPointerInputFilterKt$pointerInput$4(obj, obj2, block));
    }

    @NotNull
    public static final Modifier d(@NotNull Modifier modifier, @NotNull Object[] keys, @NotNull p<? super PointerInputScope, ? super kotlin.coroutines.d<? super l0>, ? extends Object> block) {
        t.j(modifier, "<this>");
        t.j(keys, "keys");
        t.j(block, "block");
        return ComposedModifierKt.c(modifier, InspectableValueKt.c() ? new SuspendingPointerInputFilterKt$pointerInput$$inlined$debugInspectorInfo$3(keys, block) : InspectableValueKt.a(), new SuspendingPointerInputFilterKt$pointerInput$6(keys, block));
    }
}
