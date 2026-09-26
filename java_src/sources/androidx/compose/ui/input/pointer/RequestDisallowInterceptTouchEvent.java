package androidx.compose.ui.input.pointer;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.ExperimentalComposeUiApi;
import e8.l;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes11.dex */
@StabilityInferred
@ExperimentalComposeUiApi
public final class RequestDisallowInterceptTouchEvent implements l<Boolean, l0> {
    public static final int $stable = 8;

    @Nullable
    private PointerInteropFilter pointerInteropFilter;

    public final void b(@Nullable PointerInteropFilter pointerInteropFilter) {
        this.pointerInteropFilter = pointerInteropFilter;
    }

    public void a(boolean z6) {
        PointerInteropFilter pointerInteropFilter = this.pointerInteropFilter;
        if (pointerInteropFilter == null) {
            return;
        }
        pointerInteropFilter.c(z6);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Boolean bool) {
        a(bool.booleanValue());
        return l0.INSTANCE;
    }
}
