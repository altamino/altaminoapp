package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes10.dex */
public class Flow extends VirtualLayout {
    public static final int HORIZONTAL_ALIGN_CENTER = 2;
    public static final int HORIZONTAL_ALIGN_END = 1;
    public static final int HORIZONTAL_ALIGN_START = 0;
    public static final int VERTICAL_ALIGN_BASELINE = 3;
    public static final int VERTICAL_ALIGN_BOTTOM = 1;
    public static final int VERTICAL_ALIGN_CENTER = 2;
    public static final int VERTICAL_ALIGN_TOP = 0;
    public static final int WRAP_ALIGNED = 2;
    public static final int WRAP_CHAIN = 1;
    public static final int WRAP_CHAIN_NEW = 3;
    public static final int WRAP_NONE = 0;
    private ConstraintWidget[] mDisplayedWidgets;
    private int mHorizontalStyle = -1;
    private int mVerticalStyle = -1;
    private int mFirstHorizontalStyle = -1;
    private int mFirstVerticalStyle = -1;
    private int mLastHorizontalStyle = -1;
    private int mLastVerticalStyle = -1;
    private float mHorizontalBias = 0.5f;
    private float mVerticalBias = 0.5f;
    private float mFirstHorizontalBias = 0.5f;
    private float mFirstVerticalBias = 0.5f;
    private float mLastHorizontalBias = 0.5f;
    private float mLastVerticalBias = 0.5f;
    private int mHorizontalGap = 0;
    private int mVerticalGap = 0;
    private int mHorizontalAlign = 2;
    private int mVerticalAlign = 2;
    private int mWrapMode = 0;
    private int mMaxElementsWrap = -1;
    private int mOrientation = 0;
    private ArrayList<WidgetsList> mChainList = new ArrayList<>();
    private ConstraintWidget[] mAlignedBiggestElementsInRows = null;
    private ConstraintWidget[] mAlignedBiggestElementsInCols = null;
    private int[] mAlignedDimensions = null;
    private int mDisplayedWidgetsCount = 0;

    private class WidgetsList {
        private ConstraintAnchor mBottom;
        private ConstraintAnchor mLeft;
        private int mMax;
        private int mOrientation;
        private int mPaddingBottom;
        private int mPaddingLeft;
        private int mPaddingRight;
        private int mPaddingTop;
        private ConstraintAnchor mRight;
        private ConstraintAnchor mTop;
        private ConstraintWidget biggest = null;
        int biggestDimension = 0;
        private int mWidth = 0;
        private int mHeight = 0;
        private int mStartIndex = 0;
        private int mCount = 0;
        private int mNbMatchConstraintsWidgets = 0;

        private void h() {
            this.mWidth = 0;
            this.mHeight = 0;
            this.biggest = null;
            this.biggestDimension = 0;
            int i10 = this.mCount;
            for (int i11 = 0; i11 < i10 && this.mStartIndex + i11 < Flow.this.mDisplayedWidgetsCount; i11++) {
                ConstraintWidget constraintWidget = Flow.this.mDisplayedWidgets[this.mStartIndex + i11];
                if (this.mOrientation == 0) {
                    int iY = constraintWidget.Y();
                    int i12 = Flow.this.mHorizontalGap;
                    if (constraintWidget.X() == 8) {
                        i12 = 0;
                    }
                    this.mWidth += iY + i12;
                    int iO2 = Flow.this.o2(constraintWidget, this.mMax);
                    if (this.biggest == null || this.biggestDimension < iO2) {
                        this.biggest = constraintWidget;
                        this.biggestDimension = iO2;
                        this.mHeight = iO2;
                    }
                } else {
                    int iP2 = Flow.this.p2(constraintWidget, this.mMax);
                    int iO3 = Flow.this.o2(constraintWidget, this.mMax);
                    int i13 = Flow.this.mVerticalGap;
                    if (constraintWidget.X() == 8) {
                        i13 = 0;
                    }
                    this.mHeight += iO3 + i13;
                    if (this.biggest == null || this.biggestDimension < iP2) {
                        this.biggest = constraintWidget;
                        this.biggestDimension = iP2;
                        this.mWidth = iP2;
                    }
                }
            }
        }

        public void c() {
            this.biggestDimension = 0;
            this.biggest = null;
            this.mWidth = 0;
            this.mHeight = 0;
            this.mStartIndex = 0;
            this.mCount = 0;
            this.mNbMatchConstraintsWidgets = 0;
        }

        public void i(int i10) {
            this.mStartIndex = i10;
        }

        public void j(int i10, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int i11, int i12, int i13, int i14, int i15) {
            this.mOrientation = i10;
            this.mLeft = constraintAnchor;
            this.mTop = constraintAnchor2;
            this.mRight = constraintAnchor3;
            this.mBottom = constraintAnchor4;
            this.mPaddingLeft = i11;
            this.mPaddingTop = i12;
            this.mPaddingRight = i13;
            this.mPaddingBottom = i14;
            this.mMax = i15;
        }

        public WidgetsList(int i10, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int i11) {
            this.mPaddingLeft = 0;
            this.mPaddingTop = 0;
            this.mPaddingRight = 0;
            this.mPaddingBottom = 0;
            this.mMax = 0;
            this.mOrientation = i10;
            this.mLeft = constraintAnchor;
            this.mTop = constraintAnchor2;
            this.mRight = constraintAnchor3;
            this.mBottom = constraintAnchor4;
            this.mPaddingLeft = Flow.this.D1();
            this.mPaddingTop = Flow.this.F1();
            this.mPaddingRight = Flow.this.E1();
            this.mPaddingBottom = Flow.this.C1();
            this.mMax = i11;
        }

