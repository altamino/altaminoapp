package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.Handle;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.unit.IntSize;
import j8.o;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.s;

/* JADX INFO: loaded from: classes4.dex */
public final class SelectionManagerKt {

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Handle.values().length];
            iArr[Handle.SelectionStart.ordinal()] = 1;
            iArr[Handle.SelectionEnd.ordinal()] = 2;
            iArr[Handle.Cursor.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final long a(@NotNull SelectionManager manager, long j6) {
        t.j(manager, "manager");
        Selection selectionC = manager.C();
        if (selectionC == null) {
            return Offset.Companion.b();
        }
        Handle handleV = manager.v();
        int i10 = handleV == null ? -1 : WhenMappings.$EnumSwitchMapping$0[handleV.ordinal()];
        if (i10 == -1) {
            return Offset.Companion.b();
        }
        if (i10 == 1) {
            return b(manager, j6, selectionC.e(), true);
        }
        if (i10 == 2) {
            return b(manager, j6, selectionC.c(), false);
        }
        if (i10 != 3) {
            throw new s();
        }
        throw new IllegalStateException("SelectionContainer does not support cursor".toString());
    }

    public static final boolean c(@NotNull Rect containsInclusive, long j6) {
        t.j(containsInclusive, "$this$containsInclusive");
        float fJ = containsInclusive.j();
        float fK = containsInclusive.k();
        float fM = Offset.m(j6);
        if (fJ <= fM && fM <= fK) {
            float fM2 = containsInclusive.m();
            float fE = containsInclusive.e();
            float fN = Offset.n(j6);
            if (fM2 <= fN && fN <= fE) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public static final AnnotatedString d(@NotNull Selectable selectable, @NotNull Selection selection) {
        t.j(selectable, "selectable");
        t.j(selection, "selection");
        AnnotatedString annotatedStringA = selectable.a();
        if (selectable.f() != selection.e().c() && selectable.f() != selection.c().c()) {
            return annotatedStringA;
        }
        if (selectable.f() == selection.e().c() && selectable.f() == selection.c().c()) {
            return selection.d() ? annotatedStringA.subSequence(selection.c().b(), selection.e().b()) : annotatedStringA.subSequence(selection.e().b(), selection.c().b());
        }
        if (selectable.f() == selection.e().c()) {
            return selection.d() ? annotatedStringA.subSequence(0, selection.e().b()) : annotatedStringA.subSequence(selection.e().b(), annotatedStringA.length());
        }
        return selection.d() ? annotatedStringA.subSequence(selection.c().b(), annotatedStringA.length()) : annotatedStringA.subSequence(0, selection.c().b());
    }

    @Nullable
    public static final Selection e(@Nullable Selection selection, @Nullable Selection selection2) {
        Selection selectionF;
        return (selection == null || (selectionF = selection.f(selection2)) == null) ? selection2 : selectionF;
    }

    @NotNull
    public static final Rect f(@NotNull LayoutCoordinates layoutCoordinates) {
        t.j(layoutCoordinates, "<this>");
        Rect rectC = LayoutCoordinatesKt.c(layoutCoordinates);
        return RectKt.a(layoutCoordinates.S(rectC.n()), layoutCoordinates.S(rectC.g()));
    }

    private static final long b(SelectionManager selectionManager, long j6, Selection.AnchorInfo anchorInfo, boolean z6) {
        Selectable selectableP = selectionManager.p(anchorInfo);
        if (selectableP == null) {
            return Offset.Companion.b();
        }
        LayoutCoordinates layoutCoordinatesQ = selectionManager.q();
        if (layoutCoordinatesQ == null) {
            return Offset.Companion.b();
        }
        LayoutCoordinates layoutCoordinatesC = selectableP.c();
        if (layoutCoordinatesC == null) {
            return Offset.Companion.b();
        }
        int iB = anchorInfo.b();
        if (!z6) {
            iB--;
        }
        Offset offsetS = selectionManager.s();
        t.g(offsetS);
        float fM = Offset.m(layoutCoordinatesC.O(layoutCoordinatesQ, offsetS.u()));
        long jH = selectableP.h(iB);
        Rect rectB = selectableP.b(TextRange.l(jH));
        Rect rectB2 = selectableP.b(o.e(TextRange.k(jH) - 1, TextRange.l(jH)));
        float fM2 = o.m(fM, Math.min(rectB.j(), rectB2.j()), Math.max(rectB.k(), rectB2.k()));
        if (Math.abs(fM - fM2) > IntSize.g(j6) / 2) {
            return Offset.Companion.b();
        }
        return layoutCoordinatesQ.O(layoutCoordinatesC, OffsetKt.a(fM2, Offset.n(selectableP.b(iB).h())));
    }
}
