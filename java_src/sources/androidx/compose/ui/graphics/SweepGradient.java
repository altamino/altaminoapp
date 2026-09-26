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

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public final class SweepGradient extends ShaderBrush {
    private final long center;

    @NotNull
    private final List<Color> colors;

    @Nullable
    private final List<Float> stops;

    public /* synthetic */ SweepGradient(long j6, List list, List list2, kotlin.jvm.internal.k kVar) {
        this(j6, list, list2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SweepGradient)) {
            return false;
        }
        SweepGradient sweepGradient = (SweepGradient) obj;
        return Offset.j(this.center, sweepGradient.center) && kotlin.jvm.internal.t.e(this.colors, sweepGradient.colors) && kotlin.jvm.internal.t.e(this.stops, sweepGradient.stops);
    }

    public /* synthetic */ SweepGradient(long j6, List list, List list2, int i10, kotlin.jvm.internal.k kVar) {
        this(j6, list, (i10 & 4) != 0 ? null : list2, null);
    }

    @Override // androidx.compose.ui.graphics.ShaderBrush
    @NotNull
    public Shader c(long j6) {
        long jA;
        if (OffsetKt.d(this.center)) {
            jA = SizeKt.b(j6);
        } else {
            jA = OffsetKt.a(Offset.m(this.center) == Float.POSITIVE_INFINITY ? Size.i(j6) : Offset.m(this.center), Offset.n(this.center) == Float.POSITIVE_INFINITY ? Size.g(j6) : Offset.n(this.center));
        }
        return ShaderKt.c(jA, this.colors, this.stops);
    }

    public int hashCode() {
        int iO = ((Offset.o(this.center) * 31) + this.colors.hashCode()) * 31;
        List<Float> list = this.stops;
        return iO + (list != null ? list.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str;
        if (OffsetKt.c(this.center)) {
            str = "center=" + ((Object) Offset.t(this.center)) + ", ";
        } else {
            str = "";
        }
        return "SweepGradient(" + str + "colors=" + this.colors + ", stops=" + this.stops + ')';
    }

    private SweepGradient(long j6, List<Color> list, List<Float> list2) {
        this.center = j6;
        this.colors = list;
        this.stops = list2;
    }
}
