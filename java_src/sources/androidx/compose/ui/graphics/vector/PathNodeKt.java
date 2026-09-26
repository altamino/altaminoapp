package androidx.compose.ui.graphics.vector;

import j8.g;
import j8.i;
import j8.o;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.m0;
import kotlin.collections.u;
import kotlin.collections.w;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class PathNodeKt {
    private static final char ArcToKey = 'A';
    private static final char CloseKey = 'Z';
    private static final char CurveToKey = 'C';
    private static final char HorizontalToKey = 'H';
    private static final char LineToKey = 'L';
    private static final char MoveToKey = 'M';
    private static final int NUM_ARC_TO_ARGS = 7;
    private static final int NUM_CURVE_TO_ARGS = 6;
    private static final int NUM_HORIZONTAL_TO_ARGS = 1;
    private static final int NUM_LINE_TO_ARGS = 2;
    private static final int NUM_MOVE_TO_ARGS = 2;
    private static final int NUM_QUAD_TO_ARGS = 4;
    private static final int NUM_REFLECTIVE_CURVE_TO_ARGS = 4;
    private static final int NUM_REFLECTIVE_QUAD_TO_ARGS = 2;
    private static final int NUM_VERTICAL_TO_ARGS = 1;
    private static final char QuadToKey = 'Q';
    private static final char ReflectiveCurveToKey = 'S';
    private static final char ReflectiveQuadToKey = 'T';
    private static final char RelativeArcToKey = 'a';
    private static final char RelativeCloseKey = 'z';
    private static final char RelativeCurveToKey = 'c';
    private static final char RelativeHorizontalToKey = 'h';
    private static final char RelativeLineToKey = 'l';
    private static final char RelativeMoveToKey = 'm';
    private static final char RelativeQuadToKey = 'q';
    private static final char RelativeReflectiveCurveToKey = 's';
    private static final char RelativeReflectiveQuadToKey = 't';
    private static final char RelativeVerticalToKey = 'v';
    private static final char VerticalToKey = 'V';

    @NotNull
    public static final List<PathNode> a(char c7, @NotNull float[] args) {
        ArrayList arrayList;
        PathNode relativeLineTo;
        t.j(args, "args");
        if (c7 == 'z' || c7 == 'Z') {
            return u.e(PathNode.Close.INSTANCE);
        }
        if (c7 == 'm') {
            g gVarU = o.u(new i(0, args.length - 2), 2);
            arrayList = new ArrayList(w.x(gVarU, 10));
            Iterator<Integer> it = gVarU.iterator();
            while (it.hasNext()) {
                int iNextInt = ((m0) it).nextInt();
                float[] fArrO = kotlin.collections.o.o(args, iNextInt, iNextInt + 2);
                PathNode relativeMoveTo = new PathNode.RelativeMoveTo(fArrO[0], fArrO[1]);
                if ((relativeMoveTo instanceof PathNode.MoveTo) && iNextInt > 0) {
                    relativeMoveTo = new PathNode.LineTo(fArrO[0], fArrO[1]);
                } else if (iNextInt > 0) {
                    relativeMoveTo = new PathNode.RelativeLineTo(fArrO[0], fArrO[1]);
                }
                arrayList.add(relativeMoveTo);
            }
        } else if (c7 == 'M') {
            g gVarU2 = o.u(new i(0, args.length - 2), 2);
            arrayList = new ArrayList(w.x(gVarU2, 10));
            Iterator<Integer> it2 = gVarU2.iterator();
            while (it2.hasNext()) {
                int iNextInt2 = ((m0) it2).nextInt();
                float[] fArrO2 = kotlin.collections.o.o(args, iNextInt2, iNextInt2 + 2);
                PathNode moveTo = new PathNode.MoveTo(fArrO2[0], fArrO2[1]);
                if (iNextInt2 > 0) {
                    moveTo = new PathNode.LineTo(fArrO2[0], fArrO2[1]);
                } else if ((moveTo instanceof PathNode.RelativeMoveTo) && iNextInt2 > 0) {
                    moveTo = new PathNode.RelativeLineTo(fArrO2[0], fArrO2[1]);
                }
                arrayList.add(moveTo);
            }
        } else if (c7 == 'l') {
            g gVarU3 = o.u(new i(0, args.length - 2), 2);
            arrayList = new ArrayList(w.x(gVarU3, 10));
            Iterator<Integer> it3 = gVarU3.iterator();
            while (it3.hasNext()) {
                int iNextInt3 = ((m0) it3).nextInt();
                float[] fArrO3 = kotlin.collections.o.o(args, iNextInt3, iNextInt3 + 2);
                PathNode relativeLineTo2 = new PathNode.RelativeLineTo(fArrO3[0], fArrO3[1]);
                if ((relativeLineTo2 instanceof PathNode.MoveTo) && iNextInt3 > 0) {
                    relativeLineTo2 = new PathNode.LineTo(fArrO3[0], fArrO3[1]);
                } else if ((relativeLineTo2 instanceof PathNode.RelativeMoveTo) && iNextInt3 > 0) {
                    relativeLineTo2 = new PathNode.RelativeLineTo(fArrO3[0], fArrO3[1]);
                }
                arrayList.add(relativeLineTo2);
            }
        } else if (c7 == 'L') {
            g gVarU4 = o.u(new i(0, args.length - 2), 2);
            arrayList = new ArrayList(w.x(gVarU4, 10));
            Iterator<Integer> it4 = gVarU4.iterator();
            while (it4.hasNext()) {
                int iNextInt4 = ((m0) it4).nextInt();
                float[] fArrO4 = kotlin.collections.o.o(args, iNextInt4, iNextInt4 + 2);
                PathNode lineTo = new PathNode.LineTo(fArrO4[0], fArrO4[1]);
                if ((lineTo instanceof PathNode.MoveTo) && iNextInt4 > 0) {
                    lineTo = new PathNode.LineTo(fArrO4[0], fArrO4[1]);
                } else if ((lineTo instanceof PathNode.RelativeMoveTo) && iNextInt4 > 0) {
                    lineTo = new PathNode.RelativeLineTo(fArrO4[0], fArrO4[1]);
                }
                arrayList.add(lineTo);
            }
        } else if (c7 == 'h') {
            g gVarU5 = o.u(new i(0, args.length - 1), 1);
            arrayList = new ArrayList(w.x(gVarU5, 10));
            Iterator<Integer> it5 = gVarU5.iterator();
            while (it5.hasNext()) {
                int iNextInt5 = ((m0) it5).nextInt();
                float[] fArrO5 = kotlin.collections.o.o(args, iNextInt5, iNextInt5 + 1);
                PathNode relativeHorizontalTo = new PathNode.RelativeHorizontalTo(fArrO5[0]);
                if ((relativeHorizontalTo instanceof PathNode.MoveTo) && iNextInt5 > 0) {
                    relativeHorizontalTo = new PathNode.LineTo(fArrO5[0], fArrO5[1]);
                } else if ((relativeHorizontalTo instanceof PathNode.RelativeMoveTo) && iNextInt5 > 0) {
                    relativeHorizontalTo = new PathNode.RelativeLineTo(fArrO5[0], fArrO5[1]);
                }
                arrayList.add(relativeHorizontalTo);
            }
        } else if (c7 == 'H') {
            g gVarU6 = o.u(new i(0, args.length - 1), 1);
            arrayList = new ArrayList(w.x(gVarU6, 10));
            Iterator<Integer> it6 = gVarU6.iterator();
            while (it6.hasNext()) {
                int iNextInt6 = ((m0) it6).nextInt();
                float[] fArrO6 = kotlin.collections.o.o(args, iNextInt6, iNextInt6 + 1);
                PathNode horizontalTo = new PathNode.HorizontalTo(fArrO6[0]);
                if ((horizontalTo instanceof PathNode.MoveTo) && iNextInt6 > 0) {
                    horizontalTo = new PathNode.LineTo(fArrO6[0], fArrO6[1]);
                } else if ((horizontalTo instanceof PathNode.RelativeMoveTo) && iNextInt6 > 0) {
                    horizontalTo = new PathNode.RelativeLineTo(fArrO6[0], fArrO6[1]);
                }
                arrayList.add(horizontalTo);
            }
        } else if (c7 == 'v') {
            g gVarU7 = o.u(new i(0, args.length - 1), 1);
            arrayList = new ArrayList(w.x(gVarU7, 10));
            Iterator<Integer> it7 = gVarU7.iterator();
            while (it7.hasNext()) {
                int iNextInt7 = ((m0) it7).nextInt();
                float[] fArrO7 = kotlin.collections.o.o(args, iNextInt7, iNextInt7 + 1);
                PathNode relativeVerticalTo = new PathNode.RelativeVerticalTo(fArrO7[0]);
                if ((relativeVerticalTo instanceof PathNode.MoveTo) && iNextInt7 > 0) {
                    relativeVerticalTo = new PathNode.LineTo(fArrO7[0], fArrO7[1]);
                } else if ((relativeVerticalTo instanceof PathNode.RelativeMoveTo) && iNextInt7 > 0) {
                    relativeVerticalTo = new PathNode.RelativeLineTo(fArrO7[0], fArrO7[1]);
                }
                arrayList.add(relativeVerticalTo);
            }
        } else if (c7 == 'V') {
            g gVarU8 = o.u(new i(0, args.length - 1), 1);
            arrayList = new ArrayList(w.x(gVarU8, 10));
            Iterator<Integer> it8 = gVarU8.iterator();
            while (it8.hasNext()) {
                int iNextInt8 = ((m0) it8).nextInt();
                float[] fArrO8 = kotlin.collections.o.o(args, iNextInt8, iNextInt8 + 1);
                PathNode verticalTo = new PathNode.VerticalTo(fArrO8[0]);
                if ((verticalTo instanceof PathNode.MoveTo) && iNextInt8 > 0) {
                    verticalTo = new PathNode.LineTo(fArrO8[0], fArrO8[1]);
                } else if ((verticalTo instanceof PathNode.RelativeMoveTo) && iNextInt8 > 0) {
                    verticalTo = new PathNode.RelativeLineTo(fArrO8[0], fArrO8[1]);
                }
                arrayList.add(verticalTo);
            }
        } else {
            char c10 = 5;
            if (c7 == 'c') {
                g gVarU9 = o.u(new i(0, args.length - 6), 6);
                arrayList = new ArrayList(w.x(gVarU9, 10));
                Iterator<Integer> it9 = gVarU9.iterator();
                while (it9.hasNext()) {
                    int iNextInt9 = ((m0) it9).nextInt();
                    float[] fArrO9 = kotlin.collections.o.o(args, iNextInt9, iNextInt9 + 6);
                    PathNode relativeCurveTo = new PathNode.RelativeCurveTo(fArrO9[0], fArrO9[1], fArrO9[2], fArrO9[3], fArrO9[4], fArrO9[c10]);
                    if (!(relativeCurveTo instanceof PathNode.MoveTo) || iNextInt9 <= 0) {
                        relativeLineTo = (!(relativeCurveTo instanceof PathNode.RelativeMoveTo) || iNextInt9 <= 0) ? relativeCurveTo : new PathNode.RelativeLineTo(fArrO9[0], fArrO9[1]);
                    } else {
                        relativeLineTo = new PathNode.LineTo(fArrO9[0], fArrO9[1]);
                    }
                    arrayList.add(relativeLineTo);
                    c10 = 5;
                }
            } else if (c7 == 'C') {
                g gVarU10 = o.u(new i(0, args.length - 6), 6);
                arrayList = new ArrayList(w.x(gVarU10, 10));
                Iterator<Integer> it10 = gVarU10.iterator();
                while (it10.hasNext()) {
                    int iNextInt10 = ((m0) it10).nextInt();
                    float[] fArrO10 = kotlin.collections.o.o(args, iNextInt10, iNextInt10 + 6);
                    PathNode curveTo = new PathNode.CurveTo(fArrO10[0], fArrO10[1], fArrO10[2], fArrO10[3], fArrO10[4], fArrO10[5]);
                    if ((curveTo instanceof PathNode.MoveTo) && iNextInt10 > 0) {
                        curveTo = new PathNode.LineTo(fArrO10[0], fArrO10[1]);
                    } else if ((curveTo instanceof PathNode.RelativeMoveTo) && iNextInt10 > 0) {
                        curveTo = new PathNode.RelativeLineTo(fArrO10[0], fArrO10[1]);
                    }
                    arrayList.add(curveTo);
                }
            } else if (c7 == 's') {
                g gVarU11 = o.u(new i(0, args.length - 4), 4);
                arrayList = new ArrayList(w.x(gVarU11, 10));
                Iterator<Integer> it11 = gVarU11.iterator();
                while (it11.hasNext()) {
                    int iNextInt11 = ((m0) it11).nextInt();
                    float[] fArrO11 = kotlin.collections.o.o(args, iNextInt11, iNextInt11 + 4);
                    PathNode relativeReflectiveCurveTo = new PathNode.RelativeReflectiveCurveTo(fArrO11[0], fArrO11[1], fArrO11[2], fArrO11[3]);
                    if ((relativeReflectiveCurveTo instanceof PathNode.MoveTo) && iNextInt11 > 0) {
                        relativeReflectiveCurveTo = new PathNode.LineTo(fArrO11[0], fArrO11[1]);
                    } else if ((relativeReflectiveCurveTo instanceof PathNode.RelativeMoveTo) && iNextInt11 > 0) {
                        relativeReflectiveCurveTo = new PathNode.RelativeLineTo(fArrO11[0], fArrO11[1]);
                    }
                    arrayList.add(relativeReflectiveCurveTo);
                }
            } else if (c7 == 'S') {
                g gVarU12 = o.u(new i(0, args.length - 4), 4);
                arrayList = new ArrayList(w.x(gVarU12, 10));
                Iterator<Integer> it12 = gVarU12.iterator();
                while (it12.hasNext()) {
                    int iNextInt12 = ((m0) it12).nextInt();
                    float[] fArrO12 = kotlin.collections.o.o(args, iNextInt12, iNextInt12 + 4);
                    PathNode reflectiveCurveTo = new PathNode.ReflectiveCurveTo(fArrO12[0], fArrO12[1], fArrO12[2], fArrO12[3]);
                    if ((reflectiveCurveTo instanceof PathNode.MoveTo) && iNextInt12 > 0) {
                        reflectiveCurveTo = new PathNode.LineTo(fArrO12[0], fArrO12[1]);
                    } else if ((reflectiveCurveTo instanceof PathNode.RelativeMoveTo) && iNextInt12 > 0) {
                        reflectiveCurveTo = new PathNode.RelativeLineTo(fArrO12[0], fArrO12[1]);
                    }
                    arrayList.add(reflectiveCurveTo);
                }
            } else if (c7 == 'q') {
                g gVarU13 = o.u(new i(0, args.length - 4), 4);
                arrayList = new ArrayList(w.x(gVarU13, 10));
                Iterator<Integer> it13 = gVarU13.iterator();
                while (it13.hasNext()) {
                    int iNextInt13 = ((m0) it13).nextInt();
                    float[] fArrO13 = kotlin.collections.o.o(args, iNextInt13, iNextInt13 + 4);
                    PathNode relativeQuadTo = new PathNode.RelativeQuadTo(fArrO13[0], fArrO13[1], fArrO13[2], fArrO13[3]);
                    if ((relativeQuadTo instanceof PathNode.MoveTo) && iNextInt13 > 0) {
                        relativeQuadTo = new PathNode.LineTo(fArrO13[0], fArrO13[1]);
                    } else if ((relativeQuadTo instanceof PathNode.RelativeMoveTo) && iNextInt13 > 0) {
                        relativeQuadTo = new PathNode.RelativeLineTo(fArrO13[0], fArrO13[1]);
                    }
                    arrayList.add(relativeQuadTo);
                }
            } else if (c7 == 'Q') {
                g gVarU14 = o.u(new i(0, args.length - 4), 4);
                arrayList = new ArrayList(w.x(gVarU14, 10));
                Iterator<Integer> it14 = gVarU14.iterator();
                while (it14.hasNext()) {
                    int iNextInt14 = ((m0) it14).nextInt();
                    float[] fArrO14 = kotlin.collections.o.o(args, iNextInt14, iNextInt14 + 4);
                    PathNode quadTo = new PathNode.QuadTo(fArrO14[0], fArrO14[1], fArrO14[2], fArrO14[3]);
                    if ((quadTo instanceof PathNode.MoveTo) && iNextInt14 > 0) {
                        quadTo = new PathNode.LineTo(fArrO14[0], fArrO14[1]);
                    } else if ((quadTo instanceof PathNode.RelativeMoveTo) && iNextInt14 > 0) {
                        quadTo = new PathNode.RelativeLineTo(fArrO14[0], fArrO14[1]);
                    }
                    arrayList.add(quadTo);
                }
            } else if (c7 == 't') {
                g gVarU15 = o.u(new i(0, args.length - 2), 2);
                arrayList = new ArrayList(w.x(gVarU15, 10));
                Iterator<Integer> it15 = gVarU15.iterator();
                while (it15.hasNext()) {
                    int iNextInt15 = ((m0) it15).nextInt();
                    float[] fArrO15 = kotlin.collections.o.o(args, iNextInt15, iNextInt15 + 2);
                    PathNode relativeReflectiveQuadTo = new PathNode.RelativeReflectiveQuadTo(fArrO15[0], fArrO15[1]);
                    if ((relativeReflectiveQuadTo instanceof PathNode.MoveTo) && iNextInt15 > 0) {
                        relativeReflectiveQuadTo = new PathNode.LineTo(fArrO15[0], fArrO15[1]);
                    } else if ((relativeReflectiveQuadTo instanceof PathNode.RelativeMoveTo) && iNextInt15 > 0) {
                        relativeReflectiveQuadTo = new PathNode.RelativeLineTo(fArrO15[0], fArrO15[1]);
                    }
                    arrayList.add(relativeReflectiveQuadTo);
                }
            } else if (c7 == 'T') {
                g gVarU16 = o.u(new i(0, args.length - 2), 2);
                arrayList = new ArrayList(w.x(gVarU16, 10));
                Iterator<Integer> it16 = gVarU16.iterator();
                while (it16.hasNext()) {
                    int iNextInt16 = ((m0) it16).nextInt();
                    float[] fArrO16 = kotlin.collections.o.o(args, iNextInt16, iNextInt16 + 2);
                    PathNode reflectiveQuadTo = new PathNode.ReflectiveQuadTo(fArrO16[0], fArrO16[1]);
                    if ((reflectiveQuadTo instanceof PathNode.MoveTo) && iNextInt16 > 0) {
                        reflectiveQuadTo = new PathNode.LineTo(fArrO16[0], fArrO16[1]);
                    } else if ((reflectiveQuadTo instanceof PathNode.RelativeMoveTo) && iNextInt16 > 0) {
                        reflectiveQuadTo = new PathNode.RelativeLineTo(fArrO16[0], fArrO16[1]);
                    }
                    arrayList.add(reflectiveQuadTo);
                }
            } else if (c7 == 'a') {
                g gVarU17 = o.u(new i(0, args.length - 7), 7);
                arrayList = new ArrayList(w.x(gVarU17, 10));
                Iterator<Integer> it17 = gVarU17.iterator();
                while (it17.hasNext()) {
                    int iNextInt17 = ((m0) it17).nextInt();
                    float[] fArrO17 = kotlin.collections.o.o(args, iNextInt17, iNextInt17 + 7);
                    PathNode relativeArcTo = new PathNode.RelativeArcTo(fArrO17[0], fArrO17[1], fArrO17[2], Float.compare(fArrO17[3], 0.0f) != 0, Float.compare(fArrO17[4], 0.0f) != 0, fArrO17[5], fArrO17[6]);
                    if ((relativeArcTo instanceof PathNode.MoveTo) && iNextInt17 > 0) {
                        relativeArcTo = new PathNode.LineTo(fArrO17[0], fArrO17[1]);
                    } else if ((relativeArcTo instanceof PathNode.RelativeMoveTo) && iNextInt17 > 0) {
                        relativeArcTo = new PathNode.RelativeLineTo(fArrO17[0], fArrO17[1]);
                    }
                    arrayList.add(relativeArcTo);
                }
            } else {
                if (c7 != 'A') {
                    throw new IllegalArgumentException("Unknown command for: " + c7);
                }
                g gVarU18 = o.u(new i(0, args.length - 7), 7);
                arrayList = new ArrayList(w.x(gVarU18, 10));
                Iterator<Integer> it18 = gVarU18.iterator();
                while (it18.hasNext()) {
                    int iNextInt18 = ((m0) it18).nextInt();
                    float[] fArrO18 = kotlin.collections.o.o(args, iNextInt18, iNextInt18 + 7);
                    PathNode arcTo = new PathNode.ArcTo(fArrO18[0], fArrO18[1], fArrO18[2], Float.compare(fArrO18[3], 0.0f) != 0, Float.compare(fArrO18[4], 0.0f) != 0, fArrO18[5], fArrO18[6]);
                    if ((arcTo instanceof PathNode.MoveTo) && iNextInt18 > 0) {
                        arcTo = new PathNode.LineTo(fArrO18[0], fArrO18[1]);
                    } else if ((arcTo instanceof PathNode.RelativeMoveTo) && iNextInt18 > 0) {
                        arcTo = new PathNode.RelativeLineTo(fArrO18[0], fArrO18[1]);
                    }
                    arrayList.add(arcTo);
                }
            }
        }
        return arrayList;
    }
}
