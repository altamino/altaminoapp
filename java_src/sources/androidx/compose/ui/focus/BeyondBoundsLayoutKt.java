package androidx.compose.ui.focus;

import androidx.compose.ui.layout.BeyondBoundsLayout;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class BeyondBoundsLayoutKt {
    @Nullable
    public static final <T> T a(@NotNull FocusModifier searchBeyondBounds, int i10, @NotNull l<? super BeyondBoundsLayout.BeyondBoundsScope, ? extends T> block) {
        int iC;
        t.j(searchBeyondBounds, "$this$searchBeyondBounds");
        t.j(block, "block");
        BeyondBoundsLayout beyondBoundsLayoutB = searchBeyondBounds.b();
        if (beyondBoundsLayoutB == null) {
            return null;
        }
        FocusDirection.Companion companion = FocusDirection.Companion;
        if (FocusDirection.l(i10, companion.h())) {
            iC = BeyondBoundsLayout.LayoutDirection.Companion.a();
        } else if (FocusDirection.l(i10, companion.a())) {
            iC = BeyondBoundsLayout.LayoutDirection.Companion.d();
        } else if (FocusDirection.l(i10, companion.c())) {
            iC = BeyondBoundsLayout.LayoutDirection.Companion.e();
        } else if (FocusDirection.l(i10, companion.g())) {
            iC = BeyondBoundsLayout.LayoutDirection.Companion.f();
        } else if (FocusDirection.l(i10, companion.d())) {
            iC = BeyondBoundsLayout.LayoutDirection.Companion.b();
        } else {
            if (!FocusDirection.l(i10, companion.f())) {
                throw new IllegalStateException("Unsupported direction for beyond bounds layout".toString());
            }
            iC = BeyondBoundsLayout.LayoutDirection.Companion.c();
        }
        return (T) beyondBoundsLayoutB.a(iC, block);
    }
}
