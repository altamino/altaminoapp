package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.Handle;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.TextFieldState;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.unit.IntSize;
import androidx.profileinstaller.ProfileVerifier;
import j8.o;
import kotlin.jvm.internal.t;
import kotlin.text.u;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.s;

/* JADX INFO: loaded from: classes4.dex */
public final class TextFieldSelectionManagerKt {

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Handle.values().length];
            iArr[Handle.Cursor.ordinal()] = 1;
            iArr[Handle.SelectionStart.ordinal()] = 2;
            iArr[Handle.SelectionEnd.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @ComposableTarget
    @Composable
    public static final void a(boolean z6, @NotNull ResolvedTextDirection direction, @NotNull TextFieldSelectionManager manager, @Nullable Composer composer, int i10) {
        t.j(direction, "direction");
        t.j(manager, "manager");
        Composer composerS = composer.s(-1344558920);
        Boolean boolValueOf = Boolean.valueOf(z6);
        composerS.G(511388516);
        boolean zK = composerS.k(boolValueOf) | composerS.k(manager);
        Object objH = composerS.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = manager.I(z6);
            composerS.z(objH);
        }
        composerS.Q();
        TextDragObserver textDragObserver = (TextDragObserver) objH;
        int i11 = i10 << 3;
        AndroidSelectionHandles_androidKt.c(manager.z(z6), z6, direction, TextRange.m(manager.H().g()), SuspendingPointerInputFilterKt.b(Modifier.Companion, textDragObserver, new TextFieldSelectionManagerKt$TextFieldSelectionHandle$1(textDragObserver, null)), null, composerS, (i11 & 112) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i11 & 896));
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new TextFieldSelectionManagerKt$TextFieldSelectionHandle$2(z6, direction, manager, i10));
    }

    public static final long b(@NotNull TextFieldSelectionManager manager, long j6) {
        int iN;
        TextLayoutResultProxy textLayoutResultProxyG;
        TextLayoutResult textLayoutResultI;
        LayoutCoordinates layoutCoordinatesF;
        TextLayoutResultProxy textLayoutResultProxyG2;
        LayoutCoordinates layoutCoordinatesC;
        t.j(manager, "manager");
        if (manager.H().h().length() == 0) {
            return Offset.Companion.b();
        }
        Handle handleW = manager.w();
        int i10 = handleW == null ? -1 : WhenMappings.$EnumSwitchMapping$0[handleW.ordinal()];
        if (i10 == -1) {
            return Offset.Companion.b();
        }
        if (i10 == 1 || i10 == 2) {
            iN = TextRange.n(manager.H().g());
        } else {
            if (i10 != 3) {
                throw new s();
            }
            iN = TextRange.i(manager.H().g());
        }
        int iO = o.o(manager.C().b(iN), u.V(manager.H().h()));
        TextFieldState textFieldStateE = manager.E();
        if (textFieldStateE == null || (textLayoutResultProxyG = textFieldStateE.g()) == null || (textLayoutResultI = textLayoutResultProxyG.i()) == null) {
            return Offset.Companion.b();
        }
        long jH = textLayoutResultI.c(iO).h();
        TextFieldState textFieldStateE2 = manager.E();
        if (textFieldStateE2 == null || (layoutCoordinatesF = textFieldStateE2.f()) == null) {
            return Offset.Companion.b();
        }
        TextFieldState textFieldStateE3 = manager.E();
        if (textFieldStateE3 == null || (textLayoutResultProxyG2 = textFieldStateE3.g()) == null || (layoutCoordinatesC = textLayoutResultProxyG2.c()) == null) {
            return Offset.Companion.b();
        }
        Offset offsetU = manager.u();
        if (offsetU == null) {
            return Offset.Companion.b();
        }
        float fM = Offset.m(layoutCoordinatesC.O(layoutCoordinatesF, offsetU.u()));
        int iP = textLayoutResultI.p(iO);
        int iT = textLayoutResultI.t(iP);
        int iN2 = textLayoutResultI.n(iP, true);
        boolean z6 = TextRange.n(manager.H().g()) > TextRange.i(manager.H().g());
        float fA = TextSelectionDelegateKt.a(textLayoutResultI, iT, true, z6);
        float fA2 = TextSelectionDelegateKt.a(textLayoutResultI, iN2, false, z6);
        float fM2 = o.m(fM, Math.min(fA, fA2), Math.max(fA, fA2));
        return Math.abs(fM - fM2) > ((float) (IntSize.g(j6) / 2)) ? Offset.Companion.b() : layoutCoordinatesF.O(layoutCoordinatesC, OffsetKt.a(fM2, Offset.n(jH)));
    }

    public static final boolean c(@NotNull TextFieldSelectionManager textFieldSelectionManager, boolean z6) {
        LayoutCoordinates layoutCoordinatesF;
        Rect rectF;
        t.j(textFieldSelectionManager, "<this>");
        TextFieldState textFieldStateE = textFieldSelectionManager.E();
        if (textFieldStateE == null || (layoutCoordinatesF = textFieldStateE.f()) == null || (rectF = SelectionManagerKt.f(layoutCoordinatesF)) == null) {
            return false;
        }
        return SelectionManagerKt.c(rectF, textFieldSelectionManager.z(z6));
    }
}
