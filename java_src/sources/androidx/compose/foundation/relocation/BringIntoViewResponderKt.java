package androidx.compose.foundation.relocation;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.platform.InspectableValueKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public final class BringIntoViewResponderKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Rect e(LayoutCoordinates layoutCoordinates, LayoutCoordinates layoutCoordinates2, Rect rect) {
        return rect.t(layoutCoordinates.r(layoutCoordinates2, false).n());
    }

    @ExperimentalFoundationApi
    @NotNull
    public static final Modifier c(@NotNull Modifier modifier, @NotNull BringIntoViewResponder responder) {
        t.j(modifier, "<this>");
        t.j(responder, "responder");
        return ComposedModifierKt.c(modifier, InspectableValueKt.c() ? new BringIntoViewResponderKt$bringIntoViewResponder$$inlined$debugInspectorInfo$1(responder) : InspectableValueKt.a(), new BringIntoViewResponderKt$bringIntoViewResponder$2(responder));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean d(Rect rect, Rect rect2) {
        if (rect.j() <= rect2.j() && rect.m() <= rect2.m() && rect.k() >= rect2.k() && rect.e() >= rect2.e()) {
            return true;
        }
        return false;
    }
}
