package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;
import androidx.compose.ui.ExperimentalComposeUiApi;
import androidx.compose.ui.Modifier;
import e8.l;
import e8.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@ExperimentalComposeUiApi
public final class PointerInteropFilter implements PointerInputModifier {
    private boolean disallowIntercept;
    public l<? super MotionEvent, Boolean> onTouchEvent;

    @NotNull
    private final PointerInputFilter pointerInputFilter = new PointerInteropFilter$pointerInputFilter$1(this);

    @Nullable
    private RequestDisallowInterceptTouchEvent requestDisallowInterceptTouchEvent;

    /* JADX INFO: Access modifiers changed from: private */
    enum DispatchToViewState {
        Unknown,
        Dispatching,
        NotDispatching
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier B(Modifier modifier) {
        return androidx.compose.ui.a.a(this, modifier);
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputModifier
    @NotNull
    public PointerInputFilter B0() {
        return this.pointerInputFilter;
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object V(Object obj, p pVar) {
        return androidx.compose.ui.b.c(this, obj, pVar);
    }

    public final boolean a() {
        return this.disallowIntercept;
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object a0(Object obj, p pVar) {
        return androidx.compose.ui.b.b(this, obj, pVar);
    }

    public final void c(boolean z6) {
        this.disallowIntercept = z6;
    }

    public final void d(@NotNull l<? super MotionEvent, Boolean> lVar) {
        t.j(lVar, "<set-?>");
        this.onTouchEvent = lVar;
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(l lVar) {
        return androidx.compose.ui.b.a(this, lVar);
    }

    @NotNull
    public final l<MotionEvent, Boolean> b() {
        l lVar = this.onTouchEvent;
        if (lVar != null) {
            return lVar;
        }
        t.B("onTouchEvent");
        return null;
    }

    public final void f(@Nullable RequestDisallowInterceptTouchEvent requestDisallowInterceptTouchEvent) {
        RequestDisallowInterceptTouchEvent requestDisallowInterceptTouchEvent2 = this.requestDisallowInterceptTouchEvent;
        if (requestDisallowInterceptTouchEvent2 != null) {
            requestDisallowInterceptTouchEvent2.b(null);
        }
        this.requestDisallowInterceptTouchEvent = requestDisallowInterceptTouchEvent;
        if (requestDisallowInterceptTouchEvent == null) {
            return;
        }
        requestDisallowInterceptTouchEvent.b(this);
    }
}
