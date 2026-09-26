package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.ArrayRow;
import androidx.constraintlayout.core.Cache;
import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.state.WidgetFrame;
import androidx.constraintlayout.core.widgets.analyzer.ChainRun;
import androidx.constraintlayout.core.widgets.analyzer.DependencyNode;
import androidx.constraintlayout.core.widgets.analyzer.HorizontalWidgetRun;
import androidx.constraintlayout.core.widgets.analyzer.VerticalWidgetRun;
import androidx.constraintlayout.core.widgets.analyzer.WidgetRun;
import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes7.dex */
public class ConstraintWidget {
    public static final int ANCHOR_BASELINE = 4;
    public static final int ANCHOR_BOTTOM = 3;
    public static final int ANCHOR_LEFT = 0;
    public static final int ANCHOR_RIGHT = 1;
    public static final int ANCHOR_TOP = 2;
    private static final boolean AUTOTAG_CENTER = false;
    public static final int BOTH = 2;
    public static final int CHAIN_PACKED = 2;
    public static final int CHAIN_SPREAD = 0;
    public static final int CHAIN_SPREAD_INSIDE = 1;
    public static float DEFAULT_BIAS = 0.5f;
    static final int DIMENSION_HORIZONTAL = 0;
    static final int DIMENSION_VERTICAL = 1;
    protected static final int DIRECT = 2;
    public static final int GONE = 8;
    public static final int HORIZONTAL = 0;
    public static final int INVISIBLE = 4;
    public static final int MATCH_CONSTRAINT_PERCENT = 2;
    public static final int MATCH_CONSTRAINT_RATIO = 3;
    public static final int MATCH_CONSTRAINT_RATIO_RESOLVED = 4;
    public static final int MATCH_CONSTRAINT_SPREAD = 0;
    public static final int MATCH_CONSTRAINT_WRAP = 1;
    protected static final int SOLVER = 1;
    public static final int UNKNOWN = -1;
    private static final boolean USE_WRAP_DIMENSION_FOR_SPREAD = false;
    public static final int VERTICAL = 1;
    public static final int VISIBLE = 0;
    private static final int WRAP = -2;
    public static final int WRAP_BEHAVIOR_HORIZONTAL_ONLY = 1;
    public static final int WRAP_BEHAVIOR_INCLUDED = 0;
    public static final int WRAP_BEHAVIOR_SKIPPED = 3;
    public static final int WRAP_BEHAVIOR_VERTICAL_ONLY = 2;
    private boolean OPTIMIZE_WRAP;
    private boolean OPTIMIZE_WRAP_ON_RESOLVED;
    public WidgetFrame frame;
    private boolean hasBaseline;
    public ChainRun horizontalChainRun;
    public int horizontalGroup;
    public HorizontalWidgetRun horizontalRun;
    private boolean horizontalSolvingPass;
    private boolean inPlaceholder;
    public boolean[] isTerminalWidget;
    protected ArrayList<ConstraintAnchor> mAnchors;
    private boolean mAnimated;
    public ConstraintAnchor mBaseline;
    int mBaselineDistance;
    public ConstraintAnchor mBottom;
    boolean mBottomHasCentered;
    public ConstraintAnchor mCenter;
    ConstraintAnchor mCenterX;
    ConstraintAnchor mCenterY;
    private float mCircleConstraintAngle;
    private Object mCompanionWidget;
    private int mContainerItemSkip;
    private String mDebugName;
    public float mDimensionRatio;
    protected int mDimensionRatioSide;
    int mDistToBottom;
    int mDistToLeft;
    int mDistToRight;
    int mDistToTop;
    boolean mGroupsToSolver;
    int mHeight;
    private int mHeightOverride;
    float mHorizontalBiasPercent;
    boolean mHorizontalChainFixedPosition;
    int mHorizontalChainStyle;
    ConstraintWidget mHorizontalNextWidget;
    public int mHorizontalResolution;
    boolean mHorizontalWrapVisited;
    private boolean mInVirtualLayout;
    public boolean mIsHeightWrapContent;
    private boolean[] mIsInBarrier;
    public boolean mIsWidthWrapContent;
    private int mLastHorizontalMeasureSpec;
    private int mLastVerticalMeasureSpec;
    public ConstraintAnchor mLeft;
    boolean mLeftHasCentered;
    public ConstraintAnchor[] mListAnchors;
    public DimensionBehaviour[] mListDimensionBehaviors;
    protected ConstraintWidget[] mListNextMatchConstraintsWidget;
    public int mMatchConstraintDefaultHeight;
    public int mMatchConstraintDefaultWidth;
    public int mMatchConstraintMaxHeight;
    public int mMatchConstraintMaxWidth;
    public int mMatchConstraintMinHeight;
    public int mMatchConstraintMinWidth;
    public float mMatchConstraintPercentHeight;
    public float mMatchConstraintPercentWidth;
    private int[] mMaxDimension;
    private boolean mMeasureRequested;
    protected int mMinHeight;
    protected int mMinWidth;
    protected ConstraintWidget[] mNextChainWidget;
    protected int mOffsetX;
    protected int mOffsetY;
    public ConstraintWidget mParent;
    int mRelX;
    int mRelY;
    float mResolvedDimensionRatio;
    int mResolvedDimensionRatioSide;
    boolean mResolvedHasRatio;
    public int[] mResolvedMatchConstraintDefault;
    public ConstraintAnchor mRight;
    boolean mRightHasCentered;
    public ConstraintAnchor mTop;
    boolean mTopHasCentered;
    private String mType;
    float mVerticalBiasPercent;
    boolean mVerticalChainFixedPosition;
    int mVerticalChainStyle;
    ConstraintWidget mVerticalNextWidget;
    public int mVerticalResolution;
    boolean mVerticalWrapVisited;
    private int mVisibility;
    public float[] mWeight;
    int mWidth;
    private int mWidthOverride;
    private int mWrapBehaviorInParent;
    protected int mX;
    protected int mY;
    public boolean measured;
    private boolean resolvedHorizontal;
    private boolean resolvedVertical;
    public WidgetRun[] run;
    public String stringId;
    public ChainRun verticalChainRun;
    public int verticalGroup;
    public VerticalWidgetRun verticalRun;
    private boolean verticalSolvingPass;

    public enum DimensionBehaviour {
        FIXED,
        WRAP_CONTENT,
        MATCH_CONSTRAINT,
        MATCH_PARENT
    }