        public void b(ConstraintWidget constraintWidget) {
            if (this.mOrientation == 0) {
                int iP2 = Flow.this.p2(constraintWidget, this.mMax);
                if (constraintWidget.C() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    this.mNbMatchConstraintsWidgets++;
                    iP2 = 0;
                }
                this.mWidth += iP2 + (constraintWidget.X() != 8 ? Flow.this.mHorizontalGap : 0);
                int iO2 = Flow.this.o2(constraintWidget, this.mMax);
                if (this.biggest == null || this.biggestDimension < iO2) {
                    this.biggest = constraintWidget;
                    this.biggestDimension = iO2;
                    this.mHeight = iO2;
                }
            } else {
                int iP3 = Flow.this.p2(constraintWidget, this.mMax);
                int iO3 = Flow.this.o2(constraintWidget, this.mMax);
                if (constraintWidget.V() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    this.mNbMatchConstraintsWidgets++;
                    iO3 = 0;
                }
                this.mHeight += iO3 + (constraintWidget.X() != 8 ? Flow.this.mVerticalGap : 0);
                if (this.biggest == null || this.biggestDimension < iP3) {
                    this.biggest = constraintWidget;
                    this.biggestDimension = iP3;
                    this.mWidth = iP3;
                }
            }
            this.mCount++;
        }

        public void d(boolean z6, int i10, boolean z10) {
            ConstraintWidget constraintWidget;
            char c7;
            float f;
            float f6;
            int i11 = this.mCount;
            for (int i12 = 0; i12 < i11 && this.mStartIndex + i12 < Flow.this.mDisplayedWidgetsCount; i12++) {
                ConstraintWidget constraintWidget2 = Flow.this.mDisplayedWidgets[this.mStartIndex + i12];
                if (constraintWidget2 != null) {
                    constraintWidget2.x0();
                }
            }
            if (i11 == 0 || this.biggest == null) {
                return;
            }
            boolean z11 = z10 && i10 == 0;
            int i13 = -1;
            int i14 = -1;
            for (int i15 = 0; i15 < i11; i15++) {
                int i16 = z6 ? (i11 - 1) - i15 : i15;
                if (this.mStartIndex + i16 >= Flow.this.mDisplayedWidgetsCount) {
                    break;
                }
                ConstraintWidget constraintWidget3 = Flow.this.mDisplayedWidgets[this.mStartIndex + i16];
                if (constraintWidget3 != null && constraintWidget3.X() == 0) {
                    if (i13 == -1) {
                        i13 = i15;
                    }
                    i14 = i15;
                }
            }
            ConstraintWidget constraintWidget4 = null;
            if (this.mOrientation != 0) {
                ConstraintWidget constraintWidget5 = this.biggest;
                constraintWidget5.R0(Flow.this.mHorizontalStyle);
                int i17 = this.mPaddingLeft;
                if (i10 > 0) {
                    i17 += Flow.this.mHorizontalGap;
                }
                if (z6) {
                    constraintWidget5.mRight.a(this.mRight, i17);
                    if (z10) {
                        constraintWidget5.mLeft.a(this.mLeft, this.mPaddingRight);
                    }
                    if (i10 > 0) {
                        this.mRight.mOwner.mLeft.a(constraintWidget5.mRight, 0);
                    }
                } else {
                    constraintWidget5.mLeft.a(this.mLeft, i17);
                    if (z10) {
                        constraintWidget5.mRight.a(this.mRight, this.mPaddingRight);
                    }
                    if (i10 > 0) {
                        this.mLeft.mOwner.mRight.a(constraintWidget5.mLeft, 0);
                    }
                }
                for (int i18 = 0; i18 < i11 && this.mStartIndex + i18 < Flow.this.mDisplayedWidgetsCount; i18++) {
                    ConstraintWidget constraintWidget6 = Flow.this.mDisplayedWidgets[this.mStartIndex + i18];
                    if (constraintWidget6 != null) {
                        if (i18 == 0) {
                            constraintWidget6.l(constraintWidget6.mTop, this.mTop, this.mPaddingTop);
                            int i19 = Flow.this.mVerticalStyle;
                            float f7 = Flow.this.mVerticalBias;
                            if (this.mStartIndex == 0 && Flow.this.mFirstVerticalStyle != -1) {
                                i19 = Flow.this.mFirstVerticalStyle;
                                f7 = Flow.this.mFirstVerticalBias;
                            } else if (z10 && Flow.this.mLastVerticalStyle != -1) {
                                i19 = Flow.this.mLastVerticalStyle;
                                f7 = Flow.this.mLastVerticalBias;
                            }
                            constraintWidget6.i1(i19);
                            constraintWidget6.h1(f7);
                        }
                        if (i18 == i11 - 1) {
                            constraintWidget6.l(constraintWidget6.mBottom, this.mBottom, this.mPaddingBottom);
                        }
                        if (constraintWidget4 != null) {
                            constraintWidget6.mTop.a(constraintWidget4.mBottom, Flow.this.mVerticalGap);
                            if (i18 == i13) {
                                constraintWidget6.mTop.u(this.mPaddingTop);
                            }
                            constraintWidget4.mBottom.a(constraintWidget6.mTop, 0);
                            if (i18 == i14 + 1) {
                                constraintWidget4.mBottom.u(this.mPaddingBottom);
                            }
                        }
                        if (constraintWidget6 != constraintWidget5) {
                            if (z6) {
                                int i20 = Flow.this.mHorizontalAlign;
                                if (i20 == 0) {
                                    constraintWidget6.mRight.a(constraintWidget5.mRight, 0);
                                } else if (i20 == 1) {
                                    constraintWidget6.mLeft.a(constraintWidget5.mLeft, 0);
                                } else if (i20 == 2) {
                                    constraintWidget6.mLeft.a(constraintWidget5.mLeft, 0);
                                    constraintWidget6.mRight.a(constraintWidget5.mRight, 0);
                                }
                            } else {
                                int i21 = Flow.this.mHorizontalAlign;
                                if (i21 == 0) {
                                    constraintWidget6.mLeft.a(constraintWidget5.mLeft, 0);
                                } else if (i21 == 1) {
                                    constraintWidget6.mRight.a(constraintWidget5.mRight, 0);
                                } else if (i21 == 2) {
                                    if (z11) {
                                        constraintWidget6.mLeft.a(this.mLeft, this.mPaddingLeft);
                                        constraintWidget6.mRight.a(this.mRight, this.mPaddingRight);
                                    } else {
                                        constraintWidget6.mLeft.a(constraintWidget5.mLeft, 0);
                                        constraintWidget6.mRight.a(constraintWidget5.mRight, 0);
                                    }
                                }
                            }
                        }
                        constraintWidget4 = constraintWidget6;
                    }
                }
                return;
            }
            ConstraintWidget constraintWidget7 = this.biggest;
            constraintWidget7.i1(Flow.this.mVerticalStyle);
            int i22 = this.mPaddingTop;
            if (i10 > 0) {
                i22 += Flow.this.mVerticalGap;
            }
            constraintWidget7.mTop.a(this.mTop, i22);
            if (z10) {
                constraintWidget7.mBottom.a(this.mBottom, this.mPaddingBottom);
            }
            if (i10 > 0) {
                this.mTop.mOwner.mBottom.a(constraintWidget7.mTop, 0);
            }
            char c10 = 3;
            if (Flow.this.mVerticalAlign != 3 || constraintWidget7.b0()) {
                constraintWidget = constraintWidget7;
                break;
            }
            int i23 = 0;
            while (true) {
                if (i23 < i11) {
                    int i24 = z6 ? (i11 - 1) - i23 : i23;
                    if (this.mStartIndex + i24 < Flow.this.mDisplayedWidgetsCount) {
                        constraintWidget = Flow.this.mDisplayedWidgets[this.mStartIndex + i24];
                        if (constraintWidget.b0()) {
                            break;
                        } else {
                            i23++;
                        }
                    }
                }
                constraintWidget = constraintWidget7;
                break;
            }
            int i25 = 0;
            while (i25 < i11) {
                int i26 = z6 ? (i11 - 1) - i25 : i25;
                if (this.mStartIndex + i26 >= Flow.this.mDisplayedWidgetsCount) {
                    return;
                }
                ConstraintWidget constraintWidget8 = Flow.this.mDisplayedWidgets[this.mStartIndex + i26];
                if (constraintWidget8 == null) {
                    constraintWidget8 = constraintWidget4;
                    c7 = c10;
                } else {
                    if (i25 == 0) {
                        constraintWidget8.l(constraintWidget8.mLeft, this.mLeft, this.mPaddingLeft);
                    }
                    if (i26 == 0) {
                        int i27 = Flow.this.mHorizontalStyle;
                        float f10 = Flow.this.mHorizontalBias;
                        if (z6) {
                            f10 = 1.0f - f10;
                        }
                        if (this.mStartIndex == 0 && Flow.this.mFirstHorizontalStyle != -1) {
                            i27 = Flow.this.mFirstHorizontalStyle;
                            if (z6) {
                                f6 = Flow.this.mFirstHorizontalBias;
                                f = 1.0f - f6;
                            } else {
                                f = Flow.this.mFirstHorizontalBias;
                            }
                            f10 = f;
                        } else if (z10 && Flow.this.mLastHorizontalStyle != -1) {
                            i27 = Flow.this.mLastHorizontalStyle;
                            if (z6) {
                                f6 = Flow.this.mLastHorizontalBias;
                                f = 1.0f - f6;
                            } else {
                                f = Flow.this.mLastHorizontalBias;
                            }
                            f10 = f;
                        }
                        constraintWidget8.R0(i27);
                        constraintWidget8.Q0(f10);
                    }
                    if (i25 == i11 - 1) {
                        constraintWidget8.l(constraintWidget8.mRight, this.mRight, this.mPaddingRight);
                    }
                    if (constraintWidget4 != null) {
                        constraintWidget8.mLeft.a(constraintWidget4.mRight, Flow.this.mHorizontalGap);
                        if (i25 == i13) {
                            constraintWidget8.mLeft.u(this.mPaddingLeft);
                        }
                        constraintWidget4.mRight.a(constraintWidget8.mLeft, 0);
                        if (i25 == i14 + 1) {
                            constraintWidget4.mRight.u(this.mPaddingRight);
                        }
                    }
                    if (constraintWidget8 != constraintWidget7) {
                        c7 = 3;
                        if (Flow.this.mVerticalAlign == 3 && constraintWidget.b0() && constraintWidget8 != constraintWidget && constraintWidget8.b0()) {
                            constraintWidget8.mBaseline.a(constraintWidget.mBaseline, 0);
                        } else {
                            int i28 = Flow.this.mVerticalAlign;
                            if (i28 == 0) {
                                constraintWidget8.mTop.a(constraintWidget7.mTop, 0);
                            } else if (i28 == 1) {
                                constraintWidget8.mBottom.a(constraintWidget7.mBottom, 0);
                            } else if (z11) {
                                constraintWidget8.mTop.a(this.mTop, this.mPaddingTop);
                                constraintWidget8.mBottom.a(this.mBottom, this.mPaddingBottom);
                            } else {
                                constraintWidget8.mTop.a(constraintWidget7.mTop, 0);
                                constraintWidget8.mBottom.a(constraintWidget7.mBottom, 0);
                            }
                        }
                    } else {
                        c7 = 3;
                    }
                }
                i25++;
                c10 = c7;
                constraintWidget4 = constraintWidget8;
            }
        }

