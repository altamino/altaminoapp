package androidx.compose.animation.core;

import w7.u;

/* JADX INFO: loaded from: classes5.dex */
public final class SpringEstimationKt {
    public static final long b(float f, float f6, float f7, float f10, float f11) {
        return a(f, f6, f7, f10, f11);
    }

    private static final double d(double d, double d2) {
        double dLog = d;
        for (int i10 = 0; i10 < 6; i10++) {
            dLog = d - Math.log(Math.abs(dLog / d2));
        }
        return dLog;
    }

    private static final double e(double d, double d2, double d6, double d7) {
        double d10 = d2 * d6;
        return (d * Math.exp(d10)) + (d7 * d6 * Math.exp(d10));
    }

    private static final double h(double d, double d2, double d6, double d7, double d10) {
        return (d * Math.exp(d2 * d6)) + (d7 * Math.exp(d10 * d6));
    }

    public static final long a(double d, double d2, double d6, double d7, double d10) {
        return f(ComplexDoubleKt.a(1.0d, 2.0d * d2 * Math.sqrt(d), d), d2, d6, d7, d10);
    }

    private static final double c(u<ComplexDouble, ComplexDouble> uVar, double d, double d2, double d6) {
        double d7;
        double d10;
        double dF = uVar.c().f();
        double d11 = dF * d;
        double d12 = d2 - d11;
        double dLog = Math.log(Math.abs(d6 / d)) / dF;
        double d13 = d(Math.log(Math.abs(d6 / d12)), dF) / dF;
        int i10 = 0;
        if (!((Double.isInfinite(dLog) || Double.isNaN(dLog)) ? false : true)) {
            d7 = d13;
        } else {
            if (!(!((Double.isInfinite(d13) || Double.isNaN(d13)) ? false : true))) {
                dLog = Math.max(dLog, d13);
            }
            d7 = dLog;
        }
        double d14 = (-(d11 + d12)) / (dF * d12);
        if (Double.isNaN(d14) || d14 <= com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE) {
            d10 = -d6;
        } else if (d14 <= com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE || (-e(d, dF, d14, d12)) >= d6) {
            d7 = (-(2.0d / dF)) - (d / d12);
            d10 = d6;
        } else {
            if (d12 < com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE && d > com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE) {
                d7 = 0.0d;
            }
            d10 = -d6;
        }
        SpringEstimationKt$estimateCriticallyDamped$fn$1 springEstimationKt$estimateCriticallyDamped$fn$1 = new SpringEstimationKt$estimateCriticallyDamped$fn$1(d, d12, dF, d10);
        SpringEstimationKt$estimateCriticallyDamped$fnPrime$1 springEstimationKt$estimateCriticallyDamped$fnPrime$1 = new SpringEstimationKt$estimateCriticallyDamped$fnPrime$1(d12, dF, d);
        double d15 = Double.MAX_VALUE;
        while (d15 > 0.001d && i10 < 100) {
            i10++;
            double dDoubleValue = d7 - (springEstimationKt$estimateCriticallyDamped$fn$1.invoke(Double.valueOf(d7)).doubleValue() / springEstimationKt$estimateCriticallyDamped$fnPrime$1.invoke(Double.valueOf(d7)).doubleValue());
            double dAbs = Math.abs(d7 - dDoubleValue);
            d7 = dDoubleValue;
            d15 = dAbs;
        }
        return d7;
    }

