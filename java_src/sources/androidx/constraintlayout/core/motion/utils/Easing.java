package androidx.constraintlayout.core.motion.utils;

import java.util.Arrays;

/* JADX INFO: loaded from: classes8.dex */
public class Easing {
    private static final String ACCELERATE = "cubic(0.4, 0.05, 0.8, 0.7)";
    private static final String ANTICIPATE = "cubic(0.36, 0, 0.66, -0.56)";
    private static final String ANTICIPATE_NAME = "anticipate";
    private static final String DECELERATE = "cubic(0.0, 0.0, 0.2, 0.95)";
    private static final String LINEAR = "cubic(1, 1, 0, 0)";
    private static final String OVERSHOOT = "cubic(0.34, 1.56, 0.64, 1)";
    private static final String OVERSHOOT_NAME = "overshoot";
    private static final String STANDARD = "cubic(0.4, 0.0, 0.2, 1)";
    String str = "identity";
    static Easing sDefault = new Easing();
    private static final String STANDARD_NAME = "standard";
    private static final String ACCELERATE_NAME = "accelerate";
    private static final String DECELERATE_NAME = "decelerate";
    private static final String LINEAR_NAME = "linear";
    public static String[] NAMED_EASING = {STANDARD_NAME, ACCELERATE_NAME, DECELERATE_NAME, LINEAR_NAME};

    static class CubicEasing extends Easing {
        private static double d_error = 1.0E-4d;
        private static double error = 0.01d;
        double x1;

        /* JADX INFO: renamed from: x2, reason: collision with root package name */
        double f129x2;
        double y1;

        /* JADX INFO: renamed from: y2, reason: collision with root package name */
        double f130y2;

        CubicEasing(String str) {
            this.str = str;
            int iIndexOf = str.indexOf(40);
            int iIndexOf2 = str.indexOf(44, iIndexOf);
            this.x1 = Double.parseDouble(str.substring(iIndexOf + 1, iIndexOf2).trim());
            int i10 = iIndexOf2 + 1;
            int iIndexOf3 = str.indexOf(44, i10);
            this.y1 = Double.parseDouble(str.substring(i10, iIndexOf3).trim());
            int i11 = iIndexOf3 + 1;
            int iIndexOf4 = str.indexOf(44, i11);
            this.f129x2 = Double.parseDouble(str.substring(i11, iIndexOf4).trim());
            int i12 = iIndexOf4 + 1;
            this.f130y2 = Double.parseDouble(str.substring(i12, str.indexOf(41, i12)).trim());
        }

        private double d(double d) {
            double d2 = 1.0d - d;
            double d6 = 3.0d * d2;
            return (this.x1 * d2 * d6 * d) + (this.f129x2 * d6 * d * d) + (d * d * d);
        }

        private double e(double d) {
            double d2 = 1.0d - d;
            double d6 = 3.0d * d2;
            return (this.y1 * d2 * d6 * d) + (this.f130y2 * d6 * d * d) + (d * d * d);
        }

        void f(double d, double d2, double d6, double d7) {
            this.x1 = d;
            this.y1 = d2;
            this.f129x2 = d6;
            this.f130y2 = d7;
        }

        @Override // androidx.constraintlayout.core.motion.utils.Easing
        public double a(double d) {
            if (d <= com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE) {
                return com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE;
            }
            if (d >= 1.0d) {
                return 1.0d;
            }
            double d2 = 0.5d;
            double d6 = 0.5d;
            while (d2 > error) {
                d2 *= 0.5d;
                d6 = d(d6) < d ? d6 + d2 : d6 - d2;
            }
            double d7 = d6 - d2;
            double d10 = d(d7);
            double d11 = d6 + d2;
            double d12 = d(d11);
            double dE = e(d7);
            return (((e(d11) - dE) * (d - d10)) / (d12 - d10)) + dE;
        }

        @Override // androidx.constraintlayout.core.motion.utils.Easing
        public double b(double d) {
            double d2 = 0.5d;
            double d6 = 0.5d;
            while (d2 > d_error) {
                d2 *= 0.5d;
                d6 = d(d6) < d ? d6 + d2 : d6 - d2;
            }
            double d7 = d6 - d2;
            double d10 = d6 + d2;
            return (e(d10) - e(d7)) / (d(d10) - d(d7));
        }

        public CubicEasing(double d, double d2, double d6, double d7) {
            f(d, d2, d6, d7);
        }
    }

    public double a(double d) {
        return d;
    }

    public double b(double d) {
        return 1.0d;
    }

    public String toString() {
        return this.str;
    }

    public static Easing c(String str) {
        if (str == null) {
            return null;
        }
        if (str.startsWith("cubic")) {
            return new CubicEasing(str);
        }
        if (str.startsWith("spline")) {
            return new StepCurve(str);
        }
        if (str.startsWith("Schlick")) {
            return new Schlick(str);
        }
        switch (str) {
            case "accelerate":
                return new CubicEasing(ACCELERATE);
            case "decelerate":
                return new CubicEasing(DECELERATE);
            case "anticipate":
                return new CubicEasing(ANTICIPATE);
            case "linear":
                return new CubicEasing(LINEAR);
            case "overshoot":
                return new CubicEasing(OVERSHOOT);
            case "standard":
                return new CubicEasing(STANDARD);
            default:
                System.err.println("transitionEasing syntax error syntax:transitionEasing=\"cubic(1.0,0.5,0.0,0.6)\" or " + Arrays.toString(NAMED_EASING));
                return sDefault;
        }
    }
}