        public int e() {
            return this.mOrientation == 1 ? this.mHeight - Flow.this.mVerticalGap : this.mHeight;
        }

        public int f() {
            return this.mOrientation == 0 ? this.mWidth - Flow.this.mHorizontalGap : this.mWidth;
        }

        public void g(int i10) {
            int i11 = this.mNbMatchConstraintsWidgets;
            if (i11 == 0) {
                return;
            }
            int i12 = this.mCount;
            int i13 = i10 / i11;
            for (int i14 = 0; i14 < i12 && this.mStartIndex + i14 < Flow.this.mDisplayedWidgetsCount; i14++) {
                ConstraintWidget constraintWidget = Flow.this.mDisplayedWidgets[this.mStartIndex + i14];
                if (this.mOrientation == 0) {
                    if (constraintWidget != null && constraintWidget.C() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mMatchConstraintDefaultWidth == 0) {
                        Flow.this.H1(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, i13, constraintWidget.V(), constraintWidget.z());
                    }
                } else if (constraintWidget != null && constraintWidget.V() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mMatchConstraintDefaultHeight == 0) {
                    Flow.this.H1(constraintWidget, constraintWidget.C(), constraintWidget.Y(), ConstraintWidget.DimensionBehaviour.FIXED, i13);
                }
            }
            h();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int o2(ConstraintWidget constraintWidget, int i10) {
        if (constraintWidget == null) {
            return 0;
        }
        if (constraintWidget.V() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int i11 = constraintWidget.mMatchConstraintDefaultHeight;
            if (i11 == 0) {
                return 0;
            }
            if (i11 == 2) {
                int i12 = (int) (constraintWidget.mMatchConstraintPercentHeight * i10);
                if (i12 != constraintWidget.z()) {
                    constraintWidget.c1(true);
                    H1(constraintWidget, constraintWidget.C(), constraintWidget.Y(), ConstraintWidget.DimensionBehaviour.FIXED, i12);
                }
                return i12;
            }
            if (i11 == 1) {
                return constraintWidget.z();
            }
            if (i11 == 3) {
                return (int) ((constraintWidget.Y() * constraintWidget.mDimensionRatio) + 0.5f);
            }
        }
        return constraintWidget.z();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int p2(ConstraintWidget constraintWidget, int i10) {
        if (constraintWidget == null) {
            return 0;
        }
        if (constraintWidget.C() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int i11 = constraintWidget.mMatchConstraintDefaultWidth;
            if (i11 == 0) {
                return 0;
            }
            if (i11 == 2) {
                int i12 = (int) (constraintWidget.mMatchConstraintPercentWidth * i10);
                if (i12 != constraintWidget.Y()) {
                    constraintWidget.c1(true);
                    H1(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, i12, constraintWidget.V(), constraintWidget.z());
                }
                return i12;
            }
            if (i11 == 1) {
                return constraintWidget.Y();
            }
            if (i11 == 3) {
                return (int) ((constraintWidget.z() * constraintWidget.mDimensionRatio) + 0.5f);
            }
        }
        return constraintWidget.Y();
    }

    /* JADX WARN: Code duplicated, block: B:100:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:106:0x010f A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:109:0x0117 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:117:0x011d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:118:0x0115 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:119:0x0059 A[ADDED_TO_REGION, EDGE_INSN: B:119:0x0059->B:42:0x0059 BREAK  A[LOOP:1: B:44:0x005c->B:124:0x005c], REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:121:0x010d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:122:0x0059 A[ADDED_TO_REGION, EDGE_INSN: B:122:0x0059->B:42:0x0059 BREAK  A[LOOP:1: B:44:0x005c->B:124:0x005c], REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:132:0x00d3 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:136:0x00ed A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:139:0x0104 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:45:0x005e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:46:0x0060  */
    /* JADX WARN: Code duplicated, block: B:47:0x006a  */
    /* JADX WARN: Code duplicated, block: B:50:0x0078  */
    /* JADX WARN: Code duplicated, block: B:54:0x0080  */
    /* JADX WARN: Code duplicated, block: B:57:0x0088  */
    /* JADX WARN: Code duplicated, block: B:61:0x0090  */
    /* JADX WARN: Code duplicated, block: B:64:0x0097  */
    /* JADX WARN: Code duplicated, block: B:66:0x009a  */
    /* JADX WARN: Code duplicated, block: B:68:0x009f  */
    /* JADX WARN: Code duplicated, block: B:72:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:77:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:79:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:82:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:84:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:89:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:91:0x00e3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:92:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:97:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:99:0x00fa A[DONT_INVERT] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:105:0x010d -> B:42:0x0059). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:106:0x010f -> B:42:0x0059). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:108:0x0115 -> B:42:0x0059). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:109:0x0117 -> B:42:0x0059). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:45:0x005e
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    private void q2(androidx.constraintlayout.core.widgets.ConstraintWidget[] r11, int r12, int r13, int r14, int[] r15) {
        /*
            Method dump skipped, instruction units count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.Flow.q2(androidx.constraintlayout.core.widgets.ConstraintWidget[], int, int, int, int[]):void");
    }

    public void A2(int i10) {
        this.mHorizontalGap = i10;
    }

    public void B2(int i10) {
        this.mHorizontalStyle = i10;
    }

    public void C2(float f) {
        this.mLastHorizontalBias = f;
    }

    public void D2(int i10) {
        this.mLastHorizontalStyle = i10;
    }

    public void E2(float f) {
        this.mLastVerticalBias = f;
    }

    public void F2(int i10) {
        this.mLastVerticalStyle = i10;
    }

    public void G2(int i10) {
        this.mMaxElementsWrap = i10;
    }

    public void H2(int i10) {
        this.mOrientation = i10;
    }

    public void I2(int i10) {
        this.mVerticalAlign = i10;
    }

    public void J2(float f) {
        this.mVerticalBias = f;
    }

    public void K2(int i10) {
        this.mVerticalGap = i10;
    }

    public void L2(int i10) {
        this.mVerticalStyle = i10;
    }

    public void M2(int i10) {
        this.mWrapMode = i10;
    }

    public void u2(float f) {
        this.mFirstHorizontalBias = f;
    }

    public void v2(int i10) {
        this.mFirstHorizontalStyle = i10;
    }

    public void w2(float f) {
        this.mFirstVerticalBias = f;
    }

    public void x2(int i10) {
        this.mFirstVerticalStyle = i10;
    }

    public void y2(int i10) {
        this.mHorizontalAlign = i10;
    }

    public void z2(float f) {
        this.mHorizontalBias = f;
    }

    private void n2(boolean z6) {
        ConstraintWidget constraintWidget;
        float f;
        int i10;
        if (this.mAlignedDimensions == null || this.mAlignedBiggestElementsInCols == null || this.mAlignedBiggestElementsInRows == null) {
            return;
        }
        for (int i11 = 0; i11 < this.mDisplayedWidgetsCount; i11++) {
            this.mDisplayedWidgets[i11].x0();
        }
        int[] iArr = this.mAlignedDimensions;
        int i12 = iArr[0];
        int i13 = iArr[1];
        float f6 = this.mHorizontalBias;
        ConstraintWidget constraintWidget2 = null;
        int i14 = 0;
        while (i14 < i12) {
            if (z6) {
                i10 = (i12 - i14) - 1;
                f = 1.0f - this.mHorizontalBias;
            } else {
                f = f6;
                i10 = i14;
            }
            ConstraintWidget constraintWidget3 = this.mAlignedBiggestElementsInCols[i10];
            if (constraintWidget3 != null && constraintWidget3.X() != 8) {
                if (i14 == 0) {
                    constraintWidget3.l(constraintWidget3.mLeft, this.mLeft, D1());
                    constraintWidget3.R0(this.mHorizontalStyle);
                    constraintWidget3.Q0(f);
                }
                if (i14 == i12 - 1) {
                    constraintWidget3.l(constraintWidget3.mRight, this.mRight, E1());
                }
                if (i14 > 0 && constraintWidget2 != null) {
                    constraintWidget3.l(constraintWidget3.mLeft, constraintWidget2.mRight, this.mHorizontalGap);
                    constraintWidget2.l(constraintWidget2.mRight, constraintWidget3.mLeft, 0);
                }
                constraintWidget2 = constraintWidget3;
            }
            i14++;
            f6 = f;
        }
        for (int i15 = 0; i15 < i13; i15++) {
            ConstraintWidget constraintWidget4 = this.mAlignedBiggestElementsInRows[i15];
            if (constraintWidget4 != null && constraintWidget4.X() != 8) {
                if (i15 == 0) {
                    constraintWidget4.l(constraintWidget4.mTop, this.mTop, F1());
                    constraintWidget4.i1(this.mVerticalStyle);
                    constraintWidget4.h1(this.mVerticalBias);
                }
                if (i15 == i13 - 1) {
                    constraintWidget4.l(constraintWidget4.mBottom, this.mBottom, C1());
                }
                if (i15 > 0 && constraintWidget2 != null) {
                    constraintWidget4.l(constraintWidget4.mTop, constraintWidget2.mBottom, this.mVerticalGap);
                    constraintWidget2.l(constraintWidget2.mBottom, constraintWidget4.mTop, 0);
                }
                constraintWidget2 = constraintWidget4;
            }
        }
        for (int i16 = 0; i16 < i12; i16++) {
            for (int i17 = 0; i17 < i13; i17++) {
                int i18 = (i17 * i12) + i16;
                if (this.mOrientation == 1) {
                    i18 = (i16 * i13) + i17;
                }
                ConstraintWidget[] constraintWidgetArr = this.mDisplayedWidgets;
                if (i18 < constraintWidgetArr.length && (constraintWidget = constraintWidgetArr[i18]) != null && constraintWidget.X() != 8) {
                    ConstraintWidget constraintWidget5 = this.mAlignedBiggestElementsInCols[i16];
                    ConstraintWidget constraintWidget6 = this.mAlignedBiggestElementsInRows[i17];
                    if (constraintWidget != constraintWidget5) {
                        constraintWidget.l(constraintWidget.mLeft, constraintWidget5.mLeft, 0);
                        constraintWidget.l(constraintWidget.mRight, constraintWidget5.mRight, 0);
                    }
                    if (constraintWidget != constraintWidget6) {
                        constraintWidget.l(constraintWidget.mTop, constraintWidget6.mTop, 0);
                        constraintWidget.l(constraintWidget.mBottom, constraintWidget6.mBottom, 0);
                    }
                }
            }
        }
    }

    private void r2(ConstraintWidget[] constraintWidgetArr, int i10, int i11, int i12, int[] iArr) {
        int i13;
        int i14;
        int i15;
        ConstraintAnchor constraintAnchor;
        int iE1;
        ConstraintAnchor constraintAnchor2;
        int iC1;
        int i16;
        if (i10 == 0) {
            return;
        }
        this.mChainList.clear();
        WidgetsList widgetsList = new WidgetsList(i11, this.mLeft, this.mTop, this.mRight, this.mBottom, i12);
        this.mChainList.add(widgetsList);
        if (i11 == 0) {
            i13 = 0;
            int i17 = 0;
            int i18 = 0;
            while (i18 < i10) {
                ConstraintWidget constraintWidget = constraintWidgetArr[i18];
                int iP2 = p2(constraintWidget, i12);
                if (constraintWidget.C() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    i13++;
                }
                int i19 = i13;
                boolean z6 = (i17 == i12 || (this.mHorizontalGap + i17) + iP2 > i12) && widgetsList.biggest != null;
                if ((z6 || i18 <= 0 || (i16 = this.mMaxElementsWrap) <= 0 || i18 % i16 != 0) && !z6) {
                    if (i18 > 0) {
                        i17 += this.mHorizontalGap + iP2;
                    }
                    widgetsList.b(constraintWidget);
                    i18++;
                    i13 = i19;
                } else {
                    widgetsList = new WidgetsList(i11, this.mLeft, this.mTop, this.mRight, this.mBottom, i12);
                    widgetsList.i(i18);
                    this.mChainList.add(widgetsList);
                }
                i17 = iP2;
                widgetsList.b(constraintWidget);
                i18++;
                i13 = i19;
            }
        } else {
            i13 = 0;
            int i20 = 0;
            int i21 = 0;
            while (i21 < i10) {
                ConstraintWidget constraintWidget2 = constraintWidgetArr[i21];
                int iO2 = o2(constraintWidget2, i12);
                if (constraintWidget2.V() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    i13++;
                }
                int i22 = i13;
                boolean z10 = (i20 == i12 || (this.mVerticalGap + i20) + iO2 > i12) && widgetsList.biggest != null;
                if ((z10 || i21 <= 0 || (i14 = this.mMaxElementsWrap) <= 0 || i21 % i14 != 0) && !z10) {
                    if (i21 > 0) {
                        i20 += this.mVerticalGap + iO2;
                    }
                    widgetsList.b(constraintWidget2);
                    i21++;
                    i13 = i22;
                } else {
                    widgetsList = new WidgetsList(i11, this.mLeft, this.mTop, this.mRight, this.mBottom, i12);
                    widgetsList.i(i21);
                    this.mChainList.add(widgetsList);
                }
                i20 = iO2;
                widgetsList.b(constraintWidget2);
                i21++;
                i13 = i22;
            }
        }
        int size = this.mChainList.size();
        ConstraintAnchor constraintAnchor3 = this.mLeft;
        ConstraintAnchor constraintAnchor4 = this.mTop;
        ConstraintAnchor constraintAnchor5 = this.mRight;
        ConstraintAnchor constraintAnchor6 = this.mBottom;
        int iD1 = D1();
        int iF1 = F1();
        int iE2 = E1();
        int iC2 = C1();
        ConstraintWidget.DimensionBehaviour dimensionBehaviourC = C();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        boolean z11 = dimensionBehaviourC == dimensionBehaviour || V() == dimensionBehaviour;
        if (i13 > 0 && z11) {
            for (int i23 = 0; i23 < size; i23++) {
                WidgetsList widgetsList2 = this.mChainList.get(i23);
                if (i11 == 0) {
                    widgetsList2.g(i12 - widgetsList2.f());
                } else {
                    widgetsList2.g(i12 - widgetsList2.e());
                }
            }
        }
        int i24 = iF1;
        int i25 = iE2;
        int iE = 0;
        int iF = 0;
        int i26 = 0;
        int i27 = iD1;
        ConstraintAnchor constraintAnchor7 = constraintAnchor4;
        ConstraintAnchor constraintAnchor8 = constraintAnchor3;
        int i28 = iC2;
        while (i26 < size) {
            WidgetsList widgetsList3 = this.mChainList.get(i26);
            if (i11 == 0) {
                if (i26 < size - 1) {
                    constraintAnchor2 = this.mChainList.get(i26 + 1).biggest.mTop;
                    iC1 = 0;
                } else {
                    constraintAnchor2 = this.mBottom;
                    iC1 = C1();
                }
                ConstraintAnchor constraintAnchor9 = widgetsList3.biggest.mBottom;
                ConstraintAnchor constraintAnchor10 = constraintAnchor8;
                ConstraintAnchor constraintAnchor11 = constraintAnchor8;
                int i29 = iE;
                ConstraintAnchor constraintAnchor12 = constraintAnchor7;
                int i30 = iF;
                ConstraintAnchor constraintAnchor13 = constraintAnchor5;
                ConstraintAnchor constraintAnchor14 = constraintAnchor5;
                i15 = i26;
                widgetsList3.j(i11, constraintAnchor10, constraintAnchor12, constraintAnchor13, constraintAnchor2, i27, i24, i25, iC1, i12);
                int iMax = Math.max(i30, widgetsList3.f());
                iE = i29 + widgetsList3.e();
                if (i15 > 0) {
                    iE += this.mVerticalGap;
                }
                constraintAnchor8 = constraintAnchor11;
                iF = iMax;
                i24 = 0;
                constraintAnchor7 = constraintAnchor9;
                constraintAnchor = constraintAnchor14;
                int i31 = iC1;
                constraintAnchor6 = constraintAnchor2;
                i28 = i31;
            } else {
                ConstraintAnchor constraintAnchor15 = constraintAnchor8;
                int i32 = iE;
                int i33 = iF;
                i15 = i26;
                if (i15 < size - 1) {
                    constraintAnchor = this.mChainList.get(i15 + 1).biggest.mLeft;
                    iE1 = 0;
                } else {
                    constraintAnchor = this.mRight;
                    iE1 = E1();
                }
                ConstraintAnchor constraintAnchor16 = widgetsList3.biggest.mRight;
                widgetsList3.j(i11, constraintAnchor15, constraintAnchor7, constraintAnchor, constraintAnchor6, i27, i24, iE1, i28, i12);
                iF = i33 + widgetsList3.f();
                int iMax2 = Math.max(i32, widgetsList3.e());
                if (i15 > 0) {
                    iF += this.mHorizontalGap;
                }
                iE = iMax2;
                i27 = 0;
                i25 = iE1;
                constraintAnchor8 = constraintAnchor16;
            }
            i26 = i15 + 1;
            constraintAnchor5 = constraintAnchor;
        }
        iArr[0] = iF;
        iArr[1] = iE;
    }

    private void s2(ConstraintWidget[] constraintWidgetArr, int i10, int i11, int i12, int[] iArr) {
        int i13;
        int i14;
        int i15;
        ConstraintAnchor constraintAnchor;
        int iE1;
        ConstraintAnchor constraintAnchor2;
        int iC1;
        int i16;
        if (i10 == 0) {
            return;
        }
        this.mChainList.clear();
        WidgetsList widgetsList = new WidgetsList(i11, this.mLeft, this.mTop, this.mRight, this.mBottom, i12);
        this.mChainList.add(widgetsList);
        if (i11 == 0) {
            int i17 = 0;
            i13 = 0;
            int i18 = 0;
            int i19 = 0;
            while (i19 < i10) {
                int i20 = i17 + 1;
                ConstraintWidget constraintWidget = constraintWidgetArr[i19];
                int iP2 = p2(constraintWidget, i12);
                if (constraintWidget.C() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    i13++;
                }
                int i21 = i13;
                boolean z6 = (i18 == i12 || (this.mHorizontalGap + i18) + iP2 > i12) && widgetsList.biggest != null;
                if ((z6 || i19 <= 0 || (i16 = this.mMaxElementsWrap) <= 0 || i20 <= i16) && !z6) {
                    i18 = i19 > 0 ? i18 + this.mHorizontalGap + iP2 : iP2;
                    i17 = 0;
                } else {
                    widgetsList = new WidgetsList(i11, this.mLeft, this.mTop, this.mRight, this.mBottom, i12);
                    widgetsList.i(i19);
                    this.mChainList.add(widgetsList);
                    i17 = i20;
                    i18 = iP2;
                }
                widgetsList.b(constraintWidget);
                i19++;
                i13 = i21;
            }
        } else {
            int i22 = 0;
            i13 = 0;
            int i23 = 0;
            while (i23 < i10) {
                ConstraintWidget constraintWidget2 = constraintWidgetArr[i23];
                int iO2 = o2(constraintWidget2, i12);
                if (constraintWidget2.V() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    i13++;
                }
                int i24 = i13;
                boolean z10 = (i22 == i12 || (this.mVerticalGap + i22) + iO2 > i12) && widgetsList.biggest != null;
                if ((z10 || i23 <= 0 || (i14 = this.mMaxElementsWrap) <= 0 || i14 >= 0) && !z10) {
                    if (i23 > 0) {
                        i22 += this.mVerticalGap + iO2;
                    }
                    widgetsList.b(constraintWidget2);
                    i23++;
                    i13 = i24;
                } else {
                    widgetsList = new WidgetsList(i11, this.mLeft, this.mTop, this.mRight, this.mBottom, i12);
                    widgetsList.i(i23);
                    this.mChainList.add(widgetsList);
                }
                i22 = iO2;
                widgetsList.b(constraintWidget2);
                i23++;
                i13 = i24;
            }
        }
        int size = this.mChainList.size();
        ConstraintAnchor constraintAnchor3 = this.mLeft;
        ConstraintAnchor constraintAnchor4 = this.mTop;
        ConstraintAnchor constraintAnchor5 = this.mRight;
        ConstraintAnchor constraintAnchor6 = this.mBottom;
        int iD1 = D1();
        int iF1 = F1();
        int iE2 = E1();
        int iC2 = C1();
        ConstraintWidget.DimensionBehaviour dimensionBehaviourC = C();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        boolean z11 = dimensionBehaviourC == dimensionBehaviour || V() == dimensionBehaviour;
        if (i13 > 0 && z11) {
            for (int i25 = 0; i25 < size; i25++) {
                WidgetsList widgetsList2 = this.mChainList.get(i25);
                if (i11 == 0) {
                    widgetsList2.g(i12 - widgetsList2.f());
                } else {
                    widgetsList2.g(i12 - widgetsList2.e());
                }
            }
        }
        int i26 = iF1;
        int i27 = iE2;
        int iE = 0;
        int iF = 0;
        int i28 = 0;
        int i29 = iD1;
        ConstraintAnchor constraintAnchor7 = constraintAnchor4;
        ConstraintAnchor constraintAnchor8 = constraintAnchor3;
        int i30 = iC2;
        while (i28 < size) {
            WidgetsList widgetsList3 = this.mChainList.get(i28);
            if (i11 == 0) {
                if (i28 < size - 1) {
                    constraintAnchor2 = this.mChainList.get(i28 + 1).biggest.mTop;
                    iC1 = 0;
                } else {
                    constraintAnchor2 = this.mBottom;
                    iC1 = C1();
                }
                ConstraintAnchor constraintAnchor9 = widgetsList3.biggest.mBottom;
                ConstraintAnchor constraintAnchor10 = constraintAnchor8;
                ConstraintAnchor constraintAnchor11 = constraintAnchor8;
                int i31 = iE;
                ConstraintAnchor constraintAnchor12 = constraintAnchor7;
                int i32 = iF;
                ConstraintAnchor constraintAnchor13 = constraintAnchor5;
                ConstraintAnchor constraintAnchor14 = constraintAnchor5;
                i15 = i28;
                widgetsList3.j(i11, constraintAnchor10, constraintAnchor12, constraintAnchor13, constraintAnchor2, i29, i26, i27, iC1, i12);
                int iMax = Math.max(i32, widgetsList3.f());
                iE = i31 + widgetsList3.e();
                if (i15 > 0) {
                    iE += this.mVerticalGap;
                }
                constraintAnchor8 = constraintAnchor11;
                iF = iMax;
                i26 = 0;
                constraintAnchor7 = constraintAnchor9;
                constraintAnchor = constraintAnchor14;
                int i33 = iC1;
                constraintAnchor6 = constraintAnchor2;
                i30 = i33;
            } else {
                ConstraintAnchor constraintAnchor15 = constraintAnchor8;
                int i34 = iE;
                int i35 = iF;
                i15 = i28;
                if (i15 < size - 1) {
                    constraintAnchor = this.mChainList.get(i15 + 1).biggest.mLeft;
                    iE1 = 0;
                } else {
                    constraintAnchor = this.mRight;
                    iE1 = E1();
                }
                ConstraintAnchor constraintAnchor16 = widgetsList3.biggest.mRight;
                widgetsList3.j(i11, constraintAnchor15, constraintAnchor7, constraintAnchor, constraintAnchor6, i29, i26, iE1, i30, i12);
                iF = i35 + widgetsList3.f();
                int iMax2 = Math.max(i34, widgetsList3.e());
                if (i15 > 0) {
                    iF += this.mHorizontalGap;
                }
                iE = iMax2;
                i29 = 0;
                i27 = iE1;
                constraintAnchor8 = constraintAnchor16;
            }
            i28 = i15 + 1;
            constraintAnchor5 = constraintAnchor;
        }
        iArr[0] = iF;
        iArr[1] = iE;
    }

    private void t2(ConstraintWidget[] constraintWidgetArr, int i10, int i11, int i12, int[] iArr) {
        WidgetsList widgetsList;
        if (i10 == 0) {
            return;
        }
        if (this.mChainList.size() == 0) {
            widgetsList = new WidgetsList(i11, this.mLeft, this.mTop, this.mRight, this.mBottom, i12);
            this.mChainList.add(widgetsList);
        } else {
            WidgetsList widgetsList2 = this.mChainList.get(0);
            widgetsList2.c();
            widgetsList = widgetsList2;
            widgetsList.j(i11, this.mLeft, this.mTop, this.mRight, this.mBottom, D1(), F1(), E1(), C1(), i12);
        }
        for (int i13 = 0; i13 < i10; i13++) {
            widgetsList.b(constraintWidgetArr[i13]);
        }
        iArr[0] = widgetsList.f();
        iArr[1] = widgetsList.e();
    }

    @Override // androidx.constraintlayout.core.widgets.VirtualLayout
    public void G1(int i10, int i11, int i12, int i13) {
        int i14;
        int i15;
        boolean z6;
        if (this.mWidgetsCount > 0 && !I1()) {
            L1(0, 0);
            K1(false);
            return;
        }
        int iD1 = D1();
        int iE1 = E1();
        int iF1 = F1();
        int iC1 = C1();
        int[] iArr = new int[2];
        int i16 = (i11 - iD1) - iE1;
        int i17 = this.mOrientation;
        if (i17 == 1) {
            i16 = (i13 - iF1) - iC1;
        }
        int i18 = i16;
        if (i17 == 0) {
            if (this.mHorizontalStyle == -1) {
                this.mHorizontalStyle = 0;
            }
            if (this.mVerticalStyle == -1) {
                this.mVerticalStyle = 0;
            }
        } else {
            if (this.mHorizontalStyle == -1) {
                this.mHorizontalStyle = 0;
            }
            if (this.mVerticalStyle == -1) {
                this.mVerticalStyle = 0;
            }
        }
        ConstraintWidget[] constraintWidgetArr = this.mWidgets;
        int i19 = 0;
        int i20 = 0;
        while (true) {
            i14 = this.mWidgetsCount;
            if (i19 >= i14) {
                break;
            }
            if (this.mWidgets[i19].X() == 8) {
                i20++;
            }
            i19++;
        }
        if (i20 > 0) {
            constraintWidgetArr = new ConstraintWidget[i14 - i20];
            int i21 = 0;
            for (int i22 = 0; i22 < this.mWidgetsCount; i22++) {
                ConstraintWidget constraintWidget = this.mWidgets[i22];
                if (constraintWidget.X() != 8) {
                    constraintWidgetArr[i21] = constraintWidget;
                    i21++;
                }
            }
            i15 = i21;
        } else {
            i15 = i14;
        }
        this.mDisplayedWidgets = constraintWidgetArr;
        this.mDisplayedWidgetsCount = i15;
        int i23 = this.mWrapMode;
        if (i23 == 0) {
            z6 = true;
            t2(constraintWidgetArr, i15, this.mOrientation, i18, iArr);
        } else if (i23 == 1) {
            z6 = true;
            r2(constraintWidgetArr, i15, this.mOrientation, i18, iArr);
        } else if (i23 == 2) {
            z6 = true;
            q2(constraintWidgetArr, i15, this.mOrientation, i18, iArr);
        } else if (i23 != 3) {
            z6 = true;
        } else {
            z6 = true;
            s2(constraintWidgetArr, i15, this.mOrientation, i18, iArr);
        }
        int iMin = iArr[0] + iD1 + iE1;
        int iMin2 = iArr[z6 ? 1 : 0] + iF1 + iC1;
        if (i10 == 1073741824) {
            iMin = i11;
        } else if (i10 == Integer.MIN_VALUE) {
            iMin = Math.min(iMin, i11);
        } else if (i10 != 0) {
            iMin = 0;
        }
        if (i12 == 1073741824) {
            iMin2 = i13;
        } else if (i12 == Integer.MIN_VALUE) {
            iMin2 = Math.min(iMin2, i13);
        } else if (i12 != 0) {
            iMin2 = 0;
        }
        L1(iMin, iMin2);
        o1(iMin);
        P0(iMin2);
        if (this.mWidgetsCount <= 0) {
            z6 = false;
        }
        K1(z6);
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void g(LinearSystem linearSystem, boolean z6) {
        boolean z10;
        boolean z11;
        boolean z12;
        super.g(linearSystem, z6);
        if (M() != null && ((ConstraintWidgetContainer) M()).U1()) {
            z10 = true;
        } else {
            z10 = false;
        }
        int i10 = this.mWrapMode;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        int size = this.mChainList.size();
                        for (int i11 = 0; i11 < size; i11++) {
                            WidgetsList widgetsList = this.mChainList.get(i11);
                            if (i11 == size - 1) {
                                z12 = true;
                            } else {
                                z12 = false;
                            }
                            widgetsList.d(z10, i11, z12);
                        }
                    }
                } else {
                    n2(z10);
                }
            } else {
                int size2 = this.mChainList.size();
                for (int i12 = 0; i12 < size2; i12++) {
                    WidgetsList widgetsList2 = this.mChainList.get(i12);
                    if (i12 == size2 - 1) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    widgetsList2.d(z10, i12, z11);
                }
            }
        } else if (this.mChainList.size() > 0) {
            this.mChainList.get(0).d(z10, 0, true);
        }
        K1(false);
    }

    @Override // androidx.constraintlayout.core.widgets.HelperWidget, androidx.constraintlayout.core.widgets.ConstraintWidget
    public void n(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> map) {
        super.n(constraintWidget, map);
        Flow flow = (Flow) constraintWidget;
        this.mHorizontalStyle = flow.mHorizontalStyle;
        this.mVerticalStyle = flow.mVerticalStyle;
        this.mFirstHorizontalStyle = flow.mFirstHorizontalStyle;
        this.mFirstVerticalStyle = flow.mFirstVerticalStyle;
        this.mLastHorizontalStyle = flow.mLastHorizontalStyle;
        this.mLastVerticalStyle = flow.mLastVerticalStyle;
        this.mHorizontalBias = flow.mHorizontalBias;
        this.mVerticalBias = flow.mVerticalBias;
        this.mFirstHorizontalBias = flow.mFirstHorizontalBias;
        this.mFirstVerticalBias = flow.mFirstVerticalBias;
        this.mLastHorizontalBias = flow.mLastHorizontalBias;
        this.mLastVerticalBias = flow.mLastVerticalBias;
        this.mHorizontalGap = flow.mHorizontalGap;
        this.mVerticalGap = flow.mVerticalGap;
        this.mHorizontalAlign = flow.mHorizontalAlign;
        this.mVerticalAlign = flow.mVerticalAlign;
        this.mWrapMode = flow.mWrapMode;
        this.mMaxElementsWrap = flow.mMaxElementsWrap;
        this.mOrientation = flow.mOrientation;
    }
}
