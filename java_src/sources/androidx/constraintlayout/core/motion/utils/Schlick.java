package androidx.constraintlayout.core.motion.utils;

/* JADX INFO: loaded from: classes9.dex */
public class Schlick extends Easing {
    private static final boolean DEBUG = false;
    double eps;
    double mS;
    double mT;

    private double d(double d) {
        double d2 = this.mT;
        if (d < d2) {
            double d6 = this.mS;
            return ((d6 * d2) * d2) / ((((d2 - d) * d6) + d) * ((d6 * (d2 - d)) + d));
        }
        double d7 = this.mS;
        return (((d2 - 1.0d) * d7) * (d2 - 1.0d)) / (((((-d7) * (d2 - d)) - d) + 1.0d) * ((((-d7) * (d2 - d)) - d) + 1.0d));
    }

    private double e(double d) {
        double d2 = this.mT;
        return d < d2 ? (d2 * d) / (d + (this.mS * (d2 - d))) : ((1.0d - d2) * (d - 1.0d)) / ((1.0d - d) - (this.mS * (d2 - d)));
    }

    Schlick(String str) {
        this.str = str;
        int iIndexOf = str.indexOf(40);
        int iIndexOf2 = str.indexOf(44, iIndexOf);
        this.mS = Double.parseDouble(str.substring(iIndexOf + 1, iIndexOf2).trim());
        int i10 = iIndexOf2 + 1;
        this.mT = Double.parseDouble(str.substring(i10, str.indexOf(44, i10)).trim());
    }

    @Override // androidx.constraintlayout.core.motion.utils.Easing
    public double a(double d) {
        return e(d);
    }

    @Override // androidx.constraintlayout.core.motion.utils.Easing
    public double b(double d) {
        return d(d);
    }
}