    public ConstraintWidget() {
        this.measured = false;
        this.run = new WidgetRun[2];
        this.horizontalRun = null;
        this.verticalRun = null;
        this.isTerminalWidget = new boolean[]{true, true};
        this.mResolvedHasRatio = false;
        this.mMeasureRequested = true;
        this.OPTIMIZE_WRAP = false;
        this.OPTIMIZE_WRAP_ON_RESOLVED = true;
        this.mWidthOverride = -1;
        this.mHeightOverride = -1;
        this.frame = new WidgetFrame(this);
        this.resolvedHorizontal = false;
        this.resolvedVertical = false;
        this.horizontalSolvingPass = false;
        this.verticalSolvingPass = false;
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        this.mWrapBehaviorInParent = 0;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mResolvedMatchConstraintDefault = new int[2];
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMaxWidth = 0;
        this.mMatchConstraintPercentWidth = 1.0f;
        this.mMatchConstraintMinHeight = 0;
        this.mMatchConstraintMaxHeight = 0;
        this.mMatchConstraintPercentHeight = 1.0f;
        this.mResolvedDimensionRatioSide = -1;
        this.mResolvedDimensionRatio = 1.0f;
        this.mMaxDimension = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE};
        this.mCircleConstraintAngle = 0.0f;
        this.hasBaseline = false;
        this.mInVirtualLayout = false;
        this.mLastHorizontalMeasureSpec = 0;
        this.mLastVerticalMeasureSpec = 0;
        this.mLeft = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
        this.mTop = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
        this.mRight = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
        this.mBottom = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
        this.mBaseline = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
        this.mCenterX = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);
        this.mCenterY = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);
        ConstraintAnchor constraintAnchor = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
        this.mCenter = constraintAnchor;
        this.mListAnchors = new ConstraintAnchor[]{this.mLeft, this.mRight, this.mTop, this.mBottom, this.mBaseline, constraintAnchor};
        this.mAnchors = new ArrayList<>();
        this.mIsInBarrier = new boolean[2];
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        this.mListDimensionBehaviors = new DimensionBehaviour[]{dimensionBehaviour, dimensionBehaviour};
        this.mParent = null;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.mX = 0;
        this.mY = 0;
        this.mRelX = 0;
        this.mRelY = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.mBaselineDistance = 0;
        float f = DEFAULT_BIAS;
        this.mHorizontalBiasPercent = f;
        this.mVerticalBiasPercent = f;
        this.mContainerItemSkip = 0;
        this.mVisibility = 0;
        this.mAnimated = false;
        this.mDebugName = null;
        this.mType = null;
        this.mGroupsToSolver = false;
        this.mHorizontalChainStyle = 0;
        this.mVerticalChainStyle = 0;
        this.mWeight = new float[]{-1.0f, -1.0f};
        this.mListNextMatchConstraintsWidget = new ConstraintWidget[]{null, null};
        this.mNextChainWidget = new ConstraintWidget[]{null, null};
        this.mHorizontalNextWidget = null;
        this.mVerticalNextWidget = null;
        this.horizontalGroup = -1;
        this.verticalGroup = -1;
        d();
    }

    private void C0(StringBuilder sb, String str, float f, int i10) {
        if (f == 0.0f) {
            return;
        }
        sb.append(str);
        sb.append(" :  [");
        sb.append(f);
        sb.append(",");
        sb.append(i10);
        sb.append("");
        sb.append("],\n");
    }

    /* JADX WARN: Code duplicated, block: B:104:0x0197  */
    /* JADX WARN: Code duplicated, block: B:107:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:109:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:235:0x03ac  */
    /* JADX WARN: Code duplicated, block: B:237:0x03b0  */
    /* JADX WARN: Code duplicated, block: B:243:0x03c3  */
    /* JADX WARN: Code duplicated, block: B:245:0x03f4  */
    /* JADX WARN: Code duplicated, block: B:252:0x040d  */
    /* JADX WARN: Code duplicated, block: B:261:0x042f  */
    /* JADX WARN: Code duplicated, block: B:271:0x0447  */
    /* JADX WARN: Code duplicated, block: B:274:0x044d  */
    /* JADX WARN: Code duplicated, block: B:275:0x044f A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:278:0x0455 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:281:0x045a  */
    /* JADX WARN: Code duplicated, block: B:284:0x0460  */
    /* JADX WARN: Code duplicated, block: B:286:0x0464  */
    /* JADX WARN: Code duplicated, block: B:289:0x0469  */
    /* JADX WARN: Code duplicated, block: B:291:0x046d  */
    /* JADX WARN: Code duplicated, block: B:293:0x0470  */
    /* JADX WARN: Code duplicated, block: B:296:0x0477  */
    /* JADX WARN: Code duplicated, block: B:298:0x047d A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:302:0x0485  */
    /* JADX WARN: Code duplicated, block: B:305:0x0497  */
    /* JADX WARN: Code duplicated, block: B:307:0x049b  */
    /* JADX WARN: Code duplicated, block: B:308:0x04a0  */
    /* JADX WARN: Code duplicated, block: B:310:0x04a3  */
    /* JADX WARN: Code duplicated, block: B:312:0x04a9 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:31:0x008c  */
    /* JADX WARN: Code duplicated, block: B:320:0x04c4  */
    /* JADX WARN: Code duplicated, block: B:38:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:40:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:44:0x00b2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:45:0x00b4 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:48:0x00bf A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:51:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:54:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:55:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:57:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:67:0x0113  */
    /* JADX WARN: Code duplicated, block: B:69:0x0116  */
    /* JADX WARN: Code duplicated, block: B:70:0x0118  */
    /* JADX WARN: Code duplicated, block: B:72:0x011b  */
    /* JADX WARN: Code duplicated, block: B:73:0x011d  */
    /* JADX WARN: Code duplicated, block: B:75:0x0120  */
    /* JADX WARN: Code duplicated, block: B:80:0x0128  */
    /* JADX WARN: Code duplicated, block: B:83:0x0132  */
    /* JADX WARN: Code duplicated, block: B:84:0x0134 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:86:0x0137  */
    /* JADX WARN: Code duplicated, block: B:89:0x0140 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:90:0x0142  */
    /* JADX WARN: Code duplicated, block: B:91:0x0147 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:92:0x0149  */
    /* JADX WARN: Code duplicated, block: B:93:0x0151  */
    /* JADX WARN: Code duplicated, block: B:95:0x0166  */
    /* JADX WARN: Code duplicated, block: B:97:0x016a  */
    /* JADX WARN: Code duplicated, block: B:99:0x0172  */
    private void i(LinearSystem linearSystem, boolean z6, boolean z10, boolean z11, boolean z12, SolverVariable solverVariable, SolverVariable solverVariable2, DimensionBehaviour dimensionBehaviour, boolean z13, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i10, int i11, int i12, int i13, float f, boolean z14, boolean z15, boolean z16, boolean z17, boolean z18, int i14, int i15, int i16, int i17, float f6, boolean z19) {
        int i18;
        boolean z20;
        int iMin;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        boolean z21;
        boolean z22;
        ConstraintAnchor.Type typeK;
        ConstraintAnchor.Type type;
        SolverVariable solverVariableQ;
        SolverVariable solverVariableQ2;
        int i24;
        char c7;
        ConstraintAnchor constraintAnchor3;
        int i25;
        int i26;
        boolean z23;
        boolean z24;
        boolean z25;
        boolean z26;
        int i27;
        ConstraintWidget constraintWidget;
        boolean z27;
        ConstraintWidget constraintWidget2;
        int iMax;
        int i28;
        int i29;
        int iF;
        int iMin2;
        int i30;
        int i31;
        boolean z28;
        int i32;
        int i33;
        int i34;
        boolean z29;
        int i35;
        boolean z30;
        ConstraintWidget constraintWidget3;
        int i36;
        ConstraintWidget constraintWidget4;
        SolverVariable solverVariableQ3 = linearSystem.q(constraintAnchor);
        SolverVariable solverVariableQ4 = linearSystem.q(constraintAnchor2);
        SolverVariable solverVariableQ5 = linearSystem.q(constraintAnchor.j());
        SolverVariable solverVariableQ6 = linearSystem.q(constraintAnchor2.j());
        if (LinearSystem.x() != null) {
            LinearSystem.x().nonresolvedWidgets++;
        }
        boolean zO = constraintAnchor.o();
        boolean zO2 = constraintAnchor2.o();
        boolean zO3 = this.mCenter.o();
        int i37 = zO2 ? (zO ? 1 : 0) + 1 : zO ? 1 : 0;
        if (zO3) {
            i37++;
        }
        int i38 = z14 ? 3 : i14;
        int i39 = AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintWidget$DimensionBehaviour[dimensionBehaviour.ordinal()];
        if (i39 != 1 && i39 != 2 && i39 != 3 && i39 == 4) {
            i18 = i38;
            z20 = i18 != 4;
            iMin = this.mWidthOverride;
            if (iMin == -1 && z6) {
                this.mWidthOverride = -1;
                z20 = false;
            } else {
                iMin = i11;
            }
            i19 = this.mHeightOverride;
            if (i19 != -1 && !z6) {
                this.mHeightOverride = -1;
                iMin = i19;
                z20 = false;
            }
            if (this.mVisibility == 8) {
                iMin = 0;
                z20 = false;
            }
            if (z19) {
                if (zO && !zO2 && !zO3) {
                    linearSystem.f(solverVariableQ3, i10);
                } else if (zO && !zO2) {
                    linearSystem.e(solverVariableQ3, solverVariableQ5, constraintAnchor.f(), 8);
                }
            }
            if (!z20) {
                if (z13) {
                    linearSystem.e(solverVariableQ4, solverVariableQ3, 0, 3);
                    if (i12 > 0) {
                        linearSystem.h(solverVariableQ4, solverVariableQ3, i12, 8);
                    }
                    if (i13 < Integer.MAX_VALUE) {
                        linearSystem.j(solverVariableQ4, solverVariableQ3, i13, 8);
                    }
                } else {
                    linearSystem.e(solverVariableQ4, solverVariableQ3, iMin, 8);
                }
                i21 = i17;
                i22 = i37;
                z21 = z20;
                z22 = z12;
                i23 = i16;
            } else if (i37 == 2 && !z14 && (i18 == 1 || i18 == 0)) {
                int iMax2 = Math.max(i16, iMin);
                if (i17 > 0) {
                    iMax2 = Math.min(i17, iMax2);
                }
                linearSystem.e(solverVariableQ4, solverVariableQ3, iMax2, 8);
                z22 = z12;
                i21 = i17;
                i22 = i37;
                z21 = false;
                i23 = i16;
            } else {
                if (i16 == -2) {
                    i20 = iMin;
                } else {
                    i20 = i16;
                }
                if (i17 == -2) {
                    i21 = iMin;
                } else {
                    i21 = i17;
                }
                if (iMin > 0 && i18 != 1) {
                    iMin = 0;
                }
                if (i20 > 0) {
                    linearSystem.h(solverVariableQ4, solverVariableQ3, i20, 8);
                    iMin = Math.max(iMin, i20);
                }
                if (i21 > 0) {
                    if (z10 || i18 != 1) {
                        linearSystem.j(solverVariableQ4, solverVariableQ3, i21, 8);
                    }
                    iMin = Math.min(iMin, i21);
                }
                if (i18 == 1) {
                    if (z10) {
                        linearSystem.e(solverVariableQ4, solverVariableQ3, iMin, 8);
                    } else if (z16) {
                        linearSystem.e(solverVariableQ4, solverVariableQ3, iMin, 5);
                        linearSystem.j(solverVariableQ4, solverVariableQ3, iMin, 8);
                    } else {
                        linearSystem.e(solverVariableQ4, solverVariableQ3, iMin, 5);
                        linearSystem.j(solverVariableQ4, solverVariableQ3, iMin, 8);
                    }
                    i22 = i37;
                    z21 = z20;
                    z22 = z12;
                    i23 = i20;
                } else if (i18 == 2) {
                    typeK = constraintAnchor.k();
                    type = ConstraintAnchor.Type.TOP;
                    if (typeK != type || constraintAnchor.k() == ConstraintAnchor.Type.BOTTOM) {
                        solverVariableQ = linearSystem.q(this.mParent.q(type));
                        solverVariableQ2 = linearSystem.q(this.mParent.q(ConstraintAnchor.Type.BOTTOM));
                    } else {
                        solverVariableQ = linearSystem.q(this.mParent.q(ConstraintAnchor.Type.LEFT));
                        solverVariableQ2 = linearSystem.q(this.mParent.q(ConstraintAnchor.Type.RIGHT));
                    }
                    SolverVariable solverVariable3 = solverVariableQ;
                    SolverVariable solverVariable4 = solverVariableQ2;
                    ArrayRow arrayRowR = linearSystem.r();
                    i22 = i37 == true ? 1 : 0;
                    i23 = i20;
                    linearSystem.d(arrayRowR.k(solverVariableQ4, solverVariableQ3, solverVariable4, solverVariable3, f6));
                    if (z10) {
                        z20 = false;
                    }
                    z21 = z20;
                    z22 = z12;
                } else {
                    i22 = i37;
                    i23 = i20;
                    z21 = z20;
                    z22 = true;
                }
            }
            if (z19 || z16) {
                i24 = 0;
                c7 = 2;
                if (i22 >= c7 && z10 && z22) {
                    linearSystem.h(solverVariableQ3, solverVariable, i24, 8);
                    int i40 = (z6 || this.mBaseline.mTarget == null) ? 1 : i24;
                    if (!z6 && (constraintAnchor3 = this.mBaseline.mTarget) != null) {
                        ConstraintWidget constraintWidget5 = constraintAnchor3.mOwner;
                        if (constraintWidget5.mDimensionRatio == 0.0f) {
                            return;
                        }
                        DimensionBehaviour[] dimensionBehaviourArr = constraintWidget5.mListDimensionBehaviors;
                        DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[i24];
                        DimensionBehaviour dimensionBehaviour3 = DimensionBehaviour.MATCH_CONSTRAINT;
                        if (dimensionBehaviour2 != dimensionBehaviour3 || dimensionBehaviourArr[1] != dimensionBehaviour3) {
                            return;
                        }
                    } else if (i40 == 0) {
                        return;
                    }
                    linearSystem.h(solverVariable2, solverVariableQ4, i24, 8);
                    return;
                }
                return;
            }
            if (zO || zO2 || zO3) {
                if (!zO || zO2) {
                    if (zO || !zO2) {
                        if (zO && zO2) {
                            ConstraintWidget constraintWidget6 = constraintAnchor.mTarget.mOwner;
                            ConstraintWidget constraintWidget7 = constraintAnchor2.mTarget.mOwner;
                            ConstraintWidget constraintWidgetM = M();
                            int i41 = 6;
                            if (z21) {
                                if (i18 == 0) {
                                    if (i21 != 0 || i23 != 0) {
                                        z29 = false;
                                        i33 = 5;
                                        i35 = 5;
                                        z30 = true;
                                        z23 = true;
                                    } else if (solverVariableQ5.isFinalValue && solverVariableQ6.isFinalValue) {
                                        linearSystem.e(solverVariableQ3, solverVariableQ5, constraintAnchor.f(), 8);
                                        linearSystem.e(solverVariableQ4, solverVariableQ6, -constraintAnchor2.f(), 8);
                                        return;
                                    } else {
                                        z30 = false;
                                        z23 = false;
                                        i33 = 8;
                                        i35 = 8;
                                        z29 = true;
                                    }
                                    if ((constraintWidget6 instanceof Barrier) || (constraintWidget7 instanceof Barrier)) {
                                        solverVariable2 = solverVariable2;
                                        i25 = i33;
                                        i41 = 6;
                                        z25 = z29;
                                        z24 = z30;
                                        i26 = 4;
                                    } else {
                                        z25 = z29;
                                        z24 = z30;
                                        i26 = i35;
                                        i25 = i33;
                                        i41 = 6;
                                    }
                                } else if (i18 == 2) {
                                    if (!(constraintWidget6 instanceof Barrier) && !(constraintWidget7 instanceof Barrier)) {
                                        solverVariable2 = solverVariable2;
                                        i41 = 6;
                                        i25 = 5;
                                        i26 = 5;
                                    }
                                    z24 = true;
                                    z23 = true;
                                    z25 = false;
                                } else if (i18 == 1) {
                                    i25 = 8;
                                    i26 = 4;
                                    z24 = true;
                                    z23 = true;
                                    z25 = false;
                                } else if (i18 == 3) {
                                    if (this.mResolvedDimensionRatioSide == -1) {
                                        if (z17) {
                                            solverVariable2 = solverVariable2;
                                            i41 = z10 ? 5 : 4;
                                        } else {
                                            solverVariable2 = solverVariable2;
                                            i41 = 8;
                                        }
                                        i25 = 8;
                                    } else if (z14) {
                                        if (i15 == 2 || i15 == 1) {
                                            i33 = 5;
                                            i34 = 4;
                                        } else {
                                            i33 = 8;
                                            i34 = 5;
                                        }
                                        i26 = i34;
                                        z24 = true;
                                        z23 = true;
                                        z25 = true;
                                        i25 = i33;
                                        i41 = 6;
                                    } else {
                                        if (i21 > 0) {
                                            solverVariable2 = solverVariable2;
                                            i41 = 6;
                                            i25 = 5;
                                        } else {
                                            if (i21 != 0 || i23 != 0) {
                                                i25 = 5;
                                            } else if (z17) {
                                                i25 = (constraintWidget6 == constraintWidgetM || constraintWidget7 == constraintWidgetM) ? 5 : 4;
                                            } else {
                                                solverVariable2 = solverVariable2;
                                                i41 = 6;
                                                i25 = 5;
                                                i26 = 8;
                                            }
                                            i26 = 4;
                                        }
                                        z24 = true;
                                        z23 = true;
                                        z25 = true;
                                    }
                                    i26 = 5;
                                    z24 = true;
                                    z23 = true;
                                    z25 = true;
                                } else {
                                    solverVariable2 = solverVariable2;
                                    i41 = 6;
                                    i25 = 5;
                                    i26 = 4;
                                    z24 = false;
                                    z23 = false;
                                    z25 = false;
                                }
                                if (z23 || solverVariableQ5 != solverVariableQ6 || constraintWidget6 == constraintWidgetM) {
                                    z26 = true;
                                } else {
                                    z23 = false;
                                    z26 = false;
                                }
                                if (z24) {
                                    if (z21 && !z15 && !z17 && solverVariableQ5 == solverVariable && solverVariableQ6 == solverVariable2) {
                                        z27 = false;
                                        i32 = 8;
                                        i31 = 8;
                                        z28 = false;
                                    } else {
                                        z27 = z10;
                                        i31 = i41;
                                        z28 = z26;
                                        i32 = i25;
                                    }
                                    i27 = i18;
                                    constraintWidget = constraintWidgetM;
                                    linearSystem.c(solverVariableQ3, solverVariableQ5, constraintAnchor.f(), f, solverVariableQ6, solverVariableQ4, constraintAnchor2.f(), i31);
                                    i25 = i32;
                                    z26 = z28;
                                } else {
                                    i27 = i18;
                                    constraintWidget = constraintWidgetM;
                                    z27 = z10;
                                }
                                if (this.mVisibility != 8 && !constraintAnchor2.m()) {
                                    return;
                                }
                                if (z23) {
                                    if (z27 && solverVariableQ5 != solverVariableQ6 && !z21 && ((constraintWidget6 instanceof Barrier) || (constraintWidget7 instanceof Barrier))) {
                                        i25 = 6;
                                    }
                                    linearSystem.h(solverVariableQ3, solverVariableQ5, constraintAnchor.f(), i25);
                                    solverVariableQ4 = solverVariableQ4;
                                    linearSystem.j(solverVariableQ4, solverVariableQ6, -constraintAnchor2.f(), i25);
                                } else {
                                    solverVariableQ4 = solverVariableQ4;
                                }
                                if (z27 || !z18 || (constraintWidget6 instanceof Barrier) || (constraintWidget7 instanceof Barrier)) {
                                    constraintWidget2 = constraintWidget;
                                } else {
                                    constraintWidget2 = constraintWidget;
                                    if (constraintWidget7 != constraintWidget2) {
                                        i25 = 6;
                                        iMax = 6;
                                        z26 = true;
                                    }
                                    if (z26) {
                                        if (z25 && (!z17 || z11)) {
                                            if (constraintWidget6 != constraintWidget2 || constraintWidget7 == constraintWidget2) {
                                                i30 = 6;
                                            } else {
                                                i30 = iMax;
                                            }
                                            if ((constraintWidget6 instanceof Guideline) || (constraintWidget7 instanceof Guideline)) {
                                                i30 = 5;
                                            }
                                            if ((constraintWidget6 instanceof Barrier) || (constraintWidget7 instanceof Barrier)) {
                                                i30 = 5;
                                            }
                                            if (z17) {
                                                i30 = 5;
                                            }
                                            iMax = Math.max(i30, iMax);
                                        }
                                        if (z27) {
                                            iMin2 = Math.min(i25, iMax);
                                            if (z14 || z17 || !(constraintWidget6 == constraintWidget2 || constraintWidget7 == constraintWidget2)) {
                                                iMax = iMin2;
                                            } else {
                                                iMax = 4;
                                            }
                                        }
                                        linearSystem.e(solverVariableQ3, solverVariableQ5, constraintAnchor.f(), iMax);
                                        linearSystem.e(solverVariableQ4, solverVariableQ6, -constraintAnchor2.f(), iMax);
                                    }
                                    if (z27) {
                                        if (solverVariable == solverVariableQ5) {
                                            iF = constraintAnchor.f();
                                        } else {
                                            iF = 0;
                                        }
                                        if (solverVariableQ5 != solverVariable) {
                                            linearSystem.h(solverVariableQ3, solverVariable, iF, 5);
                                        }
                                    }
                                    if (z27 || !z21 || i12 != 0 || i23 != 0) {
                                        i28 = 5;
                                        i29 = 0;
                                    } else if (z21 && i27 == 3) {
                                        i29 = 0;
                                        linearSystem.h(solverVariableQ4, solverVariableQ3, 0, 8);
                                        i28 = 5;
                                    } else {
                                        i29 = 0;
                                        i28 = 5;
                                        linearSystem.h(solverVariableQ4, solverVariableQ3, 0, 5);
                                    }
                                }
                                iMax = i26;
                                if (z26) {
                                    if (z25) {
                                        if (constraintWidget6 != constraintWidget2) {
                                            i30 = 6;
                                        } else {
                                            i30 = 6;
                                        }
                                        if (constraintWidget6 instanceof Guideline) {
                                            i30 = 5;
                                        } else {
                                            i30 = 5;
                                        }
                                        if (constraintWidget6 instanceof Barrier) {
                                            i30 = 5;
                                        } else {
                                            i30 = 5;
                                        }
                                        if (z17) {
                                            i30 = 5;
                                        }
                                        iMax = Math.max(i30, iMax);
                                    }
                                    if (z27) {
                                        iMin2 = Math.min(i25, iMax);
                                        if (z14) {
                                            iMax = iMin2;
                                        } else {
                                            iMax = iMin2;
                                        }
                                    }
                                    linearSystem.e(solverVariableQ3, solverVariableQ5, constraintAnchor.f(), iMax);
                                    linearSystem.e(solverVariableQ4, solverVariableQ6, -constraintAnchor2.f(), iMax);
                                }
                                if (z27) {
                                    if (solverVariable == solverVariableQ5) {
                                        iF = constraintAnchor.f();
                                    } else {
                                        iF = 0;
                                    }
                                    if (solverVariableQ5 != solverVariable) {
                                        linearSystem.h(solverVariableQ3, solverVariable, iF, 5);
                                    }
                                }
                                if (z27) {
                                    i28 = 5;
                                    i29 = 0;
                                } else {
                                    i28 = 5;
                                    i29 = 0;
                                }
                            } else if (solverVariableQ5.isFinalValue && solverVariableQ6.isFinalValue) {
                                linearSystem.c(solverVariableQ3, solverVariableQ5, constraintAnchor.f(), f, solverVariableQ6, solverVariableQ4, constraintAnchor2.f(), 8);
                                if (z10 && z22) {
                                    int iF2 = constraintAnchor2.mTarget != null ? constraintAnchor2.f() : 0;
                                    if (solverVariableQ6 != solverVariable2) {
                                        linearSystem.h(solverVariable2, solverVariableQ4, iF2, 5);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            i25 = 5;
                            i26 = 4;
                            z24 = true;
                            z23 = true;
                            z25 = false;
                            if (z23) {
                                z26 = true;
                            } else {
                                z26 = true;
                            }
                            if (z24) {
                                if (z21) {
                                    z27 = z10;
                                    i31 = i41;
                                    z28 = z26;
                                    i32 = i25;
                                } else {
                                    z27 = z10;
                                    i31 = i41;
                                    z28 = z26;
                                    i32 = i25;
                                }
                                i27 = i18;
                                constraintWidget = constraintWidgetM;
                                linearSystem.c(solverVariableQ3, solverVariableQ5, constraintAnchor.f(), f, solverVariableQ6, solverVariableQ4, constraintAnchor2.f(), i31);
                                i25 = i32;
                                z26 = z28;
                            } else {
                                i27 = i18;
                                constraintWidget = constraintWidgetM;
                                z27 = z10;
                            }
                            if (this.mVisibility != 8) {
                            }
                            if (z23) {
                                if (z27) {
                                    i25 = 6;
                                }
                                linearSystem.h(solverVariableQ3, solverVariableQ5, constraintAnchor.f(), i25);
                                solverVariableQ4 = solverVariableQ4;
                                linearSystem.j(solverVariableQ4, solverVariableQ6, -constraintAnchor2.f(), i25);
                            } else {
                                solverVariableQ4 = solverVariableQ4;
                            }
                            if (z27) {
                                constraintWidget2 = constraintWidget;
                                iMax = i26;
                            } else {
                                constraintWidget2 = constraintWidget;
                                iMax = i26;
                            }
                            if (z26) {
                                if (z25) {
                                    if (constraintWidget6 != constraintWidget2) {
                                        i30 = 6;
                                    } else {
                                        i30 = 6;
                                    }
                                    if (constraintWidget6 instanceof Guideline) {
                                        i30 = 5;
                                    } else {
                                        i30 = 5;
                                    }
                                    if (constraintWidget6 instanceof Barrier) {
                                        i30 = 5;
                                    } else {
                                        i30 = 5;
                                    }
                                    if (z17) {
                                        i30 = 5;
                                    }
                                    iMax = Math.max(i30, iMax);
                                }
                                if (z27) {
                                    iMin2 = Math.min(i25, iMax);
                                    if (z14) {
                                        iMax = iMin2;
                                    } else {
                                        iMax = iMin2;
                                    }
                                }
                                linearSystem.e(solverVariableQ3, solverVariableQ5, constraintAnchor.f(), iMax);
                                linearSystem.e(solverVariableQ4, solverVariableQ6, -constraintAnchor2.f(), iMax);
                            }
                            if (z27) {
                                if (solverVariable == solverVariableQ5) {
                                    iF = constraintAnchor.f();
                                } else {
                                    iF = 0;
                                }
                                if (solverVariableQ5 != solverVariable) {
                                    linearSystem.h(solverVariableQ3, solverVariable, iF, 5);
                                }
                            }
                            if (z27) {
                                i28 = 5;
                                i29 = 0;
                            } else {
                                i28 = 5;
                                i29 = 0;
                            }
                        }
                        i36 = i28;
                    } else {
                        linearSystem.e(solverVariableQ4, solverVariableQ6, -constraintAnchor2.f(), 8);
                        if (z10) {
                            if (this.OPTIMIZE_WRAP && solverVariableQ3.isFinalValue && (constraintWidget3 = this.mParent) != null) {
                                ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) constraintWidget3;
                                if (z6) {
                                    constraintWidgetContainer.D1(constraintAnchor);
                                } else {
                                    constraintWidgetContainer.I1(constraintAnchor);
                                }
                            } else {
                                i28 = 5;
                                linearSystem.h(solverVariableQ3, solverVariable, 0, 5);
                                i29 = 0;
                            }
                        }
                    }
                    i29 = 0;
                    i28 = 5;
                } else {
                    z27 = z10;
                    i29 = 0;
                    i36 = (z10 && (constraintAnchor.mTarget.mOwner instanceof Barrier)) ? 8 : 5;
                    solverVariableQ4 = solverVariableQ4;
                }
                if (z27 || !z22) {
                    return;
                }
                int iF3 = constraintAnchor2.mTarget != null ? constraintAnchor2.f() : i29;
                if (solverVariableQ6 != solverVariable2) {
                    if (!this.OPTIMIZE_WRAP || !solverVariableQ4.isFinalValue || (constraintWidget4 = this.mParent) == null) {
                        linearSystem.h(solverVariable2, solverVariableQ4, iF3, i36);
                        return;
                    }
                    ConstraintWidgetContainer constraintWidgetContainer2 = (ConstraintWidgetContainer) constraintWidget4;
                    if (z6) {
                        constraintWidgetContainer2.C1(constraintAnchor2);
                        return;
                    } else {
                        constraintWidgetContainer2.H1(constraintAnchor2);
                        return;
                    }
                }
                return;
            }
            i28 = 5;
            i29 = 0;
            z27 = z10;
            i36 = i28;
            if (z27) {
                return;
            } else {
                return;
            }
        }
        i18 = i38;
        iMin = this.mWidthOverride;
        if (iMin == -1) {
            iMin = i11;
        } else {
            iMin = i11;
        }
        i19 = this.mHeightOverride;
        if (i19 != -1) {
            this.mHeightOverride = -1;
            iMin = i19;
            z20 = false;
        }
        if (this.mVisibility == 8) {
            iMin = 0;
            z20 = false;
        }
        if (z19) {
            if (zO) {
                if (zO) {
                    linearSystem.e(solverVariableQ3, solverVariableQ5, constraintAnchor.f(), 8);
                }
            } else if (zO) {
                linearSystem.e(solverVariableQ3, solverVariableQ5, constraintAnchor.f(), 8);
            }
        }
        if (!z20) {
            if (z13) {
                linearSystem.e(solverVariableQ4, solverVariableQ3, 0, 3);
                if (i12 > 0) {
                    linearSystem.h(solverVariableQ4, solverVariableQ3, i12, 8);
                }
                if (i13 < Integer.MAX_VALUE) {
                    linearSystem.j(solverVariableQ4, solverVariableQ3, i13, 8);
                }
            } else {
                linearSystem.e(solverVariableQ4, solverVariableQ3, iMin, 8);
            }
            i21 = i17;
            i22 = i37;
            z21 = z20;
            z22 = z12;
            i23 = i16;
        } else if (i37 == 2) {
            if (i16 == -2) {
                i20 = iMin;
            } else {
                i20 = i16;
            }
            if (i17 == -2) {
                i21 = iMin;
            } else {
                i21 = i17;
            }
            if (iMin > 0) {
                iMin = 0;
            }
            if (i20 > 0) {
                linearSystem.h(solverVariableQ4, solverVariableQ3, i20, 8);
                iMin = Math.max(iMin, i20);
            }
            if (i21 > 0) {
                if (z10) {
                    linearSystem.j(solverVariableQ4, solverVariableQ3, i21, 8);
                } else {
                    linearSystem.j(solverVariableQ4, solverVariableQ3, i21, 8);
                }
                iMin = Math.min(iMin, i21);
            }
            if (i18 == 1) {
                if (z10) {
                    linearSystem.e(solverVariableQ4, solverVariableQ3, iMin, 8);
                } else if (z16) {
                    linearSystem.e(solverVariableQ4, solverVariableQ3, iMin, 5);
                    linearSystem.j(solverVariableQ4, solverVariableQ3, iMin, 8);
                } else {
                    linearSystem.e(solverVariableQ4, solverVariableQ3, iMin, 5);
                    linearSystem.j(solverVariableQ4, solverVariableQ3, iMin, 8);
                }
                i22 = i37;
                z21 = z20;
                z22 = z12;
                i23 = i20;
            } else if (i18 == 2) {
                typeK = constraintAnchor.k();
                type = ConstraintAnchor.Type.TOP;
                if (typeK != type) {
                    solverVariableQ = linearSystem.q(this.mParent.q(type));
                    solverVariableQ2 = linearSystem.q(this.mParent.q(ConstraintAnchor.Type.BOTTOM));
                } else {
                    solverVariableQ = linearSystem.q(this.mParent.q(type));
                    solverVariableQ2 = linearSystem.q(this.mParent.q(ConstraintAnchor.Type.BOTTOM));
                }
                SolverVariable solverVariable5 = solverVariableQ;
                SolverVariable solverVariable6 = solverVariableQ2;
                ArrayRow arrayRowR2 = linearSystem.r();
                i22 = i37 == true ? 1 : 0;
                i23 = i20;
                linearSystem.d(arrayRowR2.k(solverVariableQ4, solverVariableQ3, solverVariable6, solverVariable5, f6));
                if (z10) {
                    z20 = false;
                }
                z21 = z20;
                z22 = z12;
            } else {
                i22 = i37;
                i23 = i20;
                z21 = z20;
                z22 = true;
            }
        } else {
            if (i16 == -2) {
                i20 = iMin;
            } else {
                i20 = i16;
            }
            if (i17 == -2) {
                i21 = iMin;
            } else {
                i21 = i17;
            }
            if (iMin > 0) {
                iMin = 0;
            }
            if (i20 > 0) {
                linearSystem.h(solverVariableQ4, solverVariableQ3, i20, 8);
                iMin = Math.max(iMin, i20);
            }
            if (i21 > 0) {
                if (z10) {
                    linearSystem.j(solverVariableQ4, solverVariableQ3, i21, 8);
                } else {
                    linearSystem.j(solverVariableQ4, solverVariableQ3, i21, 8);
                }
                iMin = Math.min(iMin, i21);
            }
            if (i18 == 1) {
                if (z10) {
                    linearSystem.e(solverVariableQ4, solverVariableQ3, iMin, 8);
                } else if (z16) {
                    linearSystem.e(solverVariableQ4, solverVariableQ3, iMin, 5);
                    linearSystem.j(solverVariableQ4, solverVariableQ3, iMin, 8);
                } else {
                    linearSystem.e(solverVariableQ4, solverVariableQ3, iMin, 5);
                    linearSystem.j(solverVariableQ4, solverVariableQ3, iMin, 8);
                }
                i22 = i37;
                z21 = z20;
                z22 = z12;
                i23 = i20;
            } else if (i18 == 2) {
                typeK = constraintAnchor.k();
                type = ConstraintAnchor.Type.TOP;
                if (typeK != type) {
                    solverVariableQ = linearSystem.q(this.mParent.q(type));
                    solverVariableQ2 = linearSystem.q(this.mParent.q(ConstraintAnchor.Type.BOTTOM));
                } else {
                    solverVariableQ = linearSystem.q(this.mParent.q(type));
                    solverVariableQ2 = linearSystem.q(this.mParent.q(ConstraintAnchor.Type.BOTTOM));
                }
                SolverVariable solverVariable7 = solverVariableQ;
                SolverVariable solverVariable8 = solverVariableQ2;
                ArrayRow arrayRowR3 = linearSystem.r();
                i22 = i37 == true ? 1 : 0;
                i23 = i20;
                linearSystem.d(arrayRowR3.k(solverVariableQ4, solverVariableQ3, solverVariable8, solverVariable7, f6));
                if (z10) {
                    z20 = false;
                }
                z21 = z20;
                z22 = z12;
            } else {
                i22 = i37;
                i23 = i20;
                z21 = z20;
                z22 = true;
            }
        }
        if (z19) {
            i24 = 0;
            c7 = 2;
        } else {
            i24 = 0;
            c7 = 2;
        }
        if (i22 >= c7) {
        }
    }

    public float A() {
        return this.mHorizontalBiasPercent;
    }

    public int B() {
        return this.mHorizontalChainStyle;
    }

    public void D0(boolean z6) {
        this.mAnimated = z6;
    }

    public int E() {
        return this.mLastHorizontalMeasureSpec;
    }

    public void E0(int i10) {
        this.mBaselineDistance = i10;
        this.hasBaseline = i10 > 0;
    }

    public int F() {
        return this.mLastVerticalMeasureSpec;
    }

    public void F0(Object obj) {
        this.mCompanionWidget = obj;
    }

    public void G0(String str) {
        this.mDebugName = str;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0086 A[PHI: r0
      0x0086: PHI (r0v2 int) = (r0v1 int), (r0v0 int), (r0v0 int), (r0v0 int), (r0v0 int), (r0v0 int) binds: [B:46:0x0086, B:36:0x007f, B:24:0x0051, B:26:0x0057, B:28:0x0063, B:30:0x0067] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x0086 -> B:40:0x0087). Please report as a decompilation issue!!! */
    public void H0(String str) {
        float fAbs;
        int i10 = 0;
        if (str == null || str.length() == 0) {
            this.mDimensionRatio = 0.0f;
            return;
        }
        int length = str.length();
        int iIndexOf = str.indexOf(44);
        int i11 = 0;
        int i12 = -1;
        if (iIndexOf > 0 && iIndexOf < length - 1) {
            String strSubstring = str.substring(0, iIndexOf);
            if (!strSubstring.equalsIgnoreCase(ExifInterface.LONGITUDE_WEST)) {
                i11 = strSubstring.equalsIgnoreCase("H") ? 1 : -1;
            }
            i12 = i11;
            i11 = iIndexOf + 1;
        }
        int iIndexOf2 = str.indexOf(58);
        try {
            if (iIndexOf2 < 0 || iIndexOf2 >= length - 1) {
                String strSubstring2 = str.substring(i11);
                if (strSubstring2.length() > 0) {
                    fAbs = Float.parseFloat(strSubstring2);
                } else {
                    fAbs = i10;
                }
            } else {
                String strSubstring3 = str.substring(i11, iIndexOf2);
                String strSubstring4 = str.substring(iIndexOf2 + 1);
                if (strSubstring3.length() <= 0 || strSubstring4.length() <= 0) {
                    fAbs = i10;
                } else {
                    float f = Float.parseFloat(strSubstring3);
                    float f6 = Float.parseFloat(strSubstring4);
                    if (f <= 0.0f || f6 <= 0.0f) {
                        fAbs = i10;
                    } else {
                        fAbs = i12 == 1 ? Math.abs(f6 / f) : Math.abs(f / f6);
                    }
                }
            }
        } catch (NumberFormatException unused) {
        }
        i10 = (fAbs > i10 ? 1 : (fAbs == i10 ? 0 : -1));
        if (i10 > 0) {
            this.mDimensionRatio = fAbs;
            this.mDimensionRatioSide = i12;
        }
    }

    public int J() {
        return this.mMinHeight;
    }

    public int K() {
        return this.mMinWidth;
    }

    public ConstraintWidget M() {
        return this.mParent;
    }

    public void N0(int i10, int i11, int i12, int i13) {
        int i14;
        int i15;
        int i16 = i12 - i10;
        int i17 = i13 - i11;
        this.mX = i10;
        this.mY = i11;
        if (this.mVisibility == 8) {
            this.mWidth = 0;
            this.mHeight = 0;
            return;
        }
        DimensionBehaviour[] dimensionBehaviourArr = this.mListDimensionBehaviors;
        DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
        DimensionBehaviour dimensionBehaviour2 = DimensionBehaviour.FIXED;
        if (dimensionBehaviour == dimensionBehaviour2 && i16 < (i15 = this.mWidth)) {
            i16 = i15;
        }
        if (dimensionBehaviourArr[1] == dimensionBehaviour2 && i17 < (i14 = this.mHeight)) {
            i17 = i14;
        }
        this.mWidth = i16;
        this.mHeight = i17;
        int i18 = this.mMinHeight;
        if (i17 < i18) {
            this.mHeight = i18;
        }
        int i19 = this.mMinWidth;
        if (i16 < i19) {
            this.mWidth = i19;
        }
        int i20 = this.mMatchConstraintMaxWidth;
        if (i20 > 0 && dimensionBehaviour == DimensionBehaviour.MATCH_CONSTRAINT) {
            this.mWidth = Math.min(this.mWidth, i20);
        }
        int i21 = this.mMatchConstraintMaxHeight;
        if (i21 > 0 && this.mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_CONSTRAINT) {
            this.mHeight = Math.min(this.mHeight, i21);
        }
        int i22 = this.mWidth;
        if (i16 != i22) {
            this.mWidthOverride = i22;
        }
        int i23 = this.mHeight;
        if (i17 != i23) {
            this.mHeightOverride = i23;
        }
    }

    public void O0(boolean z6) {
        this.hasBaseline = z6;
    }

    public WidgetRun P(int i10) {
        if (i10 == 0) {
            return this.horizontalRun;
        }
        if (i10 == 1) {
            return this.verticalRun;
        }
        return null;
    }

    public void P0(int i10) {
        this.mHeight = i10;
        int i11 = this.mMinHeight;
        if (i10 < i11) {
            this.mHeight = i11;
        }
    }

    public void Q0(float f) {
        this.mHorizontalBiasPercent = f;
    }

    public void R0(int i10) {
        this.mHorizontalChainStyle = i10;
    }

    public void S0(int i10, int i11) {
        this.mX = i10;
        int i12 = i11 - i10;
        this.mWidth = i12;
        int i13 = this.mMinWidth;
        if (i12 < i13) {
            this.mWidth = i13;
        }
    }

    public float T() {
        return this.mVerticalBiasPercent;
    }

    public int U() {
        return this.mVerticalChainStyle;
    }

    public void U0(int i10, int i11, int i12, float f) {
        this.mMatchConstraintDefaultWidth = i10;
        this.mMatchConstraintMinWidth = i11;
        if (i12 == Integer.MAX_VALUE) {
            i12 = 0;
        }
        this.mMatchConstraintMaxWidth = i12;
        this.mMatchConstraintPercentWidth = f;
        if (f <= 0.0f || f >= 1.0f || i10 != 0) {
            return;
        }
        this.mMatchConstraintDefaultWidth = 2;
    }

    public int X() {
        return this.mVisibility;
    }

    public void X0(boolean z6) {
        this.inPlaceholder = z6;
    }

    public int Y() {
        if (this.mVisibility == 8) {
            return 0;
        }
        return this.mWidth;
    }

    public void Y0(boolean z6) {
        this.mInVirtualLayout = z6;
    }

    public boolean b0() {
        return this.hasBaseline;
    }

    public boolean c0(int i10) {
        if (i10 == 0) {
            return (this.mLeft.mTarget != null ? 1 : 0) + (this.mRight.mTarget != null ? 1 : 0) < 2;
        }
        return ((this.mTop.mTarget != null ? 1 : 0) + (this.mBottom.mTarget != null ? 1 : 0)) + (this.mBaseline.mTarget != null ? 1 : 0) < 2;
    }

    public void c1(boolean z6) {
        this.mMeasureRequested = z6;
    }

    public void d1(int i10) {
        if (i10 < 0) {
            this.mMinHeight = 0;
        } else {
            this.mMinHeight = i10;
        }
    }

    public boolean e0() {
        return (this.mWidthOverride == -1 && this.mHeightOverride == -1) ? false : true;
    }

    public void e1(int i10) {
        if (i10 < 0) {
            this.mMinWidth = 0;
        } else {
            this.mMinWidth = i10;
        }
    }

    public boolean f0(int i10, int i11) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i10 == 0) {
            ConstraintAnchor constraintAnchor3 = this.mLeft.mTarget;
            return constraintAnchor3 != null && constraintAnchor3.n() && (constraintAnchor2 = this.mRight.mTarget) != null && constraintAnchor2.n() && (this.mRight.mTarget.e() - this.mRight.f()) - (this.mLeft.mTarget.e() + this.mLeft.f()) >= i11;
        }
        ConstraintAnchor constraintAnchor4 = this.mTop.mTarget;
        return constraintAnchor4 != null && constraintAnchor4.n() && (constraintAnchor = this.mBottom.mTarget) != null && constraintAnchor.n() && (this.mBottom.mTarget.e() - this.mBottom.f()) - (this.mTop.mTarget.e() + this.mTop.f()) >= i11;
        return false;
    }

    public void f1(int i10, int i11) {
        this.mX = i10;
        this.mY = i11;
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 15391. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    public void g(androidx.constraintlayout.core.LinearSystem r54, boolean r55) {
        /*
            Method dump skipped, instruction units count: 1539
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.ConstraintWidget.g(androidx.constraintlayout.core.LinearSystem, boolean):void");
    }

    public void g1(ConstraintWidget constraintWidget) {
        this.mParent = constraintWidget;
    }

    public boolean h() {
        return this.mVisibility != 8;
    }

    public void h1(float f) {
        this.mVerticalBiasPercent = f;
    }

    public boolean i0() {
        return this.horizontalSolvingPass;
    }

    public void i1(int i10) {
        this.mVerticalChainStyle = i10;
    }

    public void j(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2) {
        k(type, constraintWidget, type2, 0);
    }

    public void j1(int i10, int i11) {
        this.mY = i10;
        int i12 = i11 - i10;
        this.mHeight = i12;
        int i13 = this.mMinHeight;
        if (i12 < i13) {
            this.mHeight = i13;
        }
    }

    public boolean l0() {
        return this.inPlaceholder;
    }

    public void l1(int i10, int i11, int i12, float f) {
        this.mMatchConstraintDefaultHeight = i10;
        this.mMatchConstraintMinHeight = i11;
        if (i12 == Integer.MAX_VALUE) {
            i12 = 0;
        }
        this.mMatchConstraintMaxHeight = i12;
        this.mMatchConstraintPercentHeight = f;
        if (f <= 0.0f || f >= 1.0f || i10 != 0) {
            return;
        }
        this.mMatchConstraintDefaultHeight = 2;
    }

    public boolean n0() {
        return this.mInVirtualLayout;
    }

    public void n1(int i10) {
        this.mVisibility = i10;
    }

    public boolean o0() {
        return this.mMeasureRequested && this.mVisibility != 8;
    }

    public void o1(int i10) {
        this.mWidth = i10;
        int i11 = this.mMinWidth;
        if (i10 < i11) {
            this.mWidth = i11;
        }
    }

    public void p1(int i10) {
        if (i10 < 0 || i10 > 3) {
            return;
        }
        this.mWrapBehaviorInParent = i10;
    }

    public void q1(int i10) {
        this.mX = i10;
    }

    public int r() {
        return this.mBaselineDistance;
    }

    public boolean r0() {
        return this.verticalSolvingPass;
    }

    public void r1(int i10) {
        this.mY = i10;
    }

    public float s(int i10) {
        if (i10 == 0) {
            return this.mHorizontalBiasPercent;
        }
        if (i10 == 1) {
            return this.mVerticalBiasPercent;
        }
        return -1.0f;
    }

    public void s0() {
        this.horizontalSolvingPass = true;
    }

    public void t0() {
        this.verticalSolvingPass = true;
    }

    public Object u() {
        return this.mCompanionWidget;
    }

    public String v() {
        return this.mDebugName;
    }

    public float x() {
        return this.mDimensionRatio;
    }

    public int y() {
        return this.mDimensionRatioSide;
    }

    public void y0() {
        this.resolvedHorizontal = false;
        this.resolvedVertical = false;
        this.horizontalSolvingPass = false;
        this.verticalSolvingPass = false;
        int size = this.mAnchors.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.mAnchors.get(i10).r();
        }
    }

    public int z() {
        if (this.mVisibility == 8) {
            return 0;
        }
        return this.mHeight;
    }

    /* JADX INFO: renamed from: androidx.constraintlayout.core.widgets.ConstraintWidget$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type;
        static final /* synthetic */ int[] $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintWidget$DimensionBehaviour;

        static {
            int[] iArr = new int[DimensionBehaviour.values().length];
            $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintWidget$DimensionBehaviour = iArr;
            try {
                iArr[DimensionBehaviour.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintWidget$DimensionBehaviour[DimensionBehaviour.WRAP_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintWidget$DimensionBehaviour[DimensionBehaviour.MATCH_PARENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintWidget$DimensionBehaviour[DimensionBehaviour.MATCH_CONSTRAINT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[ConstraintAnchor.Type.values().length];
            $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type = iArr2;
            try {
                iArr2[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    private void A0(StringBuilder sb, String str, float f, float f6) {
        if (f == f6) {
            return;
        }
        sb.append(str);
        sb.append(" :   ");
        sb.append(f);
        sb.append(",\n");
    }

    private void B0(StringBuilder sb, String str, int i10, int i11) {
        if (i10 == i11) {
            return;
        }
        sb.append(str);
        sb.append(" :   ");
        sb.append(i10);
        sb.append(",\n");
    }

    private void S(StringBuilder sb, String str, ConstraintAnchor constraintAnchor) {
        if (constraintAnchor.mTarget == null) {
            return;
        }
        sb.append("    ");
        sb.append(str);
        sb.append(" : [ '");
        sb.append(constraintAnchor.mTarget);
        sb.append("'");
        if (constraintAnchor.mGoneMargin != Integer.MIN_VALUE || constraintAnchor.mMargin != 0) {
            sb.append(",");
            sb.append(constraintAnchor.mMargin);
            if (constraintAnchor.mGoneMargin != Integer.MIN_VALUE) {
                sb.append(",");
                sb.append(constraintAnchor.mGoneMargin);
                sb.append(",");
            }
        }
        sb.append(" ] ,\n");
    }

    private void d() {
        this.mAnchors.add(this.mLeft);
        this.mAnchors.add(this.mTop);
        this.mAnchors.add(this.mRight);
        this.mAnchors.add(this.mBottom);
        this.mAnchors.add(this.mCenterX);
        this.mAnchors.add(this.mCenterY);
        this.mAnchors.add(this.mCenter);
        this.mAnchors.add(this.mBaseline);
    }

    private boolean h0(int i10) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        int i11 = i10 * 2;
        ConstraintAnchor[] constraintAnchorArr = this.mListAnchors;
        ConstraintAnchor constraintAnchor3 = constraintAnchorArr[i11];
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
        return (constraintAnchor4 == null || constraintAnchor4.mTarget == constraintAnchor3 || (constraintAnchor2 = (constraintAnchor = constraintAnchorArr[i11 + 1]).mTarget) == null || constraintAnchor2.mTarget != constraintAnchor) ? false : true;
    }

    public DimensionBehaviour C() {
        return this.mListDimensionBehaviors[0];
    }

    public int D() {
        ConstraintAnchor constraintAnchor = this.mLeft;
        int i10 = constraintAnchor != null ? constraintAnchor.mMargin : 0;
        ConstraintAnchor constraintAnchor2 = this.mRight;
        return constraintAnchor2 != null ? i10 + constraintAnchor2.mMargin : i10;
    }

    public int G(int i10) {
        if (i10 == 0) {
            return Y();
        }
        if (i10 == 1) {
            return z();
        }
        return 0;
    }

    public int H() {
        return this.mMaxDimension[1];
    }

    public int I() {
        return this.mMaxDimension[0];
    }

    public void I0(int i10) {
        if (this.hasBaseline) {
            int i11 = i10 - this.mBaselineDistance;
            int i12 = this.mHeight + i11;
            this.mY = i11;
            this.mTop.t(i11);
            this.mBottom.t(i12);
            this.mBaseline.t(i10);
            this.resolvedVertical = true;
        }
    }

    public void J0(int i10, int i11) {
        if (this.resolvedHorizontal) {
            return;
        }
        this.mLeft.t(i10);
        this.mRight.t(i11);
        this.mX = i10;
        this.mWidth = i11 - i10;
        this.resolvedHorizontal = true;
    }

    public void K0(int i10) {
        this.mLeft.t(i10);
        this.mX = i10;
    }

    public ConstraintWidget L(int i10) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i10 != 0) {
            if (i10 == 1 && (constraintAnchor2 = (constraintAnchor = this.mBottom).mTarget) != null && constraintAnchor2.mTarget == constraintAnchor) {
                return constraintAnchor2.mOwner;
            }
            return null;
        }
        ConstraintAnchor constraintAnchor3 = this.mRight;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
        if (constraintAnchor4 == null || constraintAnchor4.mTarget != constraintAnchor3) {
            return null;
        }
        return constraintAnchor4.mOwner;
    }

    public void L0(int i10) {
        this.mTop.t(i10);
        this.mY = i10;
    }

    public void M0(int i10, int i11) {
        if (this.resolvedVertical) {
            return;
        }
        this.mTop.t(i10);
        this.mBottom.t(i11);
        this.mY = i10;
        this.mHeight = i11 - i10;
        if (this.hasBaseline) {
            this.mBaseline.t(i10 + this.mBaselineDistance);
        }
        this.resolvedVertical = true;
    }

    public ConstraintWidget N(int i10) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i10 != 0) {
            if (i10 == 1 && (constraintAnchor2 = (constraintAnchor = this.mTop).mTarget) != null && constraintAnchor2.mTarget == constraintAnchor) {
                return constraintAnchor2.mOwner;
            }
            return null;
        }
        ConstraintAnchor constraintAnchor3 = this.mLeft;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
        if (constraintAnchor4 == null || constraintAnchor4.mTarget != constraintAnchor3) {
            return null;
        }
        return constraintAnchor4.mOwner;
    }

    public void Q(StringBuilder sb) {
        sb.append("  " + this.stringId + ":{\n");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("    actualWidth:");
        sb2.append(this.mWidth);
        sb.append(sb2.toString());
        sb.append("\n");
        sb.append("    actualHeight:" + this.mHeight);
        sb.append("\n");
        sb.append("    actualLeft:" + this.mX);
        sb.append("\n");
        sb.append("    actualTop:" + this.mY);
        sb.append("\n");
        S(sb, "left", this.mLeft);
        S(sb, "top", this.mTop);
        S(sb, "right", this.mRight);
        S(sb, "bottom", this.mBottom);
        S(sb, "baseline", this.mBaseline);
        S(sb, "centerX", this.mCenterX);
        S(sb, "centerY", this.mCenterY);
        R(sb, "    width", this.mWidth, this.mMinWidth, this.mMaxDimension[0], this.mWidthOverride, this.mMatchConstraintMinWidth, this.mMatchConstraintDefaultWidth, this.mMatchConstraintPercentWidth, this.mWeight[0]);
        R(sb, "    height", this.mHeight, this.mMinHeight, this.mMaxDimension[1], this.mHeightOverride, this.mMatchConstraintMinHeight, this.mMatchConstraintDefaultHeight, this.mMatchConstraintPercentHeight, this.mWeight[1]);
        C0(sb, "    dimensionRatio", this.mDimensionRatio, this.mDimensionRatioSide);
        A0(sb, "    horizontalBias", this.mHorizontalBiasPercent, DEFAULT_BIAS);
        A0(sb, "    verticalBias", this.mVerticalBiasPercent, DEFAULT_BIAS);
        B0(sb, "    horizontalChainStyle", this.mHorizontalChainStyle, 0);
        B0(sb, "    verticalChainStyle", this.mVerticalChainStyle, 0);
        sb.append("  }");
    }

    public void T0(DimensionBehaviour dimensionBehaviour) {
        this.mListDimensionBehaviors[0] = dimensionBehaviour;
    }

    public DimensionBehaviour V() {
        return this.mListDimensionBehaviors[1];
    }

    public void V0(float f) {
        this.mWeight[0] = f;
    }

    public int W() {
        int i10 = this.mLeft != null ? this.mTop.mMargin : 0;
        return this.mRight != null ? i10 + this.mBottom.mMargin : i10;
    }

    protected void W0(int i10, boolean z6) {
        this.mIsInBarrier[i10] = z6;
    }

    public int Z() {
        ConstraintWidget constraintWidget = this.mParent;
        return (constraintWidget == null || !(constraintWidget instanceof ConstraintWidgetContainer)) ? this.mX : ((ConstraintWidgetContainer) constraintWidget).mPaddingLeft + this.mX;
    }

    public void Z0(int i10, int i11) {
        this.mLastHorizontalMeasureSpec = i10;
        this.mLastVerticalMeasureSpec = i11;
        c1(false);
    }

    public int a0() {
        ConstraintWidget constraintWidget = this.mParent;
        return (constraintWidget == null || !(constraintWidget instanceof ConstraintWidgetContainer)) ? this.mY : ((ConstraintWidgetContainer) constraintWidget).mPaddingTop + this.mY;
    }

    public void a1(int i10) {
        this.mMaxDimension[1] = i10;
    }

    public void b1(int i10) {
        this.mMaxDimension[0] = i10;
    }

    public boolean d0() {
        int size = this.mAnchors.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (this.mAnchors.get(i10).m()) {
                return true;
            }
        }
        return false;
    }

    public void e(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, HashSet<ConstraintWidget> hashSet, int i10, boolean z6) {
        if (z6) {
            if (!hashSet.contains(this)) {
                return;
            }
            Optimizer.a(constraintWidgetContainer, linearSystem, this);
            hashSet.remove(this);
            g(linearSystem, constraintWidgetContainer.Y1(64));
        }
        if (i10 == 0) {
            HashSet<ConstraintAnchor> hashSetD = this.mLeft.d();
            if (hashSetD != null) {
                Iterator<ConstraintAnchor> it = hashSetD.iterator();
                while (it.hasNext()) {
                    it.next().mOwner.e(constraintWidgetContainer, linearSystem, hashSet, i10, true);
                }
            }
            HashSet<ConstraintAnchor> hashSetD2 = this.mRight.d();
            if (hashSetD2 != null) {
                Iterator<ConstraintAnchor> it2 = hashSetD2.iterator();
                while (it2.hasNext()) {
                    it2.next().mOwner.e(constraintWidgetContainer, linearSystem, hashSet, i10, true);
                }
                return;
            }
            return;
        }
        HashSet<ConstraintAnchor> hashSetD3 = this.mTop.d();
        if (hashSetD3 != null) {
            Iterator<ConstraintAnchor> it3 = hashSetD3.iterator();
            while (it3.hasNext()) {
                it3.next().mOwner.e(constraintWidgetContainer, linearSystem, hashSet, i10, true);
            }
        }
        HashSet<ConstraintAnchor> hashSetD4 = this.mBottom.d();
        if (hashSetD4 != null) {
            Iterator<ConstraintAnchor> it4 = hashSetD4.iterator();
            while (it4.hasNext()) {
                it4.next().mOwner.e(constraintWidgetContainer, linearSystem, hashSet, i10, true);
            }
        }
        HashSet<ConstraintAnchor> hashSetD5 = this.mBaseline.d();
        if (hashSetD5 != null) {
            Iterator<ConstraintAnchor> it5 = hashSetD5.iterator();
            while (it5.hasNext()) {
                it5.next().mOwner.e(constraintWidgetContainer, linearSystem, hashSet, i10, true);
            }
        }
    }

    boolean f() {
        return (this instanceof VirtualLayout) || (this instanceof Guideline);
    }

    public boolean j0(int i10) {
        return this.mIsInBarrier[i10];
    }

    public void k(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i10) {
        ConstraintAnchor.Type type3;
        ConstraintAnchor.Type type4;
        boolean z6;
        ConstraintAnchor.Type type5 = ConstraintAnchor.Type.CENTER;
        if (type == type5) {
            if (type2 != type5) {
                ConstraintAnchor.Type type6 = ConstraintAnchor.Type.LEFT;
                if (type2 == type6 || type2 == ConstraintAnchor.Type.RIGHT) {
                    k(type6, constraintWidget, type2, 0);
                    k(ConstraintAnchor.Type.RIGHT, constraintWidget, type2, 0);
                    q(type5).a(constraintWidget.q(type2), 0);
                    return;
                }
                ConstraintAnchor.Type type7 = ConstraintAnchor.Type.TOP;
                if (type2 == type7 || type2 == ConstraintAnchor.Type.BOTTOM) {
                    k(type7, constraintWidget, type2, 0);
                    k(ConstraintAnchor.Type.BOTTOM, constraintWidget, type2, 0);
                    q(type5).a(constraintWidget.q(type2), 0);
                    return;
                }
                return;
            }
            ConstraintAnchor.Type type8 = ConstraintAnchor.Type.LEFT;
            ConstraintAnchor constraintAnchorQ = q(type8);
            ConstraintAnchor.Type type9 = ConstraintAnchor.Type.RIGHT;
            ConstraintAnchor constraintAnchorQ2 = q(type9);
            ConstraintAnchor.Type type10 = ConstraintAnchor.Type.TOP;
            ConstraintAnchor constraintAnchorQ3 = q(type10);
            ConstraintAnchor.Type type11 = ConstraintAnchor.Type.BOTTOM;
            ConstraintAnchor constraintAnchorQ4 = q(type11);
            boolean z10 = true;
            if ((constraintAnchorQ == null || !constraintAnchorQ.o()) && (constraintAnchorQ2 == null || !constraintAnchorQ2.o())) {
                k(type8, constraintWidget, type8, 0);
                k(type9, constraintWidget, type9, 0);
                z6 = true;
            } else {
                z6 = false;
            }
            if ((constraintAnchorQ3 == null || !constraintAnchorQ3.o()) && (constraintAnchorQ4 == null || !constraintAnchorQ4.o())) {
                k(type10, constraintWidget, type10, 0);
                k(type11, constraintWidget, type11, 0);
            } else {
                z10 = false;
            }
            if (z6 && z10) {
                q(type5).a(constraintWidget.q(type5), 0);
                return;
            }
            if (z6) {
                ConstraintAnchor.Type type12 = ConstraintAnchor.Type.CENTER_X;
                q(type12).a(constraintWidget.q(type12), 0);
                return;
            } else {
                if (z10) {
                    ConstraintAnchor.Type type13 = ConstraintAnchor.Type.CENTER_Y;
                    q(type13).a(constraintWidget.q(type13), 0);
                    return;
                }
                return;
            }
        }
        ConstraintAnchor.Type type14 = ConstraintAnchor.Type.CENTER_X;
        if (type == type14 && (type2 == (type4 = ConstraintAnchor.Type.LEFT) || type2 == ConstraintAnchor.Type.RIGHT)) {
            ConstraintAnchor constraintAnchorQ5 = q(type4);
            ConstraintAnchor constraintAnchorQ6 = constraintWidget.q(type2);
            ConstraintAnchor constraintAnchorQ7 = q(ConstraintAnchor.Type.RIGHT);
            constraintAnchorQ5.a(constraintAnchorQ6, 0);
            constraintAnchorQ7.a(constraintAnchorQ6, 0);
            q(type14).a(constraintAnchorQ6, 0);
            return;
        }
        ConstraintAnchor.Type type15 = ConstraintAnchor.Type.CENTER_Y;
        if (type == type15 && (type2 == (type3 = ConstraintAnchor.Type.TOP) || type2 == ConstraintAnchor.Type.BOTTOM)) {
            ConstraintAnchor constraintAnchorQ8 = constraintWidget.q(type2);
            q(type3).a(constraintAnchorQ8, 0);
            q(ConstraintAnchor.Type.BOTTOM).a(constraintAnchorQ8, 0);
            q(type15).a(constraintAnchorQ8, 0);
            return;
        }
        if (type == type14 && type2 == type14) {
            ConstraintAnchor.Type type16 = ConstraintAnchor.Type.LEFT;
            q(type16).a(constraintWidget.q(type16), 0);
            ConstraintAnchor.Type type17 = ConstraintAnchor.Type.RIGHT;
            q(type17).a(constraintWidget.q(type17), 0);
            q(type14).a(constraintWidget.q(type2), 0);
            return;
        }
        if (type == type15 && type2 == type15) {
            ConstraintAnchor.Type type18 = ConstraintAnchor.Type.TOP;
            q(type18).a(constraintWidget.q(type18), 0);
            ConstraintAnchor.Type type19 = ConstraintAnchor.Type.BOTTOM;
            q(type19).a(constraintWidget.q(type19), 0);
            q(type15).a(constraintWidget.q(type2), 0);
            return;
        }
        ConstraintAnchor constraintAnchorQ9 = q(type);
        ConstraintAnchor constraintAnchorQ10 = constraintWidget.q(type2);
        if (constraintAnchorQ9.p(constraintAnchorQ10)) {
            ConstraintAnchor.Type type20 = ConstraintAnchor.Type.BASELINE;
            if (type == type20) {
                ConstraintAnchor constraintAnchorQ11 = q(ConstraintAnchor.Type.TOP);
                ConstraintAnchor constraintAnchorQ12 = q(ConstraintAnchor.Type.BOTTOM);
                if (constraintAnchorQ11 != null) {
                    constraintAnchorQ11.q();
                }
                if (constraintAnchorQ12 != null) {
                    constraintAnchorQ12.q();
                }
            } else if (type == ConstraintAnchor.Type.TOP || type == ConstraintAnchor.Type.BOTTOM) {
                ConstraintAnchor constraintAnchorQ13 = q(type20);
                if (constraintAnchorQ13 != null) {
                    constraintAnchorQ13.q();
                }
                ConstraintAnchor constraintAnchorQ14 = q(type5);
                if (constraintAnchorQ14.j() != constraintAnchorQ10) {
                    constraintAnchorQ14.q();
                }
                ConstraintAnchor constraintAnchorG = q(type).g();
                ConstraintAnchor constraintAnchorQ15 = q(type15);
                if (constraintAnchorQ15.o()) {
                    constraintAnchorG.q();
                    constraintAnchorQ15.q();
                }
            } else if (type == ConstraintAnchor.Type.LEFT || type == ConstraintAnchor.Type.RIGHT) {
                ConstraintAnchor constraintAnchorQ16 = q(type5);
                if (constraintAnchorQ16.j() != constraintAnchorQ10) {
                    constraintAnchorQ16.q();
                }
                ConstraintAnchor constraintAnchorG2 = q(type).g();
                ConstraintAnchor constraintAnchorQ17 = q(type14);
                if (constraintAnchorQ17.o()) {
                    constraintAnchorG2.q();
                    constraintAnchorQ17.q();
                }
            }
            constraintAnchorQ9.a(constraintAnchorQ10, i10);
        }
    }

    public boolean k0() {
        ConstraintAnchor constraintAnchor = this.mLeft;
        ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
        if (constraintAnchor2 != null && constraintAnchor2.mTarget == constraintAnchor) {
            return true;
        }
        ConstraintAnchor constraintAnchor3 = this.mRight;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
        return constraintAnchor4 != null && constraintAnchor4.mTarget == constraintAnchor3;
    }

    public void k1(DimensionBehaviour dimensionBehaviour) {
        this.mListDimensionBehaviors[1] = dimensionBehaviour;
    }

    public void m(ConstraintWidget constraintWidget, float f, int i10) {
        ConstraintAnchor.Type type = ConstraintAnchor.Type.CENTER;
        g0(type, constraintWidget, type, i10, 0);
        this.mCircleConstraintAngle = f;
    }

    public boolean m0() {
        ConstraintAnchor constraintAnchor = this.mTop;
        ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
        if (constraintAnchor2 != null && constraintAnchor2.mTarget == constraintAnchor) {
            return true;
        }
        ConstraintAnchor constraintAnchor3 = this.mBottom;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
        return constraintAnchor4 != null && constraintAnchor4.mTarget == constraintAnchor3;
    }

    public void m1(float f) {
        this.mWeight[1] = f;
    }

    public void n(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> map) {
        this.mHorizontalResolution = constraintWidget.mHorizontalResolution;
        this.mVerticalResolution = constraintWidget.mVerticalResolution;
        this.mMatchConstraintDefaultWidth = constraintWidget.mMatchConstraintDefaultWidth;
        this.mMatchConstraintDefaultHeight = constraintWidget.mMatchConstraintDefaultHeight;
        int[] iArr = this.mResolvedMatchConstraintDefault;
        int[] iArr2 = constraintWidget.mResolvedMatchConstraintDefault;
        iArr[0] = iArr2[0];
        iArr[1] = iArr2[1];
        this.mMatchConstraintMinWidth = constraintWidget.mMatchConstraintMinWidth;
        this.mMatchConstraintMaxWidth = constraintWidget.mMatchConstraintMaxWidth;
        this.mMatchConstraintMinHeight = constraintWidget.mMatchConstraintMinHeight;
        this.mMatchConstraintMaxHeight = constraintWidget.mMatchConstraintMaxHeight;
        this.mMatchConstraintPercentHeight = constraintWidget.mMatchConstraintPercentHeight;
        this.mIsWidthWrapContent = constraintWidget.mIsWidthWrapContent;
        this.mIsHeightWrapContent = constraintWidget.mIsHeightWrapContent;
        this.mResolvedDimensionRatioSide = constraintWidget.mResolvedDimensionRatioSide;
        this.mResolvedDimensionRatio = constraintWidget.mResolvedDimensionRatio;
        int[] iArr3 = constraintWidget.mMaxDimension;
        this.mMaxDimension = Arrays.copyOf(iArr3, iArr3.length);
        this.mCircleConstraintAngle = constraintWidget.mCircleConstraintAngle;
        this.hasBaseline = constraintWidget.hasBaseline;
        this.inPlaceholder = constraintWidget.inPlaceholder;
        this.mLeft.q();
        this.mTop.q();
        this.mRight.q();
        this.mBottom.q();
        this.mBaseline.q();
        this.mCenterX.q();
        this.mCenterY.q();
        this.mCenter.q();
        this.mListDimensionBehaviors = (DimensionBehaviour[]) Arrays.copyOf(this.mListDimensionBehaviors, 2);
        this.mParent = this.mParent == null ? null : map.get(constraintWidget.mParent);
        this.mWidth = constraintWidget.mWidth;
        this.mHeight = constraintWidget.mHeight;
        this.mDimensionRatio = constraintWidget.mDimensionRatio;
        this.mDimensionRatioSide = constraintWidget.mDimensionRatioSide;
        this.mX = constraintWidget.mX;
        this.mY = constraintWidget.mY;
        this.mRelX = constraintWidget.mRelX;
        this.mRelY = constraintWidget.mRelY;
        this.mOffsetX = constraintWidget.mOffsetX;
        this.mOffsetY = constraintWidget.mOffsetY;
        this.mBaselineDistance = constraintWidget.mBaselineDistance;
        this.mMinWidth = constraintWidget.mMinWidth;
        this.mMinHeight = constraintWidget.mMinHeight;
        this.mHorizontalBiasPercent = constraintWidget.mHorizontalBiasPercent;
        this.mVerticalBiasPercent = constraintWidget.mVerticalBiasPercent;
        this.mCompanionWidget = constraintWidget.mCompanionWidget;
        this.mContainerItemSkip = constraintWidget.mContainerItemSkip;
        this.mVisibility = constraintWidget.mVisibility;
        this.mAnimated = constraintWidget.mAnimated;
        this.mDebugName = constraintWidget.mDebugName;
        this.mType = constraintWidget.mType;
        this.mDistToTop = constraintWidget.mDistToTop;
        this.mDistToLeft = constraintWidget.mDistToLeft;
        this.mDistToRight = constraintWidget.mDistToRight;
        this.mDistToBottom = constraintWidget.mDistToBottom;
        this.mLeftHasCentered = constraintWidget.mLeftHasCentered;
        this.mRightHasCentered = constraintWidget.mRightHasCentered;
        this.mTopHasCentered = constraintWidget.mTopHasCentered;
        this.mBottomHasCentered = constraintWidget.mBottomHasCentered;
        this.mHorizontalWrapVisited = constraintWidget.mHorizontalWrapVisited;
        this.mVerticalWrapVisited = constraintWidget.mVerticalWrapVisited;
        this.mHorizontalChainStyle = constraintWidget.mHorizontalChainStyle;
        this.mVerticalChainStyle = constraintWidget.mVerticalChainStyle;
        this.mHorizontalChainFixedPosition = constraintWidget.mHorizontalChainFixedPosition;
        this.mVerticalChainFixedPosition = constraintWidget.mVerticalChainFixedPosition;
        float[] fArr = this.mWeight;
        float[] fArr2 = constraintWidget.mWeight;
        fArr[0] = fArr2[0];
        fArr[1] = fArr2[1];
        ConstraintWidget[] constraintWidgetArr = this.mListNextMatchConstraintsWidget;
        ConstraintWidget[] constraintWidgetArr2 = constraintWidget.mListNextMatchConstraintsWidget;
        constraintWidgetArr[0] = constraintWidgetArr2[0];
        constraintWidgetArr[1] = constraintWidgetArr2[1];
        ConstraintWidget[] constraintWidgetArr3 = this.mNextChainWidget;
        ConstraintWidget[] constraintWidgetArr4 = constraintWidget.mNextChainWidget;
        constraintWidgetArr3[0] = constraintWidgetArr4[0];
        constraintWidgetArr3[1] = constraintWidgetArr4[1];
        ConstraintWidget constraintWidget2 = constraintWidget.mHorizontalNextWidget;
        this.mHorizontalNextWidget = constraintWidget2 == null ? null : map.get(constraintWidget2);
        ConstraintWidget constraintWidget3 = constraintWidget.mVerticalNextWidget;
        this.mVerticalNextWidget = constraintWidget3 != null ? map.get(constraintWidget3) : null;
    }

    public void o(LinearSystem linearSystem) {
        linearSystem.q(this.mLeft);
        linearSystem.q(this.mTop);
        linearSystem.q(this.mRight);
        linearSystem.q(this.mBottom);
        if (this.mBaselineDistance > 0) {
            linearSystem.q(this.mBaseline);
        }
    }

    public void p() {
        if (this.horizontalRun == null) {
            this.horizontalRun = new HorizontalWidgetRun(this);
        }
        if (this.verticalRun == null) {
            this.verticalRun = new VerticalWidgetRun(this);
        }
    }

    public boolean p0() {
        return this.resolvedHorizontal || (this.mLeft.n() && this.mRight.n());
    }

    public ConstraintAnchor q(ConstraintAnchor.Type type) {
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[type.ordinal()]) {
            case 1:
                return this.mLeft;
            case 2:
                return this.mTop;
            case 3:
                return this.mRight;
            case 4:
                return this.mBottom;
            case 5:
                return this.mBaseline;
            case 6:
                return this.mCenter;
            case 7:
                return this.mCenterX;
            case 8:
                return this.mCenterY;
            case 9:
                return null;
            default:
                throw new AssertionError(type.name());
        }
    }

    public boolean q0() {
        return this.resolvedVertical || (this.mTop.n() && this.mBottom.n());
    }

    public void s1(boolean z6, boolean z10, boolean z11, boolean z12) {
        if (this.mResolvedDimensionRatioSide == -1) {
            if (z11 && !z12) {
                this.mResolvedDimensionRatioSide = 0;
            } else if (!z11 && z12) {
                this.mResolvedDimensionRatioSide = 1;
                if (this.mDimensionRatioSide == -1) {
                    this.mResolvedDimensionRatio = 1.0f / this.mResolvedDimensionRatio;
                }
            }
        }
        if (this.mResolvedDimensionRatioSide == 0 && (!this.mTop.o() || !this.mBottom.o())) {
            this.mResolvedDimensionRatioSide = 1;
        } else if (this.mResolvedDimensionRatioSide == 1 && (!this.mLeft.o() || !this.mRight.o())) {
            this.mResolvedDimensionRatioSide = 0;
        }
        if (this.mResolvedDimensionRatioSide == -1 && (!this.mTop.o() || !this.mBottom.o() || !this.mLeft.o() || !this.mRight.o())) {
            if (this.mTop.o() && this.mBottom.o()) {
                this.mResolvedDimensionRatioSide = 0;
            } else if (this.mLeft.o() && this.mRight.o()) {
                this.mResolvedDimensionRatio = 1.0f / this.mResolvedDimensionRatio;
                this.mResolvedDimensionRatioSide = 1;
            }
        }
        if (this.mResolvedDimensionRatioSide == -1) {
            int i10 = this.mMatchConstraintMinWidth;
            if (i10 > 0 && this.mMatchConstraintMinHeight == 0) {
                this.mResolvedDimensionRatioSide = 0;
            } else {
                if (i10 != 0 || this.mMatchConstraintMinHeight <= 0) {
                    return;
                }
                this.mResolvedDimensionRatio = 1.0f / this.mResolvedDimensionRatio;
                this.mResolvedDimensionRatioSide = 1;
            }
        }
    }

    public void t1(boolean z6, boolean z10) {
        int i10;
        int i11;
        boolean zK = z6 & this.horizontalRun.k();
        boolean zK2 = z10 & this.verticalRun.k();
        HorizontalWidgetRun horizontalWidgetRun = this.horizontalRun;
        int i12 = horizontalWidgetRun.start.value;
        VerticalWidgetRun verticalWidgetRun = this.verticalRun;
        int i13 = verticalWidgetRun.start.value;
        int i14 = horizontalWidgetRun.end.value;
        int i15 = verticalWidgetRun.end.value;
        int i16 = i15 - i13;
        if (i14 - i12 < 0 || i16 < 0 || i12 == Integer.MIN_VALUE || i12 == Integer.MAX_VALUE || i13 == Integer.MIN_VALUE || i13 == Integer.MAX_VALUE || i14 == Integer.MIN_VALUE || i14 == Integer.MAX_VALUE || i15 == Integer.MIN_VALUE || i15 == Integer.MAX_VALUE) {
            i14 = 0;
            i12 = 0;
            i15 = 0;
            i13 = 0;
        }
        int i17 = i14 - i12;
        int i18 = i15 - i13;
        if (zK) {
            this.mX = i12;
        }
        if (zK2) {
            this.mY = i13;
        }
        if (this.mVisibility == 8) {
            this.mWidth = 0;
            this.mHeight = 0;
            return;
        }
        if (zK) {
            if (this.mListDimensionBehaviors[0] == DimensionBehaviour.FIXED && i17 < (i11 = this.mWidth)) {
                i17 = i11;
            }
            this.mWidth = i17;
            int i19 = this.mMinWidth;
            if (i17 < i19) {
                this.mWidth = i19;
            }
        }
        if (zK2) {
            if (this.mListDimensionBehaviors[1] == DimensionBehaviour.FIXED && i18 < (i10 = this.mHeight)) {
                i18 = i10;
            }
            this.mHeight = i18;
            int i20 = this.mMinHeight;
            if (i18 < i20) {
                this.mHeight = i20;
            }
        }
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        String str2 = "";
        if (this.mType != null) {
            str = "type: " + this.mType + " ";
        } else {
            str = "";
        }
        sb.append(str);
        if (this.mDebugName != null) {
            str2 = "id: " + this.mDebugName + " ";
        }
        sb.append(str2);
        sb.append("(");
        sb.append(this.mX);
        sb.append(", ");
        sb.append(this.mY);
        sb.append(") - (");
        sb.append(this.mWidth);
        sb.append(" x ");
        sb.append(this.mHeight);
        sb.append(")");
        return sb.toString();
    }

    public boolean u0() {
        DimensionBehaviour[] dimensionBehaviourArr = this.mListDimensionBehaviors;
        DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
        DimensionBehaviour dimensionBehaviour2 = DimensionBehaviour.MATCH_CONSTRAINT;
        return dimensionBehaviour == dimensionBehaviour2 && dimensionBehaviourArr[1] == dimensionBehaviour2;
    }

    public void u1(LinearSystem linearSystem, boolean z6) {
        VerticalWidgetRun verticalWidgetRun;
        HorizontalWidgetRun horizontalWidgetRun;
        int iY = linearSystem.y(this.mLeft);
        int iY2 = linearSystem.y(this.mTop);
        int iY3 = linearSystem.y(this.mRight);
        int iY4 = linearSystem.y(this.mBottom);
        if (z6 && (horizontalWidgetRun = this.horizontalRun) != null) {
            DependencyNode dependencyNode = horizontalWidgetRun.start;
            if (dependencyNode.resolved) {
                DependencyNode dependencyNode2 = horizontalWidgetRun.end;
                if (dependencyNode2.resolved) {
                    iY = dependencyNode.value;
                    iY3 = dependencyNode2.value;
                }
            }
        }
        if (z6 && (verticalWidgetRun = this.verticalRun) != null) {
            DependencyNode dependencyNode3 = verticalWidgetRun.start;
            if (dependencyNode3.resolved) {
                DependencyNode dependencyNode4 = verticalWidgetRun.end;
                if (dependencyNode4.resolved) {
                    iY2 = dependencyNode3.value;
                    iY4 = dependencyNode4.value;
                }
            }
        }
        int i10 = iY4 - iY2;
        if (iY3 - iY < 0 || i10 < 0 || iY == Integer.MIN_VALUE || iY == Integer.MAX_VALUE || iY2 == Integer.MIN_VALUE || iY2 == Integer.MAX_VALUE || iY3 == Integer.MIN_VALUE || iY3 == Integer.MAX_VALUE || iY4 == Integer.MIN_VALUE || iY4 == Integer.MAX_VALUE) {
            iY = 0;
            iY4 = 0;
            iY2 = 0;
            iY3 = 0;
        }
        N0(iY, iY2, iY3, iY4);
    }

    public void v0() {
        this.mLeft.q();
        this.mTop.q();
        this.mRight.q();
        this.mBottom.q();
        this.mBaseline.q();
        this.mCenterX.q();
        this.mCenterY.q();
        this.mCenter.q();
        this.mParent = null;
        this.mCircleConstraintAngle = 0.0f;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.mX = 0;
        this.mY = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.mBaselineDistance = 0;
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        float f = DEFAULT_BIAS;
        this.mHorizontalBiasPercent = f;
        this.mVerticalBiasPercent = f;
        DimensionBehaviour[] dimensionBehaviourArr = this.mListDimensionBehaviors;
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        dimensionBehaviourArr[0] = dimensionBehaviour;
        dimensionBehaviourArr[1] = dimensionBehaviour;
        this.mCompanionWidget = null;
        this.mContainerItemSkip = 0;
        this.mVisibility = 0;
        this.mType = null;
        this.mHorizontalWrapVisited = false;
        this.mVerticalWrapVisited = false;
        this.mHorizontalChainStyle = 0;
        this.mVerticalChainStyle = 0;
        this.mHorizontalChainFixedPosition = false;
        this.mVerticalChainFixedPosition = false;
        float[] fArr = this.mWeight;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        int[] iArr = this.mMaxDimension;
        iArr[0] = Integer.MAX_VALUE;
        iArr[1] = Integer.MAX_VALUE;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mMatchConstraintPercentWidth = 1.0f;
        this.mMatchConstraintPercentHeight = 1.0f;
        this.mMatchConstraintMaxWidth = Integer.MAX_VALUE;
        this.mMatchConstraintMaxHeight = Integer.MAX_VALUE;
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMinHeight = 0;
        this.mResolvedHasRatio = false;
        this.mResolvedDimensionRatioSide = -1;
        this.mResolvedDimensionRatio = 1.0f;
        this.mGroupsToSolver = false;
        boolean[] zArr = this.isTerminalWidget;
        zArr[0] = true;
        zArr[1] = true;
        this.mInVirtualLayout = false;
        boolean[] zArr2 = this.mIsInBarrier;
        zArr2[0] = false;
        zArr2[1] = false;
        this.mMeasureRequested = true;
        int[] iArr2 = this.mResolvedMatchConstraintDefault;
        iArr2[0] = 0;
        iArr2[1] = 0;
        this.mWidthOverride = -1;
        this.mHeightOverride = -1;
    }

    public DimensionBehaviour w(int i10) {
        if (i10 == 0) {
            return C();
        }
        if (i10 == 1) {
            return V();
        }
        return null;
    }

    public void z0(Cache cache) {
        this.mLeft.s(cache);
        this.mTop.s(cache);
        this.mRight.s(cache);
        this.mBottom.s(cache);
        this.mBaseline.s(cache);
        this.mCenter.s(cache);
        this.mCenterX.s(cache);
        this.mCenterY.s(cache);
    }

    private void R(StringBuilder sb, String str, int i10, int i11, int i12, int i13, int i14, int i15, float f, float f6) {
        sb.append(str);
        sb.append(" :  {\n");
        B0(sb, "      size", i10, 0);
        B0(sb, "      min", i11, 0);
        B0(sb, "      max", i12, Integer.MAX_VALUE);
        B0(sb, "      matchMin", i14, 0);
        B0(sb, "      matchDef", i15, 0);
        A0(sb, "      matchPercent", f, 1.0f);
        sb.append("    },\n");
    }

    public int O() {
        return Z() + this.mWidth;
    }

    public void g0(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i10, int i11) {
        q(type).b(constraintWidget.q(type2), i10, i11, true);
    }

    public void l(ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i10) {
        if (constraintAnchor.h() == this) {
            k(constraintAnchor.k(), constraintAnchor2.h(), constraintAnchor2.k(), i10);
        }
    }

    public int t() {
        return a0() + this.mHeight;
    }

    public void w0() {
        x0();
        h1(DEFAULT_BIAS);
        Q0(DEFAULT_BIAS);
    }

    public void x0() {
        ConstraintWidget constraintWidgetM = M();
        if (constraintWidgetM != null && (constraintWidgetM instanceof ConstraintWidgetContainer) && ((ConstraintWidgetContainer) M()).Q1()) {
            return;
        }
        int size = this.mAnchors.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.mAnchors.get(i10).q();
        }
    }

    public ConstraintWidget(String str) {
        this.measured = false;
        this.run = new WidgetRun[2];
        this.horizontalRun = null;
        this.verticalRun = null;
        this.isTerminalWidget = new boolean[]{true, true};
        this.mResolvedHasRatio = false;
        this.mMeasureRequested = true;
        this.OPTIMIZE_WRAP = false;
        this.OPTIMIZE_WRAP_ON_RESOLVED = true;
        this.mWidthOverride = -1;
        this.mHeightOverride = -1;
        this.frame = new WidgetFrame(this);
        this.resolvedHorizontal = false;
        this.resolvedVertical = false;
        this.horizontalSolvingPass = false;
        this.verticalSolvingPass = false;
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        this.mWrapBehaviorInParent = 0;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mResolvedMatchConstraintDefault = new int[2];
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMaxWidth = 0;
        this.mMatchConstraintPercentWidth = 1.0f;
        this.mMatchConstraintMinHeight = 0;
        this.mMatchConstraintMaxHeight = 0;
        this.mMatchConstraintPercentHeight = 1.0f;
        this.mResolvedDimensionRatioSide = -1;
        this.mResolvedDimensionRatio = 1.0f;
        this.mMaxDimension = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE};
        this.mCircleConstraintAngle = 0.0f;
        this.hasBaseline = false;
        this.mInVirtualLayout = false;
        this.mLastHorizontalMeasureSpec = 0;
        this.mLastVerticalMeasureSpec = 0;
        this.mLeft = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
        this.mTop = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
        this.mRight = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
        this.mBottom = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
        this.mBaseline = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
        this.mCenterX = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);
        this.mCenterY = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);
        ConstraintAnchor constraintAnchor = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
        this.mCenter = constraintAnchor;
        this.mListAnchors = new ConstraintAnchor[]{this.mLeft, this.mRight, this.mTop, this.mBottom, this.mBaseline, constraintAnchor};
        this.mAnchors = new ArrayList<>();
        this.mIsInBarrier = new boolean[2];
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        this.mListDimensionBehaviors = new DimensionBehaviour[]{dimensionBehaviour, dimensionBehaviour};
        this.mParent = null;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.mX = 0;
        this.mY = 0;
        this.mRelX = 0;
        this.mRelY = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.mBaselineDistance = 0;
        float f = DEFAULT_BIAS;
        this.mHorizontalBiasPercent = f;
        this.mVerticalBiasPercent = f;
        this.mContainerItemSkip = 0;
        this.mVisibility = 0;
        this.mAnimated = false;
        this.mDebugName = null;
        this.mType = null;
        this.mGroupsToSolver = false;
        this.mHorizontalChainStyle = 0;
        this.mVerticalChainStyle = 0;
        this.mWeight = new float[]{-1.0f, -1.0f};
        this.mListNextMatchConstraintsWidget = new ConstraintWidget[]{null, null};
        this.mNextChainWidget = new ConstraintWidget[]{null, null};
        this.mHorizontalNextWidget = null;
        this.mVerticalNextWidget = null;
        this.horizontalGroup = -1;
        this.verticalGroup = -1;
        d();
        G0(str);
    }

    public ConstraintWidget(int i10, int i11, int i12, int i13) {
        this.measured = false;
        this.run = new WidgetRun[2];
        this.horizontalRun = null;
        this.verticalRun = null;
        this.isTerminalWidget = new boolean[]{true, true};
        this.mResolvedHasRatio = false;
        this.mMeasureRequested = true;
        this.OPTIMIZE_WRAP = false;
        this.OPTIMIZE_WRAP_ON_RESOLVED = true;
        this.mWidthOverride = -1;
        this.mHeightOverride = -1;
        this.frame = new WidgetFrame(this);
        this.resolvedHorizontal = false;
        this.resolvedVertical = false;
        this.horizontalSolvingPass = false;
        this.verticalSolvingPass = false;
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        this.mWrapBehaviorInParent = 0;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mResolvedMatchConstraintDefault = new int[2];
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMaxWidth = 0;
        this.mMatchConstraintPercentWidth = 1.0f;
        this.mMatchConstraintMinHeight = 0;
        this.mMatchConstraintMaxHeight = 0;
        this.mMatchConstraintPercentHeight = 1.0f;
        this.mResolvedDimensionRatioSide = -1;
        this.mResolvedDimensionRatio = 1.0f;
        this.mMaxDimension = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE};
        this.mCircleConstraintAngle = 0.0f;
        this.hasBaseline = false;
        this.mInVirtualLayout = false;
        this.mLastHorizontalMeasureSpec = 0;
        this.mLastVerticalMeasureSpec = 0;
        this.mLeft = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
        this.mTop = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
        this.mRight = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
        this.mBottom = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
        this.mBaseline = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
        this.mCenterX = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);
        this.mCenterY = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);
        ConstraintAnchor constraintAnchor = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
        this.mCenter = constraintAnchor;
        this.mListAnchors = new ConstraintAnchor[]{this.mLeft, this.mRight, this.mTop, this.mBottom, this.mBaseline, constraintAnchor};
        this.mAnchors = new ArrayList<>();
        this.mIsInBarrier = new boolean[2];
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        this.mListDimensionBehaviors = new DimensionBehaviour[]{dimensionBehaviour, dimensionBehaviour};
        this.mParent = null;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.mRelX = 0;
        this.mRelY = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.mBaselineDistance = 0;
        float f = DEFAULT_BIAS;
        this.mHorizontalBiasPercent = f;
        this.mVerticalBiasPercent = f;
        this.mContainerItemSkip = 0;
        this.mVisibility = 0;
        this.mAnimated = false;
        this.mDebugName = null;
        this.mType = null;
        this.mGroupsToSolver = false;
        this.mHorizontalChainStyle = 0;
        this.mVerticalChainStyle = 0;
        this.mWeight = new float[]{-1.0f, -1.0f};
        this.mListNextMatchConstraintsWidget = new ConstraintWidget[]{null, null};
        this.mNextChainWidget = new ConstraintWidget[]{null, null};
        this.mHorizontalNextWidget = null;
        this.mVerticalNextWidget = null;
        this.horizontalGroup = -1;
        this.verticalGroup = -1;
        this.mX = i10;
        this.mY = i11;
        this.mWidth = i12;
        this.mHeight = i13;
        d();
    }

    public ConstraintWidget(String str, int i10, int i11, int i12, int i13) {
        this(i10, i11, i12, i13);
        G0(str);
    }

    public ConstraintWidget(int i10, int i11) {
        this(0, 0, i10, i11);
    }

    public ConstraintWidget(String str, int i10, int i11) {
        this(i10, i11);
        G0(str);
    }
}
