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

/* JADX INFO: loaded from: classes11.dex */
@Immutable
public final class LinearGradient extends ShaderBrush {

    @NotNull
    private final List<Color> colors;
    private final long end;
    private final long start;

    @Nullable
    private final List<Float> stops;
    private final int tileMode;

    public /* synthetic */ LinearGradient(List list, List list2, long j6, long j10, int i10, kotlin.jvm.internal.k kVar) {
        this(list, list2, j6, j10, i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LinearGradient)) {
            return false;
        }
        LinearGradient linearGradient = (LinearGradient) obj;
        return kotlin.jvm.internal.t.e(this.colors, linearGradient.colors) && kotlin.jvm.internal.t.e(this.stops, linearGradient.stops) && Offset.j(this.start, linearGradient.start) && Offset.j(this.end, linearGradient.end) && TileMode.g(this.tileMode, linearGradient.tileMode);
    }

    public /* synthetic */ LinearGradient(List list, List list2, long j6, long j10, int i10, int i11, kotlin.jvm.internal.k kVar) {
        this(list, (i11 & 2) != 0 ? null : list2, j6, j10, (i11 & 16) != 0 ? TileMode.Companion.a() : i10, null);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0038  */
    @Override // androidx.compose.ui.graphics.Brush
    public long b() {
        float fAbs;
        float fM = Offset.m(this.start);
        float fAbs2 = Float.NaN;
        if (Float.isInfinite(fM) || Float.isNaN(fM)) {
            fAbs = Float.NaN;
        } else {
            float fM2 = Offset.m(this.end);
            if (Float.isInfinite(fM2) || Float.isNaN(fM2)) {
                fAbs = Float.NaN;
            } else {
                fAbs = Math.abs(Offset.m(this.start) - Offset.m(this.end));
            }
        }
        float fN = Offset.n(this.start);
        if (!Float.isInfinite(fN) && !Float.isNaN(fN)) {
            float fN2 = Offset.n(this.end);
            if (!Float.isInfinite(fN2) && !Float.isNaN(fN2)) {
                fAbs2 = Math.abs(Offset.n(this.start) - Offset.n(this.end));
            }
        }
        return SizeKt.a(fAbs, fAbs2);
    }

    @Override // androidx.compose.ui.graphics.ShaderBrush
    @NotNull
    public Shader c(long j6) {
        return ShaderKt.a(OffsetKt.a(Offset.m(this.start) == Float.POSITIVE_INFINITY ? Size.i(j6) : Offset.m(this.start), Offset.n(this.start) == Float.POSITIVE_INFINITY ? Size.g(j6) : Offset.n(this.start)), OffsetKt.a(Offset.m(this.end) == Float.POSITIVE_INFINITY ? Size.i(j6) : Offset.m(this.end), Offset.n(this.end) == Float.POSITIVE_INFINITY ? Size.g(j6) : Offset.n(this.end)), this.colors, this.stops, this.tileMode);
    }

    public int hashCode() {
        int iHashCode = this.colors.hashCode() * 31;
        List<Float> list = this.stops;
        return ((((((iHashCode + (list != null ? list.hashCode() : 0)) * 31) + Offset.o(this.start)) * 31) + Offset.o(this.end)) * 31) + TileMode.h(this.tileMode);
    }

    @NotNull
    public String toString() {
        String str;
        String str2 = "";
        if (OffsetKt.b(this.start)) {
            str = "start=" + ((Object) Offset.t(this.start)) + ", ";
        } else {
            str = "";
        }
        if (OffsetKt.b(this.end)) {
            str2 = "end=" + ((Object) Offset.t(this.end)) + ", ";
        }
        return "LinearGradient(colors=" + this.colors + ", stops=" + this.stops + ", " + str + str2 + "tileMode=" + ((Object) TileMode.i(this.tileMode)) + ')';
    }

    private LinearGradient(List<Color> list, List<Float> list2, long j6, long j10, int i10) {
        this.colors = list;
        this.stops = list2;
        this.start = j6;
        this.end = j10;
        this.tileMode = i10;
    }
}
