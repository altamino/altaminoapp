package androidx.compose.ui.input.nestedscroll;

import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class NestedScrollModifierKt {
    @NotNull
    public static final Modifier a(@NotNull Modifier modifier, @NotNull NestedScrollConnection connection, @Nullable NestedScrollDispatcher nestedScrollDispatcher) {
        t.j(modifier, "<this>");
        t.j(connection, "connection");
        return ComposedModifierKt.c(modifier, InspectableValueKt.c() ? new NestedScrollModifierKt$nestedScroll$$inlined$debugInspectorInfo$1(connection, nestedScrollDispatcher) : InspectableValueKt.a(), new NestedScrollModifierKt$nestedScroll$2(nestedScrollDispatcher, connection));
    }

    public static /* synthetic */ Modifier b(Modifier modifier, NestedScrollConnection nestedScrollConnection, NestedScrollDispatcher nestedScrollDispatcher, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            nestedScrollDispatcher = null;
        }
        return a(modifier, nestedScrollConnection, nestedScrollDispatcher);
    }
}
