package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.Path;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.o;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class PathParser {

    @NotNull
    private final PathPoint ctrlPoint;

    @NotNull
    private final PathPoint currentPoint;

    @NotNull
    private final List<PathNode> nodes = new ArrayList();

    @NotNull
    private final PathPoint reflectiveCtrlPoint;

    @NotNull
    private final PathPoint segmentPoint;

    private static final class ExtractFloatResult {
        private int endPosition;
        private boolean endWithNegativeOrDot;

        /* JADX WARN: Multi-variable type inference failed */
        public ExtractFloatResult() {
            this(0, 0 == true ? 1 : 0, 3, null);
        }

        public final int a() {
            return this.endPosition;
        }

        public final boolean b() {
            return this.endWithNegativeOrDot;
        }

        public final void c(int i10) {
            this.endPosition = i10;
        }

        public final void d(boolean z6) {
            this.endWithNegativeOrDot = z6;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ExtractFloatResult)) {
                return false;
            }
            ExtractFloatResult extractFloatResult = (ExtractFloatResult) obj;
            return this.endPosition == extractFloatResult.endPosition && this.endWithNegativeOrDot == extractFloatResult.endWithNegativeOrDot;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v2, types: [int] */
        /* JADX WARN: Type inference failed for: r1v1, types: [int] */
        /* JADX WARN: Type inference failed for: r1v2 */
        /* JADX WARN: Type inference failed for: r1v3 */
        public int hashCode() {
            int i10 = this.endPosition * 31;
            boolean z6 = this.endWithNegativeOrDot;
            ?? r1 = z6;
            if (z6) {
                r1 = 1;
            }
            return i10 + r1;
        }

        @NotNull
        public String toString() {
            return "ExtractFloatResult(endPosition=" + this.endPosition + ", endWithNegativeOrDot=" + this.endWithNegativeOrDot + ')';
        }

        public ExtractFloatResult(int i10, boolean z6) {
            this.endPosition = i10;
            this.endWithNegativeOrDot = z6;
        }

        public /* synthetic */ ExtractFloatResult(int i10, boolean z6, int i11, k kVar) {
            this((i11 & 1) != 0 ? 0 : i10, (i11 & 2) != 0 ? false : z6);
        }
    }

    private static final class PathPoint {

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private float f114x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private float f115y;

        /* JADX WARN: Illegal instructions before constructor call */
        public PathPoint() {
            float f = 0.0f;
            this(f, f, 3, null);
        }

        public final float a() {
            return this.f114x;
        }

        public final float b() {
            return this.f115y;
        }

        public final void c() {
            this.f114x = 0.0f;
            this.f115y = 0.0f;
        }

        public final void d(float f) {
            this.f114x = f;
        }

        public final void e(float f) {
            this.f115y = f;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PathPoint)) {
                return false;
            }
            PathPoint pathPoint = (PathPoint) obj;
            return t.e(Float.valueOf(this.f114x), Float.valueOf(pathPoint.f114x)) && t.e(Float.valueOf(this.f115y), Float.valueOf(pathPoint.f115y));
        }

        public int hashCode() {
            return (Float.floatToIntBits(this.f114x) * 31) + Float.floatToIntBits(this.f115y);
        }

        @NotNull
        public String toString() {
            return "PathPoint(x=" + this.f114x + ", y=" + this.f115y + ')';
        }

        public PathPoint(float f, float f6) {
            this.f114x = f;
            this.f115y = f6;
        }

        public /* synthetic */ PathPoint(float f, float f6, int i10, k kVar) {
            this((i10 & 1) != 0 ? 0.0f : f, (i10 & 2) != 0 ? 0.0f : f6);
        }
    }

    private final double E(double d) {
        return (d / ((double) 180)) * 3.141592653589793d;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0043  */
    private final void j(String str, int i10, ExtractFloatResult extractFloatResult) {
        extractFloatResult.d(false);
        int i11 = i10;
        boolean z6 = false;
        boolean z10 = false;
        boolean z11 = false;
        while (i11 < str.length()) {
            char cCharAt = str.charAt(i11);
            if (cCharAt == ' ' || cCharAt == ',') {
                z6 = false;
                z11 = true;
            } else if (cCharAt == '-') {
                if (i11 == i10 || z6) {
                    z6 = false;
                } else {
                    extractFloatResult.d(true);
                    z6 = false;
                    z11 = true;
                }
            } else if (cCharAt == '.') {
                if (z10) {
                    extractFloatResult.d(true);
                    z6 = false;
                    z11 = true;
                } else {
                    z6 = false;
                    z10 = true;
                }
            } else if (cCharAt == 'e' || cCharAt == 'E') {
                z6 = true;
            } else {
                z6 = false;
            }
            if (z11) {
                break;
            } else {
                i11++;
            }
        }
        extractFloatResult.c(i11);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final float[] k(String str) {
        int i10 = 0;
        Object[] objArr = 0;
        if (str.charAt(0) == 'z' || str.charAt(0) == 'Z') {
            return new float[0];
        }
        float[] fArr = new float[str.length()];
        ExtractFloatResult extractFloatResult = new ExtractFloatResult(i10, objArr == true ? 1 : 0, 3, null);
        int length = str.length();
        int i11 = 1;
        int i12 = 0;
        while (i11 < length) {
            j(str, i11, extractFloatResult);
            int iA = extractFloatResult.a();
            if (i11 < iA) {
                String strSubstring = str.substring(i11, iA);
                t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                fArr[i12] = Float.parseFloat(strSubstring);
                i12++;
            }
            i11 = extractFloatResult.b() ? iA : iA + 1;
        }
        return g(fArr, 0, i12);
    }

    @NotNull
    public final List<PathNode> C() {
        return this.nodes;
    }

    private final void A(PathNode.RelativeReflectiveQuadTo relativeReflectiveQuadTo, boolean z6, Path path) {
        if (z6) {
            this.reflectiveCtrlPoint.d(this.currentPoint.a() - this.ctrlPoint.a());
            this.reflectiveCtrlPoint.e(this.currentPoint.b() - this.ctrlPoint.b());
        } else {
            this.reflectiveCtrlPoint.c();
        }
        path.c(this.reflectiveCtrlPoint.a(), this.reflectiveCtrlPoint.b(), relativeReflectiveQuadTo.c(), relativeReflectiveQuadTo.d());
        this.ctrlPoint.d(this.currentPoint.a() + this.reflectiveCtrlPoint.a());
        this.ctrlPoint.e(this.currentPoint.b() + this.reflectiveCtrlPoint.b());
        PathPoint pathPoint = this.currentPoint;
        pathPoint.d(pathPoint.a() + relativeReflectiveQuadTo.c());
        PathPoint pathPoint2 = this.currentPoint;
        pathPoint2.e(pathPoint2.b() + relativeReflectiveQuadTo.d());
    }

    private final void F(PathNode.VerticalTo verticalTo, Path path) {
        path.lineTo(this.currentPoint.a(), verticalTo.c());
        this.currentPoint.e(verticalTo.c());
    }

    private final void a(char c7, float[] fArr) {
        this.nodes.addAll(PathNodeKt.a(c7, fArr));
    }

    private final void c(PathNode.ArcTo arcTo, Path path) {
        i(path, this.currentPoint.a(), this.currentPoint.b(), arcTo.c(), arcTo.d(), arcTo.e(), arcTo.g(), arcTo.f(), arcTo.h(), arcTo.i());
        this.currentPoint.d(arcTo.c());
        this.currentPoint.e(arcTo.d());
        this.ctrlPoint.d(this.currentPoint.a());
        this.ctrlPoint.e(this.currentPoint.b());
    }

    private final void d(Path path, double d, double d2, double d6, double d7, double d10, double d11, double d12, double d13, double d14) {
        double d15 = d6;
        double d16 = 4;
        int iCeil = (int) Math.ceil(Math.abs((d14 * d16) / 3.141592653589793d));
        double dCos = Math.cos(d12);
        double dSin = Math.sin(d12);
        double dCos2 = Math.cos(d13);
        double dSin2 = Math.sin(d13);
        double d17 = -d15;
        double d18 = d17 * dCos;
        double d19 = d7 * dSin;
        double d20 = (d18 * dSin2) - (d19 * dCos2);
        double d21 = d17 * dSin;
        double d22 = d7 * dCos;
        double d23 = (dSin2 * d21) + (dCos2 * d22);
        double d24 = d14 / ((double) iCeil);
        double d25 = d10;
        double d26 = d23;
        double d27 = d20;
        int i10 = 0;
        double d28 = d11;
        double d29 = d13;
        while (i10 < iCeil) {
            double d30 = d29 + d24;
            double dSin3 = Math.sin(d30);
            double dCos3 = Math.cos(d30);
            int i11 = iCeil;
            double d31 = (d + ((d15 * dCos) * dCos3)) - (d19 * dSin3);
            double d32 = d2 + (d15 * dSin * dCos3) + (d22 * dSin3);
            double d33 = (d18 * dSin3) - (d19 * dCos3);
            double d34 = (dSin3 * d21) + (dCos3 * d22);
            double d35 = d30 - d29;
            double dTan = Math.tan(d35 / ((double) 2));
            double dSin4 = (Math.sin(d35) * (Math.sqrt(d16 + ((3.0d * dTan) * dTan)) - ((double) 1))) / ((double) 3);
            path.cubicTo((float) (d25 + (d27 * dSin4)), (float) (d28 + (d26 * dSin4)), (float) (d31 - (dSin4 * d33)), (float) (d32 - (dSin4 * d34)), (float) d31, (float) d32);
            i10++;
            d24 = d24;
            dSin = dSin;
            d25 = d31;
            d21 = d21;
            d29 = d30;
            d26 = d34;
            d16 = d16;
            d27 = d33;
            dCos = dCos;
            iCeil = i11;
            d28 = d32;
            d15 = d6;
        }
    }

    private final void f(Path path) {
        this.currentPoint.d(this.segmentPoint.a());
        this.currentPoint.e(this.segmentPoint.b());
        this.ctrlPoint.d(this.segmentPoint.a());
        this.ctrlPoint.e(this.segmentPoint.b());
        path.close();
        path.moveTo(this.currentPoint.a(), this.currentPoint.b());
    }

    private final float[] g(float[] fArr, int i10, int i11) {
        if (i10 > i11) {
            throw new IllegalArgumentException();
        }
        int length = fArr.length;
        if (i10 < 0 || i10 > length) {
            throw new IndexOutOfBoundsException();
        }
        int i12 = i11 - i10;
        int iMin = Math.min(i12, length - i10);
        float[] fArr2 = new float[i12];
        o.f(fArr, fArr2, 0, i10, iMin + i10);
        return fArr2;
    }

    private final void i(Path path, double d, double d2, double d6, double d7, double d10, double d11, double d12, boolean z6, boolean z10) {
        double d13;
        double d14;
        double dE = E(d12);
        double dCos = Math.cos(dE);
        double dSin = Math.sin(dE);
        double d15 = ((d * dCos) + (d2 * dSin)) / d10;
        double d16 = (((-d) * dSin) + (d2 * dCos)) / d11;
        double d17 = ((d6 * dCos) + (d7 * dSin)) / d10;
        double d18 = (((-d6) * dSin) + (d7 * dCos)) / d11;
        double d19 = d15 - d17;
        double d20 = d16 - d18;
        double d21 = 2;
        double d22 = (d15 + d17) / d21;
        double d23 = (d16 + d18) / d21;
        double d24 = (d19 * d19) + (d20 * d20);
        if (d24 == com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE) {
            return;
        }
        double d25 = (1.0d / d24) - 0.25d;
        if (d25 < com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE) {
            double dSqrt = (float) (Math.sqrt(d24) / 1.99999d);
            i(path, d, d2, d6, d7, d10 * dSqrt, d11 * dSqrt, d12, z6, z10);
            return;
        }
        double dSqrt2 = Math.sqrt(d25);
        double d26 = d19 * dSqrt2;
        double d27 = dSqrt2 * d20;
        if (z6 == z10) {
            d13 = d22 - d27;
            d14 = d23 + d26;
        } else {
            d13 = d22 + d27;
            d14 = d23 - d26;
        }
        double dAtan2 = Math.atan2(d16 - d14, d15 - d13);
        double dAtan3 = Math.atan2(d18 - d14, d17 - d13) - dAtan2;
        if (z10 != (dAtan3 >= com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE)) {
            dAtan3 = dAtan3 > com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE ? dAtan3 - 6.283185307179586d : dAtan3 + 6.283185307179586d;
        }
        double d28 = d13 * d10;
        double d29 = d14 * d11;
        d(path, (d28 * dCos) - (d29 * dSin), (d28 * dSin) + (d29 * dCos), d10, d11, d, d2, dE, dAtan2, dAtan3);
    }

    private final void n(PathNode.MoveTo moveTo, Path path) {
        this.currentPoint.d(moveTo.c());
        this.currentPoint.e(moveTo.d());
        path.moveTo(moveTo.c(), moveTo.d());
        this.segmentPoint.d(this.currentPoint.a());
        this.segmentPoint.e(this.currentPoint.b());
    }

    private final void r(PathNode.ReflectiveCurveTo reflectiveCurveTo, boolean z6, Path path) {
        if (z6) {
            float f = 2;
            this.reflectiveCtrlPoint.d((this.currentPoint.a() * f) - this.ctrlPoint.a());
            this.reflectiveCtrlPoint.e((f * this.currentPoint.b()) - this.ctrlPoint.b());
        } else {
            this.reflectiveCtrlPoint.d(this.currentPoint.a());
            this.reflectiveCtrlPoint.e(this.currentPoint.b());
        }
        path.cubicTo(this.reflectiveCtrlPoint.a(), this.reflectiveCtrlPoint.b(), reflectiveCurveTo.c(), reflectiveCurveTo.e(), reflectiveCurveTo.d(), reflectiveCurveTo.f());
        this.ctrlPoint.d(reflectiveCurveTo.c());
        this.ctrlPoint.e(reflectiveCurveTo.e());
        this.currentPoint.d(reflectiveCurveTo.d());
        this.currentPoint.e(reflectiveCurveTo.f());
    }

    private final void s(PathNode.ReflectiveQuadTo reflectiveQuadTo, boolean z6, Path path) {
        if (z6) {
            float f = 2;
            this.reflectiveCtrlPoint.d((this.currentPoint.a() * f) - this.ctrlPoint.a());
            this.reflectiveCtrlPoint.e((f * this.currentPoint.b()) - this.ctrlPoint.b());
        } else {
            this.reflectiveCtrlPoint.d(this.currentPoint.a());
            this.reflectiveCtrlPoint.e(this.currentPoint.b());
        }
        path.h(this.reflectiveCtrlPoint.a(), this.reflectiveCtrlPoint.b(), reflectiveQuadTo.c(), reflectiveQuadTo.d());
        this.ctrlPoint.d(this.reflectiveCtrlPoint.a());
        this.ctrlPoint.e(this.reflectiveCtrlPoint.b());
        this.currentPoint.d(reflectiveQuadTo.c());
        this.currentPoint.e(reflectiveQuadTo.d());
    }

    private final void t(PathNode.RelativeArcTo relativeArcTo, Path path) {
        float fC = relativeArcTo.c() + this.currentPoint.a();
        float fD = relativeArcTo.d() + this.currentPoint.b();
        i(path, this.currentPoint.a(), this.currentPoint.b(), fC, fD, relativeArcTo.e(), relativeArcTo.g(), relativeArcTo.f(), relativeArcTo.h(), relativeArcTo.i());
        this.currentPoint.d(fC);
        this.currentPoint.e(fD);
        this.ctrlPoint.d(this.currentPoint.a());
        this.ctrlPoint.e(this.currentPoint.b());
    }

    private final void x(PathNode.RelativeMoveTo relativeMoveTo, Path path) {
        PathPoint pathPoint = this.currentPoint;
        pathPoint.d(pathPoint.a() + relativeMoveTo.c());
        PathPoint pathPoint2 = this.currentPoint;
        pathPoint2.e(pathPoint2.b() + relativeMoveTo.d());
        path.a(relativeMoveTo.c(), relativeMoveTo.d());
        this.segmentPoint.d(this.currentPoint.a());
        this.segmentPoint.e(this.currentPoint.b());
    }

    private final void z(PathNode.RelativeReflectiveCurveTo relativeReflectiveCurveTo, boolean z6, Path path) {
        if (z6) {
            this.reflectiveCtrlPoint.d(this.currentPoint.a() - this.ctrlPoint.a());
            this.reflectiveCtrlPoint.e(this.currentPoint.b() - this.ctrlPoint.b());
        } else {
            this.reflectiveCtrlPoint.c();
        }
        path.b(this.reflectiveCtrlPoint.a(), this.reflectiveCtrlPoint.b(), relativeReflectiveCurveTo.c(), relativeReflectiveCurveTo.e(), relativeReflectiveCurveTo.d(), relativeReflectiveCurveTo.f());
        this.ctrlPoint.d(this.currentPoint.a() + relativeReflectiveCurveTo.c());
        this.ctrlPoint.e(this.currentPoint.b() + relativeReflectiveCurveTo.e());
        PathPoint pathPoint = this.currentPoint;
        pathPoint.d(pathPoint.a() + relativeReflectiveCurveTo.d());
        PathPoint pathPoint2 = this.currentPoint;
        pathPoint2.e(pathPoint2.b() + relativeReflectiveCurveTo.f());
    }

    @NotNull
    public final Path D(@NotNull Path target) {
        t.j(target, "target");
        target.reset();
        this.currentPoint.c();
        this.ctrlPoint.c();
        this.segmentPoint.c();
        this.reflectiveCtrlPoint.c();
        List<PathNode> list = this.nodes;
        int size = list.size();
        PathNode pathNode = null;
        int i10 = 0;
        while (i10 < size) {
            PathNode pathNode2 = list.get(i10);
            if (pathNode == null) {
                pathNode = pathNode2;
            }
            if (pathNode2 instanceof PathNode.Close) {
                f(target);
            } else if (pathNode2 instanceof PathNode.RelativeMoveTo) {
                x((PathNode.RelativeMoveTo) pathNode2, target);
            } else if (pathNode2 instanceof PathNode.MoveTo) {
                n((PathNode.MoveTo) pathNode2, target);
            } else if (pathNode2 instanceof PathNode.RelativeLineTo) {
                w((PathNode.RelativeLineTo) pathNode2, target);
            } else if (pathNode2 instanceof PathNode.LineTo) {
                m((PathNode.LineTo) pathNode2, target);
            } else if (pathNode2 instanceof PathNode.RelativeHorizontalTo) {
                v((PathNode.RelativeHorizontalTo) pathNode2, target);
            } else if (pathNode2 instanceof PathNode.HorizontalTo) {
                l((PathNode.HorizontalTo) pathNode2, target);
            } else if (pathNode2 instanceof PathNode.RelativeVerticalTo) {
                B((PathNode.RelativeVerticalTo) pathNode2, target);
            } else if (pathNode2 instanceof PathNode.VerticalTo) {
                F((PathNode.VerticalTo) pathNode2, target);
            } else if (pathNode2 instanceof PathNode.RelativeCurveTo) {
                u((PathNode.RelativeCurveTo) pathNode2, target);
            } else if (pathNode2 instanceof PathNode.CurveTo) {
                h((PathNode.CurveTo) pathNode2, target);
            } else if (pathNode2 instanceof PathNode.RelativeReflectiveCurveTo) {
                t.g(pathNode);
                z((PathNode.RelativeReflectiveCurveTo) pathNode2, pathNode.a(), target);
            } else if (pathNode2 instanceof PathNode.ReflectiveCurveTo) {
                t.g(pathNode);
                r((PathNode.ReflectiveCurveTo) pathNode2, pathNode.a(), target);
            } else if (pathNode2 instanceof PathNode.RelativeQuadTo) {
                y((PathNode.RelativeQuadTo) pathNode2, target);
            } else if (pathNode2 instanceof PathNode.QuadTo) {
                q((PathNode.QuadTo) pathNode2, target);
            } else if (pathNode2 instanceof PathNode.RelativeReflectiveQuadTo) {
                t.g(pathNode);
                A((PathNode.RelativeReflectiveQuadTo) pathNode2, pathNode.b(), target);
            } else if (pathNode2 instanceof PathNode.ReflectiveQuadTo) {
                t.g(pathNode);
                s((PathNode.ReflectiveQuadTo) pathNode2, pathNode.b(), target);
            } else if (pathNode2 instanceof PathNode.RelativeArcTo) {
                t((PathNode.RelativeArcTo) pathNode2, target);
            } else if (pathNode2 instanceof PathNode.ArcTo) {
                c((PathNode.ArcTo) pathNode2, target);
            }
            i10++;
            pathNode = pathNode2;
        }
        return target;
    }

    @NotNull
    public final PathParser b(@NotNull List<? extends PathNode> nodes) {
        t.j(nodes, "nodes");
        this.nodes.addAll(nodes);
        return this;
    }

    public final void e() {
        this.nodes.clear();
    }

    @NotNull
    public final PathParser p(@NotNull String pathData) {
        t.j(pathData, "pathData");
        this.nodes.clear();
        int i10 = 0;
        int i11 = 1;
        while (i11 < pathData.length()) {
            int iO = o(pathData, i11);
            String strSubstring = pathData.substring(i10, iO);
            t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            int length = strSubstring.length() - 1;
            int i12 = 0;
            boolean z6 = false;
            while (i12 <= length) {
                boolean z10 = t.l(strSubstring.charAt(!z6 ? i12 : length), 32) <= 0;
                if (z6) {
                    if (!z10) {
                        break;
                    }
                    length--;
                } else if (z10) {
                    i12++;
                } else {
                    z6 = true;
                }
            }
            String string = strSubstring.subSequence(i12, length + 1).toString();
            if (string.length() > 0) {
                a(string.charAt(0), k(string));
            }
            i10 = iO;
            i11 = iO + 1;
        }
        if (i11 - i10 == 1 && i10 < pathData.length()) {
            a(pathData.charAt(i10), new float[0]);
        }
        return this;
    }

    public PathParser() {
        float f = 0.0f;
        int i10 = 3;
        k kVar = null;
        this.currentPoint = new PathPoint(f, f, i10, kVar);
        this.ctrlPoint = new PathPoint(f, f, i10, kVar);
        this.segmentPoint = new PathPoint(f, f, i10, kVar);
        this.reflectiveCtrlPoint = new PathPoint(f, f, i10, kVar);
    }

    private final void B(PathNode.RelativeVerticalTo relativeVerticalTo, Path path) {
        path.l(0.0f, relativeVerticalTo.c());
        PathPoint pathPoint = this.currentPoint;
        pathPoint.e(pathPoint.b() + relativeVerticalTo.c());
    }

    private final void h(PathNode.CurveTo curveTo, Path path) {
        path.cubicTo(curveTo.c(), curveTo.f(), curveTo.d(), curveTo.g(), curveTo.e(), curveTo.h());
        this.ctrlPoint.d(curveTo.d());
        this.ctrlPoint.e(curveTo.g());
        this.currentPoint.d(curveTo.e());
        this.currentPoint.e(curveTo.h());
    }

    private final void l(PathNode.HorizontalTo horizontalTo, Path path) {
        path.lineTo(horizontalTo.c(), this.currentPoint.b());
        this.currentPoint.d(horizontalTo.c());
    }

    private final void m(PathNode.LineTo lineTo, Path path) {
        path.lineTo(lineTo.c(), lineTo.d());
        this.currentPoint.d(lineTo.c());
        this.currentPoint.e(lineTo.d());
    }

    private final int o(String str, int i10) {
        while (i10 < str.length()) {
            char cCharAt = str.charAt(i10);
            if (((cCharAt - 'A') * (cCharAt - 'Z') <= 0 || (cCharAt - 'a') * (cCharAt - 'z') <= 0) && cCharAt != 'e' && cCharAt != 'E') {
                return i10;
            }
            i10++;
        }
        return i10;
    }

    private final void q(PathNode.QuadTo quadTo, Path path) {
        path.h(quadTo.c(), quadTo.e(), quadTo.d(), quadTo.f());
        this.ctrlPoint.d(quadTo.c());
        this.ctrlPoint.e(quadTo.e());
        this.currentPoint.d(quadTo.d());
        this.currentPoint.e(quadTo.f());
    }

    private final void u(PathNode.RelativeCurveTo relativeCurveTo, Path path) {
        path.b(relativeCurveTo.c(), relativeCurveTo.f(), relativeCurveTo.d(), relativeCurveTo.g(), relativeCurveTo.e(), relativeCurveTo.h());
        this.ctrlPoint.d(this.currentPoint.a() + relativeCurveTo.d());
        this.ctrlPoint.e(this.currentPoint.b() + relativeCurveTo.g());
        PathPoint pathPoint = this.currentPoint;
        pathPoint.d(pathPoint.a() + relativeCurveTo.e());
        PathPoint pathPoint2 = this.currentPoint;
        pathPoint2.e(pathPoint2.b() + relativeCurveTo.h());
    }

    private final void v(PathNode.RelativeHorizontalTo relativeHorizontalTo, Path path) {
        path.l(relativeHorizontalTo.c(), 0.0f);
        PathPoint pathPoint = this.currentPoint;
        pathPoint.d(pathPoint.a() + relativeHorizontalTo.c());
    }

    private final void w(PathNode.RelativeLineTo relativeLineTo, Path path) {
        path.l(relativeLineTo.c(), relativeLineTo.d());
        PathPoint pathPoint = this.currentPoint;
        pathPoint.d(pathPoint.a() + relativeLineTo.c());
        PathPoint pathPoint2 = this.currentPoint;
        pathPoint2.e(pathPoint2.b() + relativeLineTo.d());
    }

    private final void y(PathNode.RelativeQuadTo relativeQuadTo, Path path) {
        path.c(relativeQuadTo.c(), relativeQuadTo.e(), relativeQuadTo.d(), relativeQuadTo.f());
        this.ctrlPoint.d(this.currentPoint.a() + relativeQuadTo.c());
        this.ctrlPoint.e(this.currentPoint.b() + relativeQuadTo.e());
        PathPoint pathPoint = this.currentPoint;
        pathPoint.d(pathPoint.a() + relativeQuadTo.d());
        PathPoint pathPoint2 = this.currentPoint;
        pathPoint2.e(pathPoint2.b() + relativeQuadTo.f());
    }
}
