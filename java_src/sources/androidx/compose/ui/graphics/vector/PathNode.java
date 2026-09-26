package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.Immutable;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Immutable
public abstract class PathNode {
    private final boolean isCurve;
    private final boolean isQuad;

    @Immutable
    public static final class ArcTo extends PathNode {
        private final float arcStartX;
        private final float arcStartY;
        private final float horizontalEllipseRadius;
        private final boolean isMoreThanHalf;
        private final boolean isPositiveArc;
        private final float theta;
        private final float verticalEllipseRadius;

        /* JADX WARN: Illegal instructions before constructor call */
        public ArcTo(float f, float f6, float f7, boolean z6, boolean z10, float f10, float f11) {
            boolean z11 = false;
            super(z11, z11, 3, null);
            this.horizontalEllipseRadius = f;
            this.verticalEllipseRadius = f6;
            this.theta = f7;
            this.isMoreThanHalf = z6;
            this.isPositiveArc = z10;
            this.arcStartX = f10;
            this.arcStartY = f11;
        }

        public final float c() {
            return this.arcStartX;
        }

        public final float d() {
            return this.arcStartY;
        }

        public final float e() {
            return this.horizontalEllipseRadius;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ArcTo)) {
                return false;
            }
            ArcTo arcTo = (ArcTo) obj;
            return t.e(Float.valueOf(this.horizontalEllipseRadius), Float.valueOf(arcTo.horizontalEllipseRadius)) && t.e(Float.valueOf(this.verticalEllipseRadius), Float.valueOf(arcTo.verticalEllipseRadius)) && t.e(Float.valueOf(this.theta), Float.valueOf(arcTo.theta)) && this.isMoreThanHalf == arcTo.isMoreThanHalf && this.isPositiveArc == arcTo.isPositiveArc && t.e(Float.valueOf(this.arcStartX), Float.valueOf(arcTo.arcStartX)) && t.e(Float.valueOf(this.arcStartY), Float.valueOf(arcTo.arcStartY));
        }

        public final float f() {
            return this.theta;
        }

        public final float g() {
            return this.verticalEllipseRadius;
        }

        public final boolean h() {
            return this.isMoreThanHalf;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v7, types: [int] */
        /* JADX WARN: Type inference failed for: r0v9, types: [int] */
        /* JADX WARN: Type inference failed for: r1v11 */
        /* JADX WARN: Type inference failed for: r1v12 */
        /* JADX WARN: Type inference failed for: r1v5, types: [int] */
        /* JADX WARN: Type inference failed for: r2v0 */
        /* JADX WARN: Type inference failed for: r2v1, types: [int] */
        /* JADX WARN: Type inference failed for: r2v2 */
        public int hashCode() {
            int iFloatToIntBits = ((((Float.floatToIntBits(this.horizontalEllipseRadius) * 31) + Float.floatToIntBits(this.verticalEllipseRadius)) * 31) + Float.floatToIntBits(this.theta)) * 31;
            boolean z6 = this.isMoreThanHalf;
            ?? r1 = z6;
            if (z6) {
                r1 = 1;
            }
            int i10 = (iFloatToIntBits + r1) * 31;
            boolean z10 = this.isPositiveArc;
            return ((((i10 + (z10 ? 1 : z10)) * 31) + Float.floatToIntBits(this.arcStartX)) * 31) + Float.floatToIntBits(this.arcStartY);
        }

        public final boolean i() {
            return this.isPositiveArc;
        }

        @NotNull
        public String toString() {
            return "ArcTo(horizontalEllipseRadius=" + this.horizontalEllipseRadius + ", verticalEllipseRadius=" + this.verticalEllipseRadius + ", theta=" + this.theta + ", isMoreThanHalf=" + this.isMoreThanHalf + ", isPositiveArc=" + this.isPositiveArc + ", arcStartX=" + this.arcStartX + ", arcStartY=" + this.arcStartY + ')';
        }
    }

    @Immutable
    public static final class Close extends PathNode {

        @NotNull
        public static final Close INSTANCE = new Close();

        /* JADX WARN: Illegal instructions before constructor call */
        private Close() {
            boolean z6 = false;
            super(z6, z6, 3, null);
        }
    }

    @Immutable
    public static final class CurveTo extends PathNode {
        private final float x1;

        /* JADX INFO: renamed from: x2, reason: collision with root package name */
        private final float f98x2;

        /* JADX INFO: renamed from: x3, reason: collision with root package name */
        private final float f99x3;
        private final float y1;

        /* JADX INFO: renamed from: y2, reason: collision with root package name */
        private final float f100y2;

        /* JADX INFO: renamed from: y3, reason: collision with root package name */
        private final float f101y3;

        public CurveTo(float f, float f6, float f7, float f10, float f11, float f12) {
            super(true, false, 2, null);
            this.x1 = f;
            this.y1 = f6;
            this.f98x2 = f7;
            this.f100y2 = f10;
            this.f99x3 = f11;
            this.f101y3 = f12;
        }

        public final float c() {
            return this.x1;
        }

        public final float d() {
            return this.f98x2;
        }

        public final float e() {
            return this.f99x3;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CurveTo)) {
                return false;
            }
            CurveTo curveTo = (CurveTo) obj;
            return t.e(Float.valueOf(this.x1), Float.valueOf(curveTo.x1)) && t.e(Float.valueOf(this.y1), Float.valueOf(curveTo.y1)) && t.e(Float.valueOf(this.f98x2), Float.valueOf(curveTo.f98x2)) && t.e(Float.valueOf(this.f100y2), Float.valueOf(curveTo.f100y2)) && t.e(Float.valueOf(this.f99x3), Float.valueOf(curveTo.f99x3)) && t.e(Float.valueOf(this.f101y3), Float.valueOf(curveTo.f101y3));
        }

        public final float f() {
            return this.y1;
        }

        public final float g() {
            return this.f100y2;
        }

        public final float h() {
            return this.f101y3;
        }

        public int hashCode() {
            return (((((((((Float.floatToIntBits(this.x1) * 31) + Float.floatToIntBits(this.y1)) * 31) + Float.floatToIntBits(this.f98x2)) * 31) + Float.floatToIntBits(this.f100y2)) * 31) + Float.floatToIntBits(this.f99x3)) * 31) + Float.floatToIntBits(this.f101y3);
        }

        @NotNull
        public String toString() {
            return "CurveTo(x1=" + this.x1 + ", y1=" + this.y1 + ", x2=" + this.f98x2 + ", y2=" + this.f100y2 + ", x3=" + this.f99x3 + ", y3=" + this.f101y3 + ')';
        }
    }

    @Immutable
    public static final class HorizontalTo extends PathNode {

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private final float f102x;

        /* JADX WARN: Illegal instructions before constructor call */
        public HorizontalTo(float f) {
            boolean z6 = false;
            super(z6, z6, 3, null);
            this.f102x = f;
        }

        public final float c() {
            return this.f102x;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof HorizontalTo) && t.e(Float.valueOf(this.f102x), Float.valueOf(((HorizontalTo) obj).f102x));
        }

        public int hashCode() {
            return Float.floatToIntBits(this.f102x);
        }

        @NotNull
        public String toString() {
            return "HorizontalTo(x=" + this.f102x + ')';
        }
    }

    @Immutable
    public static final class LineTo extends PathNode {

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private final float f103x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private final float f104y;

        /* JADX WARN: Illegal instructions before constructor call */
        public LineTo(float f, float f6) {
            boolean z6 = false;
            super(z6, z6, 3, null);
            this.f103x = f;
            this.f104y = f6;
        }

        public final float c() {
            return this.f103x;
        }

        public final float d() {
            return this.f104y;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof LineTo)) {
                return false;
            }
            LineTo lineTo = (LineTo) obj;
            return t.e(Float.valueOf(this.f103x), Float.valueOf(lineTo.f103x)) && t.e(Float.valueOf(this.f104y), Float.valueOf(lineTo.f104y));
        }

        public int hashCode() {
            return (Float.floatToIntBits(this.f103x) * 31) + Float.floatToIntBits(this.f104y);
        }

        @NotNull
        public String toString() {
            return "LineTo(x=" + this.f103x + ", y=" + this.f104y + ')';
        }
    }

    @Immutable
    public static final class MoveTo extends PathNode {

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private final float f105x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private final float f106y;

        /* JADX WARN: Illegal instructions before constructor call */
        public MoveTo(float f, float f6) {
            boolean z6 = false;
            super(z6, z6, 3, null);
            this.f105x = f;
            this.f106y = f6;
        }

        public final float c() {
            return this.f105x;
        }

        public final float d() {
            return this.f106y;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MoveTo)) {
                return false;
            }
            MoveTo moveTo = (MoveTo) obj;
            return t.e(Float.valueOf(this.f105x), Float.valueOf(moveTo.f105x)) && t.e(Float.valueOf(this.f106y), Float.valueOf(moveTo.f106y));
        }

        public int hashCode() {
            return (Float.floatToIntBits(this.f105x) * 31) + Float.floatToIntBits(this.f106y);
        }

        @NotNull
        public String toString() {
            return "MoveTo(x=" + this.f105x + ", y=" + this.f106y + ')';
        }
    }

    @Immutable
    public static final class QuadTo extends PathNode {
        private final float x1;

        /* JADX INFO: renamed from: x2, reason: collision with root package name */
        private final float f107x2;
        private final float y1;

        /* JADX INFO: renamed from: y2, reason: collision with root package name */
        private final float f108y2;

        public QuadTo(float f, float f6, float f7, float f10) {
            super(false, true, 1 == true ? 1 : 0, null);
            this.x1 = f;
            this.y1 = f6;
            this.f107x2 = f7;
            this.f108y2 = f10;
        }

        public final float c() {
            return this.x1;
        }

        public final float d() {
            return this.f107x2;
        }

        public final float e() {
            return this.y1;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof QuadTo)) {
                return false;
            }
            QuadTo quadTo = (QuadTo) obj;
            return t.e(Float.valueOf(this.x1), Float.valueOf(quadTo.x1)) && t.e(Float.valueOf(this.y1), Float.valueOf(quadTo.y1)) && t.e(Float.valueOf(this.f107x2), Float.valueOf(quadTo.f107x2)) && t.e(Float.valueOf(this.f108y2), Float.valueOf(quadTo.f108y2));
        }

        public final float f() {
            return this.f108y2;
        }

        public int hashCode() {
            return (((((Float.floatToIntBits(this.x1) * 31) + Float.floatToIntBits(this.y1)) * 31) + Float.floatToIntBits(this.f107x2)) * 31) + Float.floatToIntBits(this.f108y2);
        }

        @NotNull
        public String toString() {
            return "QuadTo(x1=" + this.x1 + ", y1=" + this.y1 + ", x2=" + this.f107x2 + ", y2=" + this.f108y2 + ')';
        }
    }

    @Immutable
    public static final class ReflectiveCurveTo extends PathNode {
        private final float x1;

        /* JADX INFO: renamed from: x2, reason: collision with root package name */
        private final float f109x2;
        private final float y1;

        /* JADX INFO: renamed from: y2, reason: collision with root package name */
        private final float f110y2;

        public ReflectiveCurveTo(float f, float f6, float f7, float f10) {
            super(true, false, 2, null);
            this.x1 = f;
            this.y1 = f6;
            this.f109x2 = f7;
            this.f110y2 = f10;
        }

        public final float c() {
            return this.x1;
        }

        public final float d() {
            return this.f109x2;
        }

        public final float e() {
            return this.y1;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ReflectiveCurveTo)) {
                return false;
            }
            ReflectiveCurveTo reflectiveCurveTo = (ReflectiveCurveTo) obj;
            return t.e(Float.valueOf(this.x1), Float.valueOf(reflectiveCurveTo.x1)) && t.e(Float.valueOf(this.y1), Float.valueOf(reflectiveCurveTo.y1)) && t.e(Float.valueOf(this.f109x2), Float.valueOf(reflectiveCurveTo.f109x2)) && t.e(Float.valueOf(this.f110y2), Float.valueOf(reflectiveCurveTo.f110y2));
        }

        public final float f() {
            return this.f110y2;
        }

        public int hashCode() {
            return (((((Float.floatToIntBits(this.x1) * 31) + Float.floatToIntBits(this.y1)) * 31) + Float.floatToIntBits(this.f109x2)) * 31) + Float.floatToIntBits(this.f110y2);
        }

        @NotNull
        public String toString() {
            return "ReflectiveCurveTo(x1=" + this.x1 + ", y1=" + this.y1 + ", x2=" + this.f109x2 + ", y2=" + this.f110y2 + ')';
        }
    }

    @Immutable
    public static final class ReflectiveQuadTo extends PathNode {

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private final float f111x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private final float f112y;

        public ReflectiveQuadTo(float f, float f6) {
            super(false, true, 1 == true ? 1 : 0, null);
            this.f111x = f;
            this.f112y = f6;
        }

        public final float c() {
            return this.f111x;
        }

        public final float d() {
            return this.f112y;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ReflectiveQuadTo)) {
                return false;
            }
            ReflectiveQuadTo reflectiveQuadTo = (ReflectiveQuadTo) obj;
            return t.e(Float.valueOf(this.f111x), Float.valueOf(reflectiveQuadTo.f111x)) && t.e(Float.valueOf(this.f112y), Float.valueOf(reflectiveQuadTo.f112y));
        }

        public int hashCode() {
            return (Float.floatToIntBits(this.f111x) * 31) + Float.floatToIntBits(this.f112y);
        }

        @NotNull
        public String toString() {
            return "ReflectiveQuadTo(x=" + this.f111x + ", y=" + this.f112y + ')';
        }
    }

    @Immutable
    public static final class RelativeArcTo extends PathNode {
        private final float arcStartDx;
        private final float arcStartDy;
        private final float horizontalEllipseRadius;
        private final boolean isMoreThanHalf;
        private final boolean isPositiveArc;
        private final float theta;
        private final float verticalEllipseRadius;

        /* JADX WARN: Illegal instructions before constructor call */
        public RelativeArcTo(float f, float f6, float f7, boolean z6, boolean z10, float f10, float f11) {
            boolean z11 = false;
            super(z11, z11, 3, null);
            this.horizontalEllipseRadius = f;
            this.verticalEllipseRadius = f6;
            this.theta = f7;
            this.isMoreThanHalf = z6;
            this.isPositiveArc = z10;
            this.arcStartDx = f10;
            this.arcStartDy = f11;
        }

        public final float c() {
            return this.arcStartDx;
        }

        public final float d() {
            return this.arcStartDy;
        }

        public final float e() {
            return this.horizontalEllipseRadius;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RelativeArcTo)) {
                return false;
            }
            RelativeArcTo relativeArcTo = (RelativeArcTo) obj;
            return t.e(Float.valueOf(this.horizontalEllipseRadius), Float.valueOf(relativeArcTo.horizontalEllipseRadius)) && t.e(Float.valueOf(this.verticalEllipseRadius), Float.valueOf(relativeArcTo.verticalEllipseRadius)) && t.e(Float.valueOf(this.theta), Float.valueOf(relativeArcTo.theta)) && this.isMoreThanHalf == relativeArcTo.isMoreThanHalf && this.isPositiveArc == relativeArcTo.isPositiveArc && t.e(Float.valueOf(this.arcStartDx), Float.valueOf(relativeArcTo.arcStartDx)) && t.e(Float.valueOf(this.arcStartDy), Float.valueOf(relativeArcTo.arcStartDy));
        }

        public final float f() {
            return this.theta;
        }

        public final float g() {
            return this.verticalEllipseRadius;
        }

        public final boolean h() {
            return this.isMoreThanHalf;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v7, types: [int] */
        /* JADX WARN: Type inference failed for: r0v9, types: [int] */
        /* JADX WARN: Type inference failed for: r1v11 */
        /* JADX WARN: Type inference failed for: r1v12 */
        /* JADX WARN: Type inference failed for: r1v5, types: [int] */
        /* JADX WARN: Type inference failed for: r2v0 */
        /* JADX WARN: Type inference failed for: r2v1, types: [int] */
        /* JADX WARN: Type inference failed for: r2v2 */
        public int hashCode() {
            int iFloatToIntBits = ((((Float.floatToIntBits(this.horizontalEllipseRadius) * 31) + Float.floatToIntBits(this.verticalEllipseRadius)) * 31) + Float.floatToIntBits(this.theta)) * 31;
            boolean z6 = this.isMoreThanHalf;
            ?? r1 = z6;
            if (z6) {
                r1 = 1;
            }
            int i10 = (iFloatToIntBits + r1) * 31;
            boolean z10 = this.isPositiveArc;
            return ((((i10 + (z10 ? 1 : z10)) * 31) + Float.floatToIntBits(this.arcStartDx)) * 31) + Float.floatToIntBits(this.arcStartDy);
        }

        public final boolean i() {
            return this.isPositiveArc;
        }

        @NotNull
        public String toString() {
            return "RelativeArcTo(horizontalEllipseRadius=" + this.horizontalEllipseRadius + ", verticalEllipseRadius=" + this.verticalEllipseRadius + ", theta=" + this.theta + ", isMoreThanHalf=" + this.isMoreThanHalf + ", isPositiveArc=" + this.isPositiveArc + ", arcStartDx=" + this.arcStartDx + ", arcStartDy=" + this.arcStartDy + ')';
        }
    }

    @Immutable
    public static final class RelativeCurveTo extends PathNode {
        private final float dx1;
        private final float dx2;
        private final float dx3;
        private final float dy1;
        private final float dy2;
        private final float dy3;

        public RelativeCurveTo(float f, float f6, float f7, float f10, float f11, float f12) {
            super(true, false, 2, null);
            this.dx1 = f;
            this.dy1 = f6;
            this.dx2 = f7;
            this.dy2 = f10;
            this.dx3 = f11;
            this.dy3 = f12;
        }

        public final float c() {
            return this.dx1;
        }

        public final float d() {
            return this.dx2;
        }

        public final float e() {
            return this.dx3;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RelativeCurveTo)) {
                return false;
            }
            RelativeCurveTo relativeCurveTo = (RelativeCurveTo) obj;
            return t.e(Float.valueOf(this.dx1), Float.valueOf(relativeCurveTo.dx1)) && t.e(Float.valueOf(this.dy1), Float.valueOf(relativeCurveTo.dy1)) && t.e(Float.valueOf(this.dx2), Float.valueOf(relativeCurveTo.dx2)) && t.e(Float.valueOf(this.dy2), Float.valueOf(relativeCurveTo.dy2)) && t.e(Float.valueOf(this.dx3), Float.valueOf(relativeCurveTo.dx3)) && t.e(Float.valueOf(this.dy3), Float.valueOf(relativeCurveTo.dy3));
        }

        public final float f() {
            return this.dy1;
        }

        public final float g() {
            return this.dy2;
        }

        public final float h() {
            return this.dy3;
        }

        public int hashCode() {
            return (((((((((Float.floatToIntBits(this.dx1) * 31) + Float.floatToIntBits(this.dy1)) * 31) + Float.floatToIntBits(this.dx2)) * 31) + Float.floatToIntBits(this.dy2)) * 31) + Float.floatToIntBits(this.dx3)) * 31) + Float.floatToIntBits(this.dy3);
        }

        @NotNull
        public String toString() {
            return "RelativeCurveTo(dx1=" + this.dx1 + ", dy1=" + this.dy1 + ", dx2=" + this.dx2 + ", dy2=" + this.dy2 + ", dx3=" + this.dx3 + ", dy3=" + this.dy3 + ')';
        }
    }

    @Immutable
    public static final class RelativeHorizontalTo extends PathNode {
        private final float dx;

        /* JADX WARN: Illegal instructions before constructor call */
        public RelativeHorizontalTo(float f) {
            boolean z6 = false;
            super(z6, z6, 3, null);
            this.dx = f;
        }

        public final float c() {
            return this.dx;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof RelativeHorizontalTo) && t.e(Float.valueOf(this.dx), Float.valueOf(((RelativeHorizontalTo) obj).dx));
        }

        public int hashCode() {
            return Float.floatToIntBits(this.dx);
        }

        @NotNull
        public String toString() {
            return "RelativeHorizontalTo(dx=" + this.dx + ')';
        }
    }

    @Immutable
    public static final class RelativeLineTo extends PathNode {
        private final float dx;
        private final float dy;

        /* JADX WARN: Illegal instructions before constructor call */
        public RelativeLineTo(float f, float f6) {
            boolean z6 = false;
            super(z6, z6, 3, null);
            this.dx = f;
            this.dy = f6;
        }

        public final float c() {
            return this.dx;
        }

        public final float d() {
            return this.dy;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RelativeLineTo)) {
                return false;
            }
            RelativeLineTo relativeLineTo = (RelativeLineTo) obj;
            return t.e(Float.valueOf(this.dx), Float.valueOf(relativeLineTo.dx)) && t.e(Float.valueOf(this.dy), Float.valueOf(relativeLineTo.dy));
        }

        public int hashCode() {
            return (Float.floatToIntBits(this.dx) * 31) + Float.floatToIntBits(this.dy);
        }

        @NotNull
        public String toString() {
            return "RelativeLineTo(dx=" + this.dx + ", dy=" + this.dy + ')';
        }
    }

    @Immutable
    public static final class RelativeMoveTo extends PathNode {
        private final float dx;
        private final float dy;

        /* JADX WARN: Illegal instructions before constructor call */
        public RelativeMoveTo(float f, float f6) {
            boolean z6 = false;
            super(z6, z6, 3, null);
            this.dx = f;
            this.dy = f6;
        }

        public final float c() {
            return this.dx;
        }

        public final float d() {
            return this.dy;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RelativeMoveTo)) {
                return false;
            }
            RelativeMoveTo relativeMoveTo = (RelativeMoveTo) obj;
            return t.e(Float.valueOf(this.dx), Float.valueOf(relativeMoveTo.dx)) && t.e(Float.valueOf(this.dy), Float.valueOf(relativeMoveTo.dy));
        }

        public int hashCode() {
            return (Float.floatToIntBits(this.dx) * 31) + Float.floatToIntBits(this.dy);
        }

        @NotNull
        public String toString() {
            return "RelativeMoveTo(dx=" + this.dx + ", dy=" + this.dy + ')';
        }
    }

    @Immutable
    public static final class RelativeQuadTo extends PathNode {
        private final float dx1;
        private final float dx2;
        private final float dy1;
        private final float dy2;

        public RelativeQuadTo(float f, float f6, float f7, float f10) {
            super(false, true, 1 == true ? 1 : 0, null);
            this.dx1 = f;
            this.dy1 = f6;
            this.dx2 = f7;
            this.dy2 = f10;
        }

        public final float c() {
            return this.dx1;
        }

        public final float d() {
            return this.dx2;
        }

        public final float e() {
            return this.dy1;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RelativeQuadTo)) {
                return false;
            }
            RelativeQuadTo relativeQuadTo = (RelativeQuadTo) obj;
            return t.e(Float.valueOf(this.dx1), Float.valueOf(relativeQuadTo.dx1)) && t.e(Float.valueOf(this.dy1), Float.valueOf(relativeQuadTo.dy1)) && t.e(Float.valueOf(this.dx2), Float.valueOf(relativeQuadTo.dx2)) && t.e(Float.valueOf(this.dy2), Float.valueOf(relativeQuadTo.dy2));
        }

        public final float f() {
            return this.dy2;
        }

        public int hashCode() {
            return (((((Float.floatToIntBits(this.dx1) * 31) + Float.floatToIntBits(this.dy1)) * 31) + Float.floatToIntBits(this.dx2)) * 31) + Float.floatToIntBits(this.dy2);
        }

        @NotNull
        public String toString() {
            return "RelativeQuadTo(dx1=" + this.dx1 + ", dy1=" + this.dy1 + ", dx2=" + this.dx2 + ", dy2=" + this.dy2 + ')';
        }
    }

    @Immutable
    public static final class RelativeReflectiveCurveTo extends PathNode {
        private final float dx1;
        private final float dx2;
        private final float dy1;
        private final float dy2;

        public RelativeReflectiveCurveTo(float f, float f6, float f7, float f10) {
            super(true, false, 2, null);
            this.dx1 = f;
            this.dy1 = f6;
            this.dx2 = f7;
            this.dy2 = f10;
        }

        public final float c() {
            return this.dx1;
        }

        public final float d() {
            return this.dx2;
        }

        public final float e() {
            return this.dy1;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RelativeReflectiveCurveTo)) {
                return false;
            }
            RelativeReflectiveCurveTo relativeReflectiveCurveTo = (RelativeReflectiveCurveTo) obj;
            return t.e(Float.valueOf(this.dx1), Float.valueOf(relativeReflectiveCurveTo.dx1)) && t.e(Float.valueOf(this.dy1), Float.valueOf(relativeReflectiveCurveTo.dy1)) && t.e(Float.valueOf(this.dx2), Float.valueOf(relativeReflectiveCurveTo.dx2)) && t.e(Float.valueOf(this.dy2), Float.valueOf(relativeReflectiveCurveTo.dy2));
        }

        public final float f() {
            return this.dy2;
        }

        public int hashCode() {
            return (((((Float.floatToIntBits(this.dx1) * 31) + Float.floatToIntBits(this.dy1)) * 31) + Float.floatToIntBits(this.dx2)) * 31) + Float.floatToIntBits(this.dy2);
        }

        @NotNull
        public String toString() {
            return "RelativeReflectiveCurveTo(dx1=" + this.dx1 + ", dy1=" + this.dy1 + ", dx2=" + this.dx2 + ", dy2=" + this.dy2 + ')';
        }
    }

    @Immutable
    public static final class RelativeReflectiveQuadTo extends PathNode {
        private final float dx;
        private final float dy;

        public RelativeReflectiveQuadTo(float f, float f6) {
            super(false, true, 1 == true ? 1 : 0, null);
            this.dx = f;
            this.dy = f6;
        }

        public final float c() {
            return this.dx;
        }

        public final float d() {
            return this.dy;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RelativeReflectiveQuadTo)) {
                return false;
            }
            RelativeReflectiveQuadTo relativeReflectiveQuadTo = (RelativeReflectiveQuadTo) obj;
            return t.e(Float.valueOf(this.dx), Float.valueOf(relativeReflectiveQuadTo.dx)) && t.e(Float.valueOf(this.dy), Float.valueOf(relativeReflectiveQuadTo.dy));
        }

        public int hashCode() {
            return (Float.floatToIntBits(this.dx) * 31) + Float.floatToIntBits(this.dy);
        }

        @NotNull
        public String toString() {
            return "RelativeReflectiveQuadTo(dx=" + this.dx + ", dy=" + this.dy + ')';
        }
    }

    @Immutable
    public static final class RelativeVerticalTo extends PathNode {
        private final float dy;

        /* JADX WARN: Illegal instructions before constructor call */
        public RelativeVerticalTo(float f) {
            boolean z6 = false;
            super(z6, z6, 3, null);
            this.dy = f;
        }

        public final float c() {
            return this.dy;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof RelativeVerticalTo) && t.e(Float.valueOf(this.dy), Float.valueOf(((RelativeVerticalTo) obj).dy));
        }

        public int hashCode() {
            return Float.floatToIntBits(this.dy);
        }

        @NotNull
        public String toString() {
            return "RelativeVerticalTo(dy=" + this.dy + ')';
        }
    }

    @Immutable
    public static final class VerticalTo extends PathNode {

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private final float f113y;

        /* JADX WARN: Illegal instructions before constructor call */
        public VerticalTo(float f) {
            boolean z6 = false;
            super(z6, z6, 3, null);
            this.f113y = f;
        }

        public final float c() {
            return this.f113y;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof VerticalTo) && t.e(Float.valueOf(this.f113y), Float.valueOf(((VerticalTo) obj).f113y));
        }

        public int hashCode() {
            return Float.floatToIntBits(this.f113y);
        }

        @NotNull
        public String toString() {
            return "VerticalTo(y=" + this.f113y + ')';
        }
    }

    public /* synthetic */ PathNode(boolean z6, boolean z10, k kVar) {
        this(z6, z10);
    }

    public final boolean a() {
        return this.isCurve;
    }

    public final boolean b() {
        return this.isQuad;
    }

    private PathNode(boolean z6, boolean z10) {
        this.isCurve = z6;
        this.isQuad = z10;
    }

    public /* synthetic */ PathNode(boolean z6, boolean z10, int i10, k kVar) {
        this((i10 & 1) != 0 ? false : z6, (i10 & 2) != 0 ? false : z10, null);
    }
}
