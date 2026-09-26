package androidx.compose.foundation.text;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.a;
import androidx.compose.ui.text.TextLayoutResult;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class TextLayoutResultProxy {

    @Nullable
    private LayoutCoordinates decorationBoxCoordinates;

    @Nullable
    private LayoutCoordinates innerTextFieldCoordinates;

    @NotNull
    private final TextLayoutResult value;

    @Nullable
    public final LayoutCoordinates b() {
        return this.decorationBoxCoordinates;
    }

    @Nullable
    public final LayoutCoordinates c() {
        return this.innerTextFieldCoordinates;
    }

    public final int f(float f) {
        return this.value.q(Offset.n(k(a(OffsetKt.a(0.0f, f)))));
    }

    @NotNull
    public final TextLayoutResult i() {
        return this.value;
    }

    public final void l(@Nullable LayoutCoordinates layoutCoordinates) {
        this.decorationBoxCoordinates = layoutCoordinates;
    }

    public final void m(@Nullable LayoutCoordinates layoutCoordinates) {
        this.innerTextFieldCoordinates = layoutCoordinates;
    }

    public TextLayoutResultProxy(@NotNull TextLayoutResult value) {
        t.j(value, "value");
        this.value = value;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001e  */
    private final long a(long j6) {
        Rect rectA;
        LayoutCoordinates layoutCoordinates = this.innerTextFieldCoordinates;
        if (layoutCoordinates == null) {
            rectA = Rect.Companion.a();
        } else {
            if (layoutCoordinates.Q()) {
                LayoutCoordinates layoutCoordinates2 = this.decorationBoxCoordinates;
                rectA = null;
                if (layoutCoordinates2 != null) {
                    rectA = a.a(layoutCoordinates2, layoutCoordinates, false, 2, null);
                }
            } else {
                rectA = Rect.Companion.a();
            }
            if (rectA == null) {
                rectA = Rect.Companion.a();
            }
        }
        return TextLayoutResultProxyKt.b(j6, rectA);
    }

    public static /* synthetic */ int e(TextLayoutResultProxy textLayoutResultProxy, int i10, boolean z6, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z6 = false;
        }
        return textLayoutResultProxy.d(i10, z6);
    }

    public static /* synthetic */ int h(TextLayoutResultProxy textLayoutResultProxy, long j6, boolean z6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z6 = true;
        }
        return textLayoutResultProxy.g(j6, z6);
    }

    private final long k(long j6) {
        Offset offsetD;
        LayoutCoordinates layoutCoordinates = this.innerTextFieldCoordinates;
        if (layoutCoordinates == null) {
            return j6;
        }
        LayoutCoordinates layoutCoordinates2 = this.decorationBoxCoordinates;
        if (layoutCoordinates2 != null) {
            offsetD = Offset.d((layoutCoordinates.Q() && layoutCoordinates2.Q()) ? layoutCoordinates.O(layoutCoordinates2, j6) : j6);
        } else {
            offsetD = null;
        }
        return offsetD != null ? offsetD.u() : j6;
    }

    public final int d(int i10, boolean z6) {
        return this.value.n(i10, z6);
    }

    public final int g(long j6, boolean z6) {
        if (z6) {
            j6 = a(j6);
        }
        return this.value.w(k(j6));
    }

    public final boolean j(long j6) {
        long jK = k(a(j6));
        int iQ = this.value.q(Offset.n(jK));
        if (Offset.m(jK) >= this.value.r(iQ) && Offset.m(jK) <= this.value.s(iQ)) {
            return true;
        }
        return false;
    }
}
