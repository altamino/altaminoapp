package androidx.compose.foundation.layout;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
@Immutable
public final class PaddingValuesImpl implements PaddingValues {
    private final float bottom;
    private final float end;
    private final float start;
    private final float top;

    public /* synthetic */ PaddingValuesImpl(float f, float f6, float f7, float f10, kotlin.jvm.internal.k kVar) {
        this(f, f6, f7, f10);
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    public float a() {
        return this.bottom;
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    public float d() {
        return this.top;
    }

    private PaddingValuesImpl(float f, float f6, float f7, float f10) {
        this.start = f;
        this.top = f6;
        this.end = f7;
        this.bottom = f10;
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    public float b(@NotNull LayoutDirection layoutDirection) {
        t.j(layoutDirection, "layoutDirection");
        return layoutDirection == LayoutDirection.Ltr ? this.start : this.end;
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    public float c(@NotNull LayoutDirection layoutDirection) {
        t.j(layoutDirection, "layoutDirection");
        return layoutDirection == LayoutDirection.Ltr ? this.end : this.start;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof PaddingValuesImpl)) {
            return false;
        }
        PaddingValuesImpl paddingValuesImpl = (PaddingValuesImpl) obj;
        return Dp.i(this.start, paddingValuesImpl.start) && Dp.i(this.top, paddingValuesImpl.top) && Dp.i(this.end, paddingValuesImpl.end) && Dp.i(this.bottom, paddingValuesImpl.bottom);
    }

    public int hashCode() {
        return (((((Dp.j(this.start) * 31) + Dp.j(this.top)) * 31) + Dp.j(this.end)) * 31) + Dp.j(this.bottom);
    }

    @NotNull
    public String toString() {
        return "PaddingValues(start=" + ((Object) Dp.k(this.start)) + ", top=" + ((Object) Dp.k(this.top)) + ", end=" + ((Object) Dp.k(this.end)) + ", bottom=" + ((Object) Dp.k(this.bottom)) + ')';
    }

    public /* synthetic */ PaddingValuesImpl(float f, float f6, float f7, float f10, int i10, kotlin.jvm.internal.k kVar) {
        this((i10 & 1) != 0 ? Dp.f(0) : f, (i10 & 2) != 0 ? Dp.f(0) : f6, (i10 & 4) != 0 ? Dp.f(0) : f7, (i10 & 8) != 0 ? Dp.f(0) : f10, null);
    }
}
