package androidx.constraintlayout.core.motion.utils;

import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public class ArcCurveFit extends CurveFit {
    public static final int ARC_START_FLIP = 3;
    public static final int ARC_START_HORIZONTAL = 2;
    public static final int ARC_START_LINEAR = 0;
    public static final int ARC_START_VERTICAL = 1;
    private static final int START_HORIZONTAL = 2;
    private static final int START_LINEAR = 3;
    private static final int START_VERTICAL = 1;
    Arc[] mArcs;
    private boolean mExtrapolate = true;
    private final double[] mTime;

    private static class Arc {
        private static final double EPSILON = 0.001d;
        private static final String TAG = "Arc";
        private static double[] ourPercent = new double[91];
        boolean linear;
        double mArcDistance;
        double mArcVelocity;
        double mEllipseA;
        double mEllipseB;
        double mEllipseCenterX;
        double mEllipseCenterY;
        double[] mLut;
        double mOneOverDeltaTime;
        double mTime1;
        double mTime2;
        double mTmpCosAngle;
        double mTmpSinAngle;
        boolean mVertical;
        double mX1;
        double mX2;
        double mY1;
        double mY2;

        public double d(double d) {
            return this.mEllipseCenterX;
        }

        public double e(double d) {
            return this.mEllipseCenterY;
        }

        public double f(double d) {
            double d2 = (d - this.mTime1) * this.mOneOverDeltaTime;
            double d6 = this.mX1;
            return d6 + (d2 * (this.mX2 - d6));
        }

        public double g(double d) {
            double d2 = (d - this.mTime1) * this.mOneOverDeltaTime;
            double d6 = this.mY1;
            return d6 + (d2 * (this.mY2 - d6));
        }

        double h() {
            return this.mEllipseCenterX + (this.mEllipseA * this.mTmpSinAngle);
        }

        double i() {
            return this.mEllipseCenterY + (this.mEllipseB * this.mTmpCosAngle);
        }

        Arc(int i10, double d, double d2, double d6, double d7, double d10, double d11) {
            this.linear = false;
            this.mVertical = i10 == 1;
            this.mTime1 = d;
            this.mTime2 = d2;
            this.mOneOverDeltaTime = 1.0d / (d2 - d);
            if (3 == i10) {
                this.linear = true;
            }
            double d12 = d10 - d6;
            double d13 = d11 - d7;
            if (!this.linear && Math.abs(d12) >= EPSILON && Math.abs(d13) >= EPSILON) {
                this.mLut = new double[101];
                boolean z6 = this.mVertical;
                this.mEllipseA = d12 * ((double) (z6 ? -1 : 1));
                this.mEllipseB = d13 * ((double) (z6 ? 1 : -1));
                this.mEllipseCenterX = z6 ? d10 : d6;
                this.mEllipseCenterY = z6 ? d7 : d11;
                a(d6, d7, d10, d11);
                this.mArcVelocity = this.mArcDistance * this.mOneOverDeltaTime;
                return;
            }
            this.linear = true;
            this.mX1 = d6;
            this.mX2 = d10;
            this.mY1 = d7;
            this.mY2 = d11;
            double dHypot = Math.hypot(d13, d12);
            this.mArcDistance = dHypot;
            this.mArcVelocity = dHypot * this.mOneOverDeltaTime;
            double d14 = this.mTime2;
            double d15 = this.mTime1;
            this.mEllipseCenterX = d12 / (d14 - d15);
            this.mEllipseCenterY = d13 / (d14 - d15);
        }

        private void a(double d, double d2, double d6, double d7) {
            double dHypot;
            double d10 = d6 - d;
            double d11 = d2 - d7;
            int i10 = 0;
            double d12 = com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE;
            double d13 = com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE;
            double d14 = com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE;
            while (true) {
                double[] dArr = ourPercent;
                if (i10 >= dArr.length) {
                    break;
                }
                double d15 = d12;
                double radians = Math.toRadians((((double) i10) * 90.0d) / ((double) (dArr.length - 1)));
                double dSin = Math.sin(radians) * d10;
                double dCos = Math.cos(radians) * d11;
                if (i10 > 0) {
                    dHypot = Math.hypot(dSin - d13, dCos - d14) + d15;
                    ourPercent[i10] = dHypot;
                } else {
                    dHypot = d15;
                }
                i10++;
                d14 = dCos;
                d12 = dHypot;
                d13 = dSin;
            }
            double d16 = d12;
            this.mArcDistance = d16;
            int i11 = 0;
            while (true) {
                double[] dArr2 = ourPercent;
                if (i11 >= dArr2.length) {
                    break;
                }
                dArr2[i11] = dArr2[i11] / d16;
                i11++;
            }
            int i12 = 0;
            while (true) {
                double[] dArr3 = this.mLut;
                if (i12 >= dArr3.length) {
                    return;
                }
                double length = ((double) i12) / ((double) (dArr3.length - 1));
                int iBinarySearch = Arrays.binarySearch(ourPercent, length);
                if (iBinarySearch >= 0) {
                    this.mLut[i12] = ((double) iBinarySearch) / ((double) (ourPercent.length - 1));
                } else if (iBinarySearch == -1) {
                    this.mLut[i12] = 0.0d;
                } else {
                    int i13 = -iBinarySearch;
                    int i14 = i13 - 2;
                    double[] dArr4 = ourPercent;
                    double d17 = dArr4[i14];
                    this.mLut[i12] = (((double) i14) + ((length - d17) / (dArr4[i13 - 1] - d17))) / ((double) (dArr4.length - 1));
                }
                i12++;
            }
        }

        double b() {
            double d = this.mEllipseA * this.mTmpCosAngle;
            double dHypot = this.mArcVelocity / Math.hypot(d, (-this.mEllipseB) * this.mTmpSinAngle);
            if (this.mVertical) {
                d = -d;
            }
            return d * dHypot;
        }

        double c() {
            double d = this.mEllipseA * this.mTmpCosAngle;
            double d2 = (-this.mEllipseB) * this.mTmpSinAngle;
            double dHypot = this.mArcVelocity / Math.hypot(d, d2);
            return this.mVertical ? (-d2) * dHypot : d2 * dHypot;
        }

        double j(double d) {
            if (d <= com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE) {
                return com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE;
            }
            if (d >= 1.0d) {
                return 1.0d;
            }
            double[] dArr = this.mLut;
            double length = d * ((double) (dArr.length - 1));
            int i10 = (int) length;
            double d2 = length - ((double) i10);
            double d6 = dArr[i10];
            return d6 + (d2 * (dArr[i10 + 1] - d6));
        }

        void k(double d) {
            double dJ = j((this.mVertical ? this.mTime2 - d : d - this.mTime1) * this.mOneOverDeltaTime) * 1.5707963267948966d;
            this.mTmpSinAngle = Math.sin(dJ);
            this.mTmpCosAngle = Math.cos(dJ);
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double[] h() {
        return this.mTime;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x002f  */
    public ArcCurveFit(int[] iArr, double[] dArr, double[][] dArr2) {
        this.mTime = dArr;
        this.mArcs = new Arc[dArr.length - 1];
        int i10 = 1;
        int i11 = 1;
        int i12 = 0;
        while (true) {
            Arc[] arcArr = this.mArcs;
            if (i12 >= arcArr.length) {
                return;
            }
            int i13 = iArr[i12];
            if (i13 == 0) {
                i11 = 3;
            } else if (i13 == 1) {
                i10 = 1;
                i11 = i10;
            } else {
                if (i13 != 2) {
                    if (i13 == 3) {
                        if (i10 != 1) {
                            i10 = 1;
                        }
                        i11 = i10;
                    }
                }
                i10 = 2;
                i11 = i10;
            }
            double d = dArr[i12];
            int i14 = i12 + 1;
            double d2 = dArr[i14];
            double[] dArr3 = dArr2[i12];
            double d6 = dArr3[0];
            double d7 = dArr3[1];
            double[] dArr4 = dArr2[i14];
            arcArr[i12] = new Arc(i11, d, d2, d6, d7, dArr4[0], dArr4[1]);
            i12 = i14;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double c(double d, int i10) {
        double dG;
        double dE;
        double dI;
        double dC;
        double dG2;
        double dE2;
        int i11 = 0;
        if (this.mExtrapolate) {
            Arc[] arcArr = this.mArcs;
            Arc arc = arcArr[0];
            double d2 = arc.mTime1;
            if (d < d2) {
                double d6 = d - d2;
                if (arc.linear) {
                    if (i10 == 0) {
                        dG2 = arc.f(d2);
                        dE2 = this.mArcs[0].d(d2);
                    } else {
                        dG2 = arc.g(d2);
                        dE2 = this.mArcs[0].e(d2);
                    }
                    return dG2 + (d6 * dE2);
                }
                arc.k(d2);
                if (i10 == 0) {
                    dI = this.mArcs[0].h();
                    dC = this.mArcs[0].b();
                } else {
                    dI = this.mArcs[0].i();
                    dC = this.mArcs[0].c();
                }
                return dI + (d6 * dC);
            }
            if (d > arcArr[arcArr.length - 1].mTime2) {
                double d7 = arcArr[arcArr.length - 1].mTime2;
                double d10 = d - d7;
                int length = arcArr.length - 1;
                if (i10 == 0) {
                    dG = arcArr[length].f(d7);
                    dE = this.mArcs[length].d(d7);
                } else {
                    dG = arcArr[length].g(d7);
                    dE = this.mArcs[length].e(d7);
                }
                return dG + (d10 * dE);
            }
        } else {
            Arc[] arcArr2 = this.mArcs;
            double d11 = arcArr2[0].mTime1;
            if (d < d11) {
                d = d11;
            } else if (d > arcArr2[arcArr2.length - 1].mTime2) {
                d = arcArr2[arcArr2.length - 1].mTime2;
            }
        }
        while (true) {
            Arc[] arcArr3 = this.mArcs;
            if (i11 >= arcArr3.length) {
                return Double.NaN;
            }
            Arc arc2 = arcArr3[i11];
            if (d <= arc2.mTime2) {
                if (arc2.linear) {
                    return i10 == 0 ? arc2.f(d) : arc2.g(d);
                }
                arc2.k(d);
                return i10 == 0 ? this.mArcs[i11].h() : this.mArcs[i11].i();
            }
            i11++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void d(double d, double[] dArr) {
        if (this.mExtrapolate) {
            Arc[] arcArr = this.mArcs;
            Arc arc = arcArr[0];
            double d2 = arc.mTime1;
            if (d < d2) {
                double d6 = d - d2;
                if (arc.linear) {
                    dArr[0] = arc.f(d2) + (this.mArcs[0].d(d2) * d6);
                    dArr[1] = this.mArcs[0].g(d2) + (d6 * this.mArcs[0].e(d2));
                    return;
                } else {
                    arc.k(d2);
                    dArr[0] = this.mArcs[0].h() + (this.mArcs[0].b() * d6);
                    dArr[1] = this.mArcs[0].i() + (d6 * this.mArcs[0].c());
                    return;
                }
            }
            if (d > arcArr[arcArr.length - 1].mTime2) {
                double d7 = arcArr[arcArr.length - 1].mTime2;
                double d10 = d - d7;
                int length = arcArr.length - 1;
                Arc arc2 = arcArr[length];
                if (arc2.linear) {
                    dArr[0] = arc2.f(d7) + (this.mArcs[length].d(d7) * d10);
                    dArr[1] = this.mArcs[length].g(d7) + (d10 * this.mArcs[length].e(d7));
                    return;
                } else {
                    arc2.k(d);
                    dArr[0] = this.mArcs[length].h() + (this.mArcs[length].b() * d10);
                    dArr[1] = this.mArcs[length].i() + (d10 * this.mArcs[length].c());
                    return;
                }
            }
        } else {
            Arc[] arcArr2 = this.mArcs;
            double d11 = arcArr2[0].mTime1;
            if (d < d11) {
                d = d11;
            }
            if (d > arcArr2[arcArr2.length - 1].mTime2) {
                d = arcArr2[arcArr2.length - 1].mTime2;
            }
        }
        int i10 = 0;
        while (true) {
            Arc[] arcArr3 = this.mArcs;
            if (i10 >= arcArr3.length) {
                return;
            }
            Arc arc3 = arcArr3[i10];
            if (d <= arc3.mTime2) {
                if (arc3.linear) {
                    dArr[0] = arc3.f(d);
                    dArr[1] = this.mArcs[i10].g(d);
                    return;
                } else {
                    arc3.k(d);
                    dArr[0] = this.mArcs[i10].h();
                    dArr[1] = this.mArcs[i10].i();
                    return;
                }
            }
            i10++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void e(double d, float[] fArr) {
        if (this.mExtrapolate) {
            Arc[] arcArr = this.mArcs;
            Arc arc = arcArr[0];
            double d2 = arc.mTime1;
            if (d < d2) {
                double d6 = d - d2;
                if (arc.linear) {
                    fArr[0] = (float) (arc.f(d2) + (this.mArcs[0].d(d2) * d6));
                    fArr[1] = (float) (this.mArcs[0].g(d2) + (d6 * this.mArcs[0].e(d2)));
                    return;
                } else {
                    arc.k(d2);
                    fArr[0] = (float) (this.mArcs[0].h() + (this.mArcs[0].b() * d6));
                    fArr[1] = (float) (this.mArcs[0].i() + (d6 * this.mArcs[0].c()));
                    return;
                }
            }
            if (d > arcArr[arcArr.length - 1].mTime2) {
                double d7 = arcArr[arcArr.length - 1].mTime2;
                double d10 = d - d7;
                int length = arcArr.length - 1;
                Arc arc2 = arcArr[length];
                if (arc2.linear) {
                    fArr[0] = (float) (arc2.f(d7) + (this.mArcs[length].d(d7) * d10));
                    fArr[1] = (float) (this.mArcs[length].g(d7) + (d10 * this.mArcs[length].e(d7)));
                    return;
                } else {
                    arc2.k(d);
                    fArr[0] = (float) this.mArcs[length].h();
                    fArr[1] = (float) this.mArcs[length].i();
                    return;
                }
            }
        } else {
            Arc[] arcArr2 = this.mArcs;
            double d11 = arcArr2[0].mTime1;
            if (d < d11) {
                d = d11;
            } else if (d > arcArr2[arcArr2.length - 1].mTime2) {
                d = arcArr2[arcArr2.length - 1].mTime2;
            }
        }
        int i10 = 0;
        while (true) {
            Arc[] arcArr3 = this.mArcs;
            if (i10 >= arcArr3.length) {
                return;
            }
            Arc arc3 = arcArr3[i10];
            if (d <= arc3.mTime2) {
                if (arc3.linear) {
                    fArr[0] = (float) arc3.f(d);
                    fArr[1] = (float) this.mArcs[i10].g(d);
                    return;
                } else {
                    arc3.k(d);
                    fArr[0] = (float) this.mArcs[i10].h();
                    fArr[1] = (float) this.mArcs[i10].i();
                    return;
                }
            }
            i10++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double f(double d, int i10) {
        Arc[] arcArr = this.mArcs;
        int i11 = 0;
        double d2 = arcArr[0].mTime1;
        if (d < d2) {
            d = d2;
        }
        if (d > arcArr[arcArr.length - 1].mTime2) {
            d = arcArr[arcArr.length - 1].mTime2;
        }
        while (true) {
            Arc[] arcArr2 = this.mArcs;
            if (i11 >= arcArr2.length) {
                return Double.NaN;
            }
            Arc arc = arcArr2[i11];
            if (d <= arc.mTime2) {
                if (arc.linear) {
                    return i10 == 0 ? arc.d(d) : arc.e(d);
                }
                arc.k(d);
                return i10 == 0 ? this.mArcs[i11].b() : this.mArcs[i11].c();
            }
            i11++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void g(double d, double[] dArr) {
        Arc[] arcArr = this.mArcs;
        double d2 = arcArr[0].mTime1;
        if (d < d2) {
            d = d2;
        } else if (d > arcArr[arcArr.length - 1].mTime2) {
            d = arcArr[arcArr.length - 1].mTime2;
        }
        int i10 = 0;
        while (true) {
            Arc[] arcArr2 = this.mArcs;
            if (i10 >= arcArr2.length) {
                return;
            }
            Arc arc = arcArr2[i10];
            if (d <= arc.mTime2) {
                if (arc.linear) {
                    dArr[0] = arc.d(d);
                    dArr[1] = this.mArcs[i10].e(d);
                    return;
                } else {
                    arc.k(d);
                    dArr[0] = this.mArcs[i10].b();
                    dArr[1] = this.mArcs[i10].c();
                    return;
                }
            }
            i10++;
        }
    }
}