    private static final long f(u<ComplexDouble, ComplexDouble> uVar, double d, double d2, double d6, double d7) {
        double dI;
        if (d6 == com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE && d2 == com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE) {
            return 0L;
        }
        if (d6 < com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE) {
            d2 = -d2;
        }
        double d10 = d2;
        double dAbs = Math.abs(d6);
        if (d > 1.0d) {
            dI = g(uVar, dAbs, d10, d7);
        } else {
            dI = d < 1.0d ? i(uVar, dAbs, d10, d7) : c(uVar, dAbs, d10, d7);
        }
        return (long) (dI * 1000.0d);
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00eb A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:42:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:45:0x00fc  */
    private static final double g(u<ComplexDouble, ComplexDouble> uVar, double d, double d2, double d6) {
        double dLog;
        double d7;
        SpringEstimationKt$estimateOverDamped$fn$1 springEstimationKt$estimateOverDamped$fn$1;
        SpringEstimationKt$estimateOverDamped$fnPrime$1 springEstimationKt$estimateOverDamped$fnPrime$1;
        double d10;
        int i10;
        double d11 = d6;
        double dF = uVar.c().f();
        double dF2 = uVar.d().f();
        double d12 = dF - dF2;
        double d13 = ((dF * d) - d2) / d12;
        double d14 = d - d13;
        double dLog2 = Math.log(Math.abs(d11 / d14)) / dF;
        double dLog3 = Math.log(Math.abs(d11 / d13)) / dF2;
        if (!((Double.isInfinite(dLog2) || Double.isNaN(dLog2)) ? false : true)) {
            dLog = dLog3;
        } else {
            if (!(!((Double.isInfinite(dLog3) || Double.isNaN(dLog3)) ? false : true))) {
                dLog2 = Math.max(dLog2, dLog3);
            }
            dLog = dLog2;
        }
        double d15 = d14 * dF;
        double dLog4 = Math.log(d15 / ((-d13) * dF2)) / (dF2 - dF);
        if (!Double.isNaN(dLog4) && dLog4 > com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE) {
            if (dLog4 > com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE) {
                d7 = d13;
                if ((-h(d14, dF, dLog4, d13, dF2)) < d11) {
                    if (d7 > com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE && d14 < com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE) {
                        dLog = 0.0d;
                    }
                }
                double d16 = d7;
                springEstimationKt$estimateOverDamped$fn$1 = new SpringEstimationKt$estimateOverDamped$fn$1(d14, dF, d16, dF2, d11);
                springEstimationKt$estimateOverDamped$fnPrime$1 = new SpringEstimationKt$estimateOverDamped$fnPrime$1(d14, dF, d16, dF2);
                if (Math.abs(springEstimationKt$estimateOverDamped$fn$1.invoke(Double.valueOf(dLog)).doubleValue()) < 1.0E-4d) {
                    return dLog;
                }
                d10 = Double.MAX_VALUE;
                i10 = 0;
                while (d10 > 0.001d && i10 < 100) {
                    i10++;
                    double dDoubleValue = dLog - (springEstimationKt$estimateOverDamped$fn$1.invoke(Double.valueOf(dLog)).doubleValue() / springEstimationKt$estimateOverDamped$fnPrime$1.invoke(Double.valueOf(dLog)).doubleValue());
                    double dAbs = Math.abs(dLog - dDoubleValue);
                    dLog = dDoubleValue;
                    d10 = dAbs;
                }
                return dLog;
            }
            d7 = d13;
            dLog = Math.log((-((d7 * dF2) * dF2)) / (d15 * dF)) / d12;
            double d17 = d7;
            springEstimationKt$estimateOverDamped$fn$1 = new SpringEstimationKt$estimateOverDamped$fn$1(d14, dF, d17, dF2, d11);
            springEstimationKt$estimateOverDamped$fnPrime$1 = new SpringEstimationKt$estimateOverDamped$fnPrime$1(d14, dF, d17, dF2);
            if (Math.abs(springEstimationKt$estimateOverDamped$fn$1.invoke(Double.valueOf(dLog)).doubleValue()) < 1.0E-4d) {
                return dLog;
            }
            d10 = Double.MAX_VALUE;
            i10 = 0;
            while (d10 > 0.001d) {
                i10++;
                double dDoubleValue2 = dLog - (springEstimationKt$estimateOverDamped$fn$1.invoke(Double.valueOf(dLog)).doubleValue() / springEstimationKt$estimateOverDamped$fnPrime$1.invoke(Double.valueOf(dLog)).doubleValue());
                double dAbs2 = Math.abs(dLog - dDoubleValue2);
                dLog = dDoubleValue2;
                d10 = dAbs2;
            }
            return dLog;
        }
        d7 = d13;
        d11 = -d11;
        double d18 = d7;
        springEstimationKt$estimateOverDamped$fn$1 = new SpringEstimationKt$estimateOverDamped$fn$1(d14, dF, d18, dF2, d11);
        springEstimationKt$estimateOverDamped$fnPrime$1 = new SpringEstimationKt$estimateOverDamped$fnPrime$1(d14, dF, d18, dF2);
        if (Math.abs(springEstimationKt$estimateOverDamped$fn$1.invoke(Double.valueOf(dLog)).doubleValue()) < 1.0E-4d) {
            return dLog;
        }
        d10 = Double.MAX_VALUE;
        i10 = 0;
        while (d10 > 0.001d) {
            i10++;
            double dDoubleValue3 = dLog - (springEstimationKt$estimateOverDamped$fn$1.invoke(Double.valueOf(dLog)).doubleValue() / springEstimationKt$estimateOverDamped$fnPrime$1.invoke(Double.valueOf(dLog)).doubleValue());
            double dAbs3 = Math.abs(dLog - dDoubleValue3);
            dLog = dDoubleValue3;
            d10 = dAbs3;
        }
        return dLog;
    }

    private static final double i(u<ComplexDouble, ComplexDouble> uVar, double d, double d2, double d6) {
        double dF = uVar.c().f();
        double dE = (d2 - (dF * d)) / uVar.c().e();
        return Math.log(d6 / Math.sqrt((d * d) + (dE * dE))) / dF;
    }
}
