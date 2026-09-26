package androidx.compose.ui.graphics;

import android.graphics.Shader;
import androidx.compose.runtime.Immutable;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Immutable
public final class RadialGradient extends ShaderBrush {
    private final long center;

    @NotNull
    private final List<Color> colors;
    private final float radius;

    @Nullable
    private final List<Float> stops;
    private final int tileMode;

    public /* synthetic */ RadialGradient(List list, List list2, long j6, float f, int i10, kotlin.jvm.internal.k kVar) {
        this(list, list2, j6, f, i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RadialGradient)) {
            return false;
        }
        RadialGradient radialGradient = (RadialGradient) obj;
        return kotlin.jvm.internal.t.e(this.colors, radialGradient.colors) && kotlin.jvm.internal.t.e(this.stops, radialGradient.stops) && Offset.j(this.center, radialGradient.center) && this.radius == radialGradient.radius && TileMode.g(this.tileMode, radialGradient.tileMode);
    }

    public /* synthetic */ RadialGradient(List list, List list2, long j6, float f, int i10, int i11, kotlin.jvm.internal.k kVar) {
        this(list, (i11 & 2) != 0 ? null : list2, j6, f, (i11 & 16) != 0 ? TileMode.Companion.a() : i10, null);
    }

    @Override // androidx.compose.ui.graphics.Brush
    public long b() {
        float f = this.radius;
        if (Float.isInfinite(f) || Float.isNaN(f)) {
            return Size.Companion.a();
        }
        float f6 = this.radius;
        float f7 = 2;
        return SizeKt.a(f6 * f7, f6 * f7);
    }

    @Override // androidx.compose.ui.graphics.ShaderBrush
    @NotNull
    public Shader c(long j6) {
        float fI;
        float fG;
        if (OffsetKt.d(this.center)) {
            long jB = SizeKt.b(j6);
            fI = Offset.m(jB);
            fG = Offset.n(jB);
        } else {
            fI = Offset.m(this.center) == Float.POSITIVE_INFINITY ? Size.i(j6) : Offset.m(this.center);
            fG = Offset.n(this.center) == Float.POSITIVE_INFINITY ? Size.g(j6) : Offset.n(this.center);
        }
        List<Color> list = this.colors;
        List<Float> list2 = this.stops;
        long jA = OffsetKt.a(fI, fG);
        float f = this.radius;
        return ShaderKt.b(jA, f == Float.POSITIVE_INFINITY ? Size.h(j6) / 2 : f, list, list2, this.tileMode);
    }

    public int hashCode() {
        int iHashCode = this.colors.hashCode() * 31;
        List<Float> list = this.stops;
        return ((((((iHashCode + (list != null ? list.hashCode() : 0)) * 31) + Offset.o(this.center)) * 31) + Float.floatToIntBits(this.radius)) * 31) + TileMode.h(this.tileMode);
    }

    @NotNull
    public String toString() {
        String str;
        String str2 = "";
        if (OffsetKt.c(this.center)) {
            str = "center=" + ((Object) Offset.t(this.center)) + ", ";
        } else {
            str = "";
        }
        float f = this.radius;
        if (!Float.isInfinite(f) && !Float.isNaN(f)) {
            str2 = "radius=" + this.radius + ", ";
        }
        return "RadialGradient(colors=" + this.colors + ", stops=" + this.stops + ", " + str + str2 + "tileMode=" + ((Object) TileMode.i(this.tileMode)) + ')';
    }

    private RadialGradient(List<Color> list, List<Float> list2, long j6, float f, int i10) {
        this.colors = list;
        this.stops = list2;
        this.center = j6;
        this.radius = f;
        this.tileMode = i10;
    }
}
