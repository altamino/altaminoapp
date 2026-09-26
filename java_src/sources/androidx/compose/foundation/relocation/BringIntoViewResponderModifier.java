package androidx.compose.foundation.relocation;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.modifier.ModifierLocalProvider;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import kotlin.coroutines.d;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.p0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.u;

/* JADX INFO: loaded from: classes4.dex */
final class BringIntoViewResponderModifier extends BringIntoViewChildModifier implements ModifierLocalProvider<BringIntoViewParent>, BringIntoViewParent {

    @Nullable
    private u<Rect, ? extends b2> newestDispatchedRequest;

    @Nullable
    private u<Rect, ? extends b2> newestReceivedRequest;
    public BringIntoViewResponder responder;

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public BringIntoViewParent getValue() {
        return this;
    }

    public final void n(@NotNull BringIntoViewResponder bringIntoViewResponder) {
        t.j(bringIntoViewResponder, "<set-?>");
        this.responder = bringIntoViewResponder;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BringIntoViewResponderModifier(@NotNull BringIntoViewParent defaultParent) {
        super(defaultParent);
        t.j(defaultParent, "defaultParent");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object j(u<Rect, ? extends b2> uVar, LayoutCoordinates layoutCoordinates, d<? super l0> dVar) {
        this.newestDispatchedRequest = uVar;
        Rect rectC = uVar.c();
        Object objF = p0.f(new BringIntoViewResponderModifier$dispatchRequest$2(this, k().b(rectC), layoutCoordinates, rectC, null), dVar);
        return objF == kotlin.coroutines.intrinsics.d.e() ? objF : l0.INSTANCE;
    }

    @Override // androidx.compose.foundation.relocation.BringIntoViewParent
    @Nullable
    public Object a(@NotNull Rect rect, @NotNull LayoutCoordinates layoutCoordinates, @NotNull d<? super l0> dVar) {
        Object objF = p0.f(new BringIntoViewResponderModifier$bringChildIntoView$2(this, layoutCoordinates, rect, null), dVar);
        return objF == kotlin.coroutines.intrinsics.d.e() ? objF : l0.INSTANCE;
    }

    @NotNull
    public final BringIntoViewResponder k() {
        BringIntoViewResponder bringIntoViewResponder = this.responder;
        if (bringIntoViewResponder != null) {
            return bringIntoViewResponder;
        }
        t.B("responder");
        return null;
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    public ProvidableModifierLocal<BringIntoViewParent> getKey() {
        return BringIntoViewKt.a();
    }
}
