package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.PathFillType;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.StrokeJoin;
import java.util.List;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
@Immutable
public final class VectorPath extends VectorNode {

    @Nullable
    private final Brush fill;
    private final float fillAlpha;

    @NotNull
    private final String name;

    @NotNull
    private final List<PathNode> pathData;
    private final int pathFillType;

    @Nullable
    private final Brush stroke;
    private final float strokeAlpha;
    private final int strokeLineCap;
    private final int strokeLineJoin;
    private final float strokeLineMiter;
    private final float strokeLineWidth;
    private final float trimPathEnd;
    private final float trimPathOffset;
    private final float trimPathStart;

    public /* synthetic */ VectorPath(String str, List list, int i10, Brush brush, float f, Brush brush2, float f6, float f7, int i11, int i12, float f10, float f11, float f12, float f13, k kVar) {
        this(str, list, i10, brush, f, brush2, f6, f7, i11, i12, f10, f11, f12, f13);
    }

    @Nullable
    public final Brush c() {
        return this.fill;
    }

    public final float e() {
        return this.fillAlpha;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && t.e(q0.b(VectorPath.class), q0.b(obj.getClass()))) {
            VectorPath vectorPath = (VectorPath) obj;
            return t.e(this.name, vectorPath.name) && t.e(this.fill, vectorPath.fill) && this.fillAlpha == vectorPath.fillAlpha && t.e(this.stroke, vectorPath.stroke) && this.strokeAlpha == vectorPath.strokeAlpha && this.strokeLineWidth == vectorPath.strokeLineWidth && StrokeCap.g(this.strokeLineCap, vectorPath.strokeLineCap) && StrokeJoin.g(this.strokeLineJoin, vectorPath.strokeLineJoin) && this.strokeLineMiter == vectorPath.strokeLineMiter && this.trimPathStart == vectorPath.trimPathStart && this.trimPathEnd == vectorPath.trimPathEnd && this.trimPathOffset == vectorPath.trimPathOffset && PathFillType.f(this.pathFillType, vectorPath.pathFillType) && t.e(this.pathData, vectorPath.pathData);
        }
        return false;
    }

    @NotNull
    public final String f() {
        return this.name;
    }

    @NotNull
    public final List<PathNode> g() {
        return this.pathData;
    }

    public final int j() {
        return this.pathFillType;
    }

    @Nullable
    public final Brush m() {
        return this.stroke;
    }

    public final float p() {
        return this.strokeAlpha;
    }

    public final int q() {
        return this.strokeLineCap;
    }

    public final int r() {
        return this.strokeLineJoin;
    }

    public final float s() {
        return this.strokeLineMiter;
    }

    public final float t() {
        return this.strokeLineWidth;
    }

    public final float u() {
        return this.trimPathEnd;
    }

    public final float v() {
        return this.trimPathOffset;
    }

    public final float w() {
        return this.trimPathStart;
    }

    public /* synthetic */ VectorPath(String str, List list, int i10, Brush brush, float f, Brush brush2, float f6, float f7, int i11, int i12, float f10, float f11, float f12, float f13, int i13, k kVar) {
        this((i13 & 1) != 0 ? "" : str, list, i10, (i13 & 8) != 0 ? null : brush, (i13 & 16) != 0 ? 1.0f : f, (i13 & 32) != 0 ? null : brush2, (i13 & 64) != 0 ? 1.0f : f6, (i13 & 128) != 0 ? 0.0f : f7, (i13 & 256) != 0 ? VectorKt.c() : i11, (i13 & 512) != 0 ? VectorKt.d() : i12, (i13 & 1024) != 0 ? 4.0f : f10, (i13 & 2048) != 0 ? 0.0f : f11, (i13 & 4096) != 0 ? 1.0f : f12, (i13 & 8192) != 0 ? 0.0f : f13, null);
    }

    public int hashCode() {
        int iHashCode = ((this.name.hashCode() * 31) + this.pathData.hashCode()) * 31;
        Brush brush = this.fill;
        int iHashCode2 = (((iHashCode + (brush != null ? brush.hashCode() : 0)) * 31) + Float.floatToIntBits(this.fillAlpha)) * 31;
        Brush brush2 = this.stroke;
        return ((((((((((((((((((iHashCode2 + (brush2 != null ? brush2.hashCode() : 0)) * 31) + Float.floatToIntBits(this.strokeAlpha)) * 31) + Float.floatToIntBits(this.strokeLineWidth)) * 31) + StrokeCap.h(this.strokeLineCap)) * 31) + StrokeJoin.h(this.strokeLineJoin)) * 31) + Float.floatToIntBits(this.strokeLineMiter)) * 31) + Float.floatToIntBits(this.trimPathStart)) * 31) + Float.floatToIntBits(this.trimPathEnd)) * 31) + Float.floatToIntBits(this.trimPathOffset)) * 31) + PathFillType.g(this.pathFillType);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private VectorPath(String str, List<? extends PathNode> list, int i10, Brush brush, float f, Brush brush2, float f6, float f7, int i11, int i12, float f10, float f11, float f12, float f13) {
        super(null);
        this.name = str;
        this.pathData = list;
        this.pathFillType = i10;
        this.fill = brush;
        this.fillAlpha = f;
        this.stroke = brush2;
        this.strokeAlpha = f6;
        this.strokeLineWidth = f7;
        this.strokeLineCap = i11;
        this.strokeLineJoin = i12;
        this.strokeLineMiter = f10;
        this.trimPathStart = f11;
        this.trimPathEnd = f12;
        this.trimPathOffset = f13;
    }
}
