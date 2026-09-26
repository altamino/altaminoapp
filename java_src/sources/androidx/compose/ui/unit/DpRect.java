package androidx.compose.ui.unit;

import androidx.compose.runtime.Immutable;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Immutable
public final class DpRect {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private final float bottom;
    private final float left;
    private final float right;
    private final float top;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public /* synthetic */ DpRect(float f, float f6, float f7, float f10, k kVar) {
        this(f, f6, f7, f10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DpRect)) {
            return false;
        }
        DpRect dpRect = (DpRect) obj;
        return Dp.i(this.left, dpRect.left) && Dp.i(this.top, dpRect.top) && Dp.i(this.right, dpRect.right) && Dp.i(this.bottom, dpRect.bottom);
    }

    public int hashCode() {
        return (((((Dp.j(this.left) * 31) + Dp.j(this.top)) * 31) + Dp.j(this.right)) * 31) + Dp.j(this.bottom);
    }

    @NotNull
    public String toString() {
        return "DpRect(left=" + ((Object) Dp.k(this.left)) + ", top=" + ((Object) Dp.k(this.top)) + ", right=" + ((Object) Dp.k(this.right)) + ", bottom=" + ((Object) Dp.k(this.bottom)) + ')';
    }

    public /* synthetic */ DpRect(long j6, long j10, k kVar) {
        this(j6, j10);
    }

    private DpRect(float f, float f6, float f7, float f10) {
        this.left = f;
        this.top = f6;
        this.right = f7;
        this.bottom = f10;
    }

    private DpRect(long j6, long j10) {
        this(DpOffset.g(j6), DpOffset.h(j6), Dp.f(DpOffset.g(j6) + DpSize.h(j10)), Dp.f(DpOffset.h(j6) + DpSize.g(j10)), null);
    }
}
