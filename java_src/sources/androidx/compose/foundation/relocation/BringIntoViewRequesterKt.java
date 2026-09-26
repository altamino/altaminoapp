package androidx.compose.foundation.relocation;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class BringIntoViewRequesterKt {
    @ExperimentalFoundationApi
    @NotNull
    public static final BringIntoViewRequester a() {
        return new BringIntoViewRequesterImpl();
    }

    @ExperimentalFoundationApi
    @NotNull
    public static final Modifier b(@NotNull Modifier modifier, @NotNull BringIntoViewRequester bringIntoViewRequester) {
        t.j(modifier, "<this>");
        t.j(bringIntoViewRequester, "bringIntoViewRequester");
        return ComposedModifierKt.c(modifier, InspectableValueKt.c() ? new BringIntoViewRequesterKt$bringIntoViewRequester$$inlined$debugInspectorInfo$1(bringIntoViewRequester) : InspectableValueKt.a(), new BringIntoViewRequesterKt$bringIntoViewRequester$2(bringIntoViewRequester));
    }
}
