package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import android.widget.LinearLayout;
import androidx.annotation.GravityInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.view.GravityCompat;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.HashSet;
import java.util.Set;
import java.util.function.IntFunction;

/* JADX INFO: loaded from: classes8.dex */
public class LinearLayoutCompat extends ViewGroup {
    private static final String ACCESSIBILITY_CLASS_NAME = "androidx.appcompat.widget.LinearLayoutCompat";
    public static final int HORIZONTAL = 0;
    private static final int INDEX_BOTTOM = 2;
    private static final int INDEX_CENTER_VERTICAL = 0;
    private static final int INDEX_FILL = 3;
    private static final int INDEX_TOP = 1;
    public static final int SHOW_DIVIDER_BEGINNING = 1;
    public static final int SHOW_DIVIDER_END = 4;
    public static final int SHOW_DIVIDER_MIDDLE = 2;
    public static final int SHOW_DIVIDER_NONE = 0;
    public static final int VERTICAL = 1;
    private static final int VERTICAL_GRAVITY_COUNT = 4;
    private boolean mBaselineAligned;
    private int mBaselineAlignedChildIndex;
    private int mBaselineChildTop;
    private Drawable mDivider;
    private int mDividerHeight;
    private int mDividerPadding;
    private int mDividerWidth;
    private int mGravity;
    private int[] mMaxAscent;
    private int[] mMaxDescent;
    private int mOrientation;
    private int mShowDividers;
    private int mTotalLength;
    private boolean mUseLargestChild;
    private float mWeightSum;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface DividerMode {
    }

    /* JADX INFO: loaded from: classes10.dex */
    @RequiresApi
    @RestrictTo
    public final class InspectionCompanion implements android.view.inspector.InspectionCompanion {
        private int mBaselineAlignedChildIndexId;
        private int mBaselineAlignedId;
        private int mDividerId;
        private int mDividerPaddingId;
        private int mGravityId;
        private int mMeasureWithLargestChildId;
        private int mOrientationId;
        private boolean mPropertiesMapped = false;
        private int mShowDividersId;
        private int mWeightSumId;

        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void readProperties(@NonNull LinearLayoutCompat linearLayoutCompat, @NonNull PropertyReader propertyReader) {
            if (!this.mPropertiesMapped) {
                throw c.a();
            }
            propertyReader.readBoolean(this.mBaselineAlignedId, linearLayoutCompat.u());
            propertyReader.readInt(this.mBaselineAlignedChildIndexId, linearLayoutCompat.getBaselineAlignedChildIndex());
            propertyReader.readGravity(this.mGravityId, linearLayoutCompat.getGravity());
            propertyReader.readIntEnum(this.mOrientationId, linearLayoutCompat.getOrientation());
            propertyReader.readFloat(this.mWeightSumId, linearLayoutCompat.getWeightSum());
            propertyReader.readObject(this.mDividerId, linearLayoutCompat.getDividerDrawable());
            propertyReader.readInt(this.mDividerPaddingId, linearLayoutCompat.getDividerPadding());
            propertyReader.readBoolean(this.mMeasureWithLargestChildId, linearLayoutCompat.v());
            propertyReader.readIntFlag(this.mShowDividersId, linearLayoutCompat.getShowDividers());
        }

        public void mapProperties(@NonNull PropertyMapper propertyMapper) {
            this.mBaselineAlignedId = propertyMapper.mapBoolean("baselineAligned", R.attr.baselineAligned);
            this.mBaselineAlignedChildIndexId = propertyMapper.mapInt("baselineAlignedChildIndex", R.attr.baselineAlignedChildIndex);
            this.mGravityId = propertyMapper.mapGravity("gravity", R.attr.gravity);
            this.mOrientationId = propertyMapper.mapIntEnum("orientation", R.attr.orientation, new IntFunction<String>() { // from class: androidx.appcompat.widget.LinearLayoutCompat.InspectionCompanion.1
                @Override // java.util.function.IntFunction
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public String apply(int i10) {
                    if (i10 != 0) {
                        return i10 != 1 ? String.valueOf(i10) : "vertical";
                    }
                    return "horizontal";
                }
            });
            this.mWeightSumId = propertyMapper.mapFloat("weightSum", R.attr.weightSum);
            this.mDividerId = propertyMapper.mapObject("divider", androidx.appcompat.R.attr.divider);
            this.mDividerPaddingId = propertyMapper.mapInt("dividerPadding", androidx.appcompat.R.attr.dividerPadding);
            this.mMeasureWithLargestChildId = propertyMapper.mapBoolean("measureWithLargestChild", androidx.appcompat.R.attr.measureWithLargestChild);
            this.mShowDividersId = propertyMapper.mapIntFlag("showDividers", androidx.appcompat.R.attr.showDividers, new IntFunction<Set<String>>() { // from class: androidx.appcompat.widget.LinearLayoutCompat.InspectionCompanion.2
                @Override // java.util.function.IntFunction
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public Set<String> apply(int i10) {
                    HashSet hashSet = new HashSet();
                    if (i10 == 0) {
                        hashSet.add("none");
                    }
                    if (i10 == 1) {
                        hashSet.add("beginning");
                    }
                    if (i10 == 2) {
                        hashSet.add("middle");
                    }
                    if (i10 == 4) {
                        hashSet.add("end");
                    }
                    return hashSet;
                }
            });
            this.mPropertiesMapped = true;
        }
    }

    public static class LayoutParams extends LinearLayout.LayoutParams {
        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(int i10, int i11) {
            super(i10, i11);
        }

        public LayoutParams(int i10, int i11, float f) {
            super(i10, i11, f);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface OrientationMode {
    }

    public LinearLayoutCompat(@NonNull Context context) {
        this(context, null);
    }

    private void C(View view, int i10, int i11, int i12, int i13) {
        view.layout(i10, i11, i12 + i10, i13 + i11);
    }

    int A(int i10) {
        return 0;
    }

    public int getBaselineAlignedChildIndex() {
        return this.mBaselineAlignedChildIndex;
    }

    public Drawable getDividerDrawable() {
        return this.mDivider;
    }

    public int getDividerPadding() {
        return this.mDividerPadding;
    }

    @RestrictTo
    public int getDividerWidth() {
        return this.mDividerWidth;
    }

    @GravityInt
    public int getGravity() {
        return this.mGravity;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public int getShowDividers() {
        return this.mShowDividers;
    }

    public float getWeightSum() {
        return this.mWeightSum;
    }

    int p(View view, int i10) {
        return 0;
    }

    int q(View view) {
        return 0;
    }

    int r(View view) {
        return 0;
    }

    public void setBaselineAligned(boolean z6) {
        this.mBaselineAligned = z6;
    }

    public void setDividerPadding(int i10) {
        this.mDividerPadding = i10;
    }

    public void setMeasureWithLargestChildEnabled(boolean z6) {
        this.mUseLargestChild = z6;
    }

    public void setWeightSum(float f) {
        this.mWeightSum = Math.max(0.0f, f);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @RestrictTo
    protected boolean t(int i10) {
        if (i10 == 0) {
            return (this.mShowDividers & 1) != 0;
        }
        if (i10 == getChildCount()) {
            return (this.mShowDividers & 4) != 0;
        }
        if ((this.mShowDividers & 2) == 0) {
            return false;
        }
        for (int i11 = i10 - 1; i11 >= 0; i11--) {
            if (getChildAt(i11).getVisibility() != 8) {
                return true;
            }
        }
        return false;
    }

    public boolean u() {
        return this.mBaselineAligned;
    }

    public boolean v() {
        return this.mUseLargestChild;
    }

    void y(View view, int i10, int i11, int i12, int i13, int i14) {
        measureChildWithMargins(view, i11, i12, i13, i14);
    }

    public LinearLayoutCompat(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Code duplicated, block: B:153:0x0330  */
    void B(int i10, int i11) {
        int i12;
        int iCombineMeasuredStates;
        int iMax;
        int i13;
        int i14;
        int i15;
        boolean z6;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int iMax2;
        int i23;
        View view;
        int iMax3;
        boolean z10;
        this.mTotalLength = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int i24 = this.mBaselineAlignedChildIndex;
        boolean z11 = this.mUseLargestChild;
        int i25 = 0;
        int i26 = 0;
        int i27 = 0;
        int iMax4 = 0;
        int i28 = 0;
        int iP = 0;
        boolean z12 = false;
        boolean z13 = false;
        boolean z14 = true;
        float f = 0.0f;
        while (true) {
            int i29 = 8;
            int i30 = iMax4;
            if (iP >= virtualChildCount) {
                int i31 = i25;
                int i32 = i27;
                int i33 = i28;
                int i34 = mode2;
                int iMax5 = i26;
                int i35 = virtualChildCount;
                if (this.mTotalLength > 0) {
                    i12 = i35;
                    if (t(i12)) {
                        this.mTotalLength += this.mDividerHeight;
                    }
                } else {
                    i12 = i35;
                }
                if (z11 && (i34 == Integer.MIN_VALUE || i34 == 0)) {
                    this.mTotalLength = 0;
                    int iP2 = 0;
                    while (iP2 < i12) {
                        View viewS = s(iP2);
                        if (viewS == null) {
                            this.mTotalLength += A(iP2);
                        } else if (viewS.getVisibility() == i29) {
                            iP2 += p(viewS, iP2);
                        } else {
                            LayoutParams layoutParams = (LayoutParams) viewS.getLayoutParams();
                            int i36 = this.mTotalLength;
                            this.mTotalLength = Math.max(i36, i36 + i32 + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin + r(viewS));
                        }
                        iP2++;
                        i29 = 8;
                    }
                }
                int paddingTop = this.mTotalLength + getPaddingTop() + getPaddingBottom();
                this.mTotalLength = paddingTop;
                int iResolveSizeAndState = View.resolveSizeAndState(Math.max(paddingTop, getSuggestedMinimumHeight()), i11, 0);
                int i37 = (16777215 & iResolveSizeAndState) - this.mTotalLength;
                if (z12 || (i37 != 0 && f > 0.0f)) {
                    float f6 = this.mWeightSum;
                    if (f6 > 0.0f) {
                        f = f6;
                    }
                    this.mTotalLength = 0;
                    int i38 = i37;
                    int i39 = i33;
                    iCombineMeasuredStates = i31;
                    int i40 = 0;
                    while (i40 < i12) {
                        View viewS2 = s(i40);
                        if (viewS2.getVisibility() == 8) {
                            i13 = i38;
                        } else {
                            LayoutParams layoutParams2 = (LayoutParams) viewS2.getLayoutParams();
                            float f7 = ((LinearLayout.LayoutParams) layoutParams2).weight;
                            if (f7 > 0.0f) {
                                int i41 = (int) ((i38 * f7) / f);
                                float f10 = f - f7;
                                i13 = i38 - i41;
                                int childMeasureSpec = ViewGroup.getChildMeasureSpec(i10, getPaddingLeft() + getPaddingRight() + ((LinearLayout.LayoutParams) layoutParams2).leftMargin + ((LinearLayout.LayoutParams) layoutParams2).rightMargin, ((LinearLayout.LayoutParams) layoutParams2).width);
                                if (((LinearLayout.LayoutParams) layoutParams2).height == 0) {
                                    i16 = 1073741824;
                                    if (i34 == 1073741824) {
                                        if (i41 <= 0) {
                                            i41 = 0;
                                        }
                                        viewS2.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i41, 1073741824));
                                    }
                                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, viewS2.getMeasuredState() & InputDeviceCompat.SOURCE_ANY);
                                    f = f10;
                                } else {
                                    i16 = 1073741824;
                                }
                                int measuredHeight = viewS2.getMeasuredHeight() + i41;
                                if (measuredHeight < 0) {
                                    measuredHeight = 0;
                                }
                                viewS2.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(measuredHeight, i16));
                                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, viewS2.getMeasuredState() & InputDeviceCompat.SOURCE_ANY);
                                f = f10;
                            } else {
                                i13 = i38;
                            }
                            int i42 = ((LinearLayout.LayoutParams) layoutParams2).leftMargin + ((LinearLayout.LayoutParams) layoutParams2).rightMargin;
                            int measuredWidth = viewS2.getMeasuredWidth() + i42;
                            iMax5 = Math.max(iMax5, measuredWidth);
                            float f11 = f;
                            if (mode != 1073741824) {
                                i14 = iCombineMeasuredStates;
                                i15 = -1;
                                if (((LinearLayout.LayoutParams) layoutParams2).width != -1) {
                                }
                                int iMax6 = Math.max(i39, i42);
                                if (z14 || ((LinearLayout.LayoutParams) layoutParams2).width != i15) {
                                    z6 = false;
                                } else {
                                    z6 = true;
                                }
                                int i43 = this.mTotalLength;
                                this.mTotalLength = Math.max(i43, viewS2.getMeasuredHeight() + i43 + ((LinearLayout.LayoutParams) layoutParams2).topMargin + ((LinearLayout.LayoutParams) layoutParams2).bottomMargin + r(viewS2));
                                z14 = z6;
                                iCombineMeasuredStates = i14;
                                i39 = iMax6;
                                f = f11;
                            } else {
                                i14 = iCombineMeasuredStates;
                                i15 = -1;
                            }
                            i42 = measuredWidth;
                            int iMax7 = Math.max(i39, i42);
                            if (z14) {
                                z6 = false;
                            } else {
                                z6 = false;
                            }
                            int i44 = this.mTotalLength;
                            this.mTotalLength = Math.max(i44, viewS2.getMeasuredHeight() + i44 + ((LinearLayout.LayoutParams) layoutParams2).topMargin + ((LinearLayout.LayoutParams) layoutParams2).bottomMargin + r(viewS2));
                            z14 = z6;
                            iCombineMeasuredStates = i14;
                            i39 = iMax7;
                            f = f11;
                        }
                        i40++;
                        i38 = i13;
                    }
                    this.mTotalLength += getPaddingTop() + getPaddingBottom();
                    iMax = i39;
                } else {
                    iMax = Math.max(i33, i30);
                    if (z11 && i34 != 1073741824) {
                        for (int i45 = 0; i45 < i12; i45++) {
                            View viewS3 = s(i45);
                            if (viewS3 != null && viewS3.getVisibility() != 8 && ((LinearLayout.LayoutParams) ((LayoutParams) viewS3.getLayoutParams())).weight > 0.0f) {
                                viewS3.measure(View.MeasureSpec.makeMeasureSpec(viewS3.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i32, 1073741824));
                            }
                        }
                    }
                    iCombineMeasuredStates = i31;
                }
                if (z14 || mode == 1073741824) {
                    iMax = iMax5;
                }
                setMeasuredDimension(View.resolveSizeAndState(Math.max(iMax + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i10, iCombineMeasuredStates), iResolveSizeAndState);
                if (z13) {
                    l(i12, i11);
                    return;
                }
                return;
            }
            View viewS4 = s(iP);
            if (viewS4 == null) {
                this.mTotalLength += A(iP);
                i20 = mode2;
                iMax4 = i30;
                i22 = virtualChildCount;
            } else {
                int i46 = i25;
                if (viewS4.getVisibility() == 8) {
                    iP += p(viewS4, iP);
                    iMax4 = i30;
                    i25 = i46;
                    i22 = virtualChildCount;
                    i20 = mode2;
                } else {
                    if (t(iP)) {
                        this.mTotalLength += this.mDividerHeight;
                    }
                    LayoutParams layoutParams3 = (LayoutParams) viewS4.getLayoutParams();
                    float f12 = ((LinearLayout.LayoutParams) layoutParams3).weight;
                    float f13 = f + f12;
                    if (mode2 == 1073741824 && ((LinearLayout.LayoutParams) layoutParams3).height == 0 && f12 > 0.0f) {
                        int i47 = this.mTotalLength;
                        this.mTotalLength = Math.max(i47, ((LinearLayout.LayoutParams) layoutParams3).topMargin + i47 + ((LinearLayout.LayoutParams) layoutParams3).bottomMargin);
                        iMax3 = i27;
                        view = viewS4;
                        iMax2 = i28;
                        z12 = true;
                        i18 = i46;
                        i19 = i26;
                        i20 = mode2;
                        i21 = i30;
                        i22 = virtualChildCount;
                        i23 = iP;
                    } else {
                        int i48 = i26;
                        if (((LinearLayout.LayoutParams) layoutParams3).height != 0 || f12 <= 0.0f) {
                            i17 = Integer.MIN_VALUE;
                        } else {
                            ((LinearLayout.LayoutParams) layoutParams3).height = -2;
                            i17 = 0;
                        }
                        i18 = i46;
                        int i49 = i17;
                        i19 = i48;
                        int i50 = i27;
                        i20 = mode2;
                        i21 = i30;
                        i22 = virtualChildCount;
                        iMax2 = i28;
                        i23 = iP;
                        y(viewS4, iP, i10, 0, i11, f13 == 0.0f ? this.mTotalLength : 0);
                        if (i49 != Integer.MIN_VALUE) {
                            ((LinearLayout.LayoutParams) layoutParams3).height = i49;
                        }
                        int measuredHeight2 = viewS4.getMeasuredHeight();
                        int i51 = this.mTotalLength;
                        view = viewS4;
                        this.mTotalLength = Math.max(i51, i51 + measuredHeight2 + ((LinearLayout.LayoutParams) layoutParams3).topMargin + ((LinearLayout.LayoutParams) layoutParams3).bottomMargin + r(view));
                        iMax3 = z11 ? Math.max(measuredHeight2, i50) : i50;
                    }
                    if (i24 >= 0 && i24 == i23 + 1) {
                        this.mBaselineChildTop = this.mTotalLength;
                    }
                    if (i23 < i24 && ((LinearLayout.LayoutParams) layoutParams3).weight > 0.0f) {
                        throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                    }
                    if (mode == 1073741824 || ((LinearLayout.LayoutParams) layoutParams3).width != -1) {
                        z10 = false;
                    } else {
                        z10 = true;
                        z13 = true;
                    }
                    int i52 = ((LinearLayout.LayoutParams) layoutParams3).leftMargin + ((LinearLayout.LayoutParams) layoutParams3).rightMargin;
                    int measuredWidth2 = view.getMeasuredWidth() + i52;
                    int iMax8 = Math.max(i19, measuredWidth2);
                    int iCombineMeasuredStates2 = View.combineMeasuredStates(i18, view.getMeasuredState());
                    z14 = z14 && ((LinearLayout.LayoutParams) layoutParams3).width == -1;
                    if (((LinearLayout.LayoutParams) layoutParams3).weight > 0.0f) {
                        if (!z10) {
                            i52 = measuredWidth2;
                        }
                        iMax4 = Math.max(i21, i52);
                    } else {
                        if (!z10) {
                            i52 = measuredWidth2;
                        }
                        iMax2 = Math.max(iMax2, i52);
                        iMax4 = i21;
                    }
                    int iP3 = p(view, i23) + i23;
                    i27 = iMax3;
                    i26 = iMax8;
                    f = f13;
                    i28 = iMax2;
                    iP = iP3;
                    i25 = iCombineMeasuredStates2;
                }
            }
            iP++;
            virtualChildCount = i22;
            mode2 = i20;
        }
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.View
    public int getBaseline() {
        int i10;
        if (this.mBaselineAlignedChildIndex < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i11 = this.mBaselineAlignedChildIndex;
        if (childCount <= i11) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(i11);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.mBaselineAlignedChildIndex == 0) {
                return -1;
            }
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
        int bottom = this.mBaselineChildTop;
        if (this.mOrientation == 1 && (i10 = this.mGravity & 112) != 48) {
            if (i10 == 16) {
                bottom += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.mTotalLength) / 2;
            } else if (i10 == 80) {
                bottom = ((getBottom() - getTop()) - getPaddingBottom()) - this.mTotalLength;
            }
        }
        return bottom + ((LinearLayout.LayoutParams) ((LayoutParams) childAt.getLayoutParams())).topMargin + baseline;
    }

    void i(Canvas canvas, int i10) {
        this.mDivider.setBounds(getPaddingLeft() + this.mDividerPadding, i10, (getWidth() - getPaddingRight()) - this.mDividerPadding, this.mDividerHeight + i10);
        this.mDivider.draw(canvas);
    }

    void j(Canvas canvas, int i10) {
        this.mDivider.setBounds(i10, getPaddingTop() + this.mDividerPadding, this.mDividerWidth + i10, (getHeight() - getPaddingBottom()) - this.mDividerPadding);
        this.mDivider.draw(canvas);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public LayoutParams generateDefaultLayoutParams() {
        int i10 = this.mOrientation;
        if (i10 == 0) {
            return new LayoutParams(-2, -2);
        }
        if (i10 == 1) {
            return new LayoutParams(-1, -2);
        }
        return null;
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.mDivider == null) {
            return;
        }
        if (this.mOrientation == 1) {
            h(canvas);
        } else {
            g(canvas);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        if (this.mOrientation == 1) {
            x(i10, i11, i12, i13);
        } else {
            w(i10, i11, i12, i13);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        if (this.mOrientation == 1) {
            B(i10, i11);
        } else {
            z(i10, i11);
        }
    }

    public void setBaselineAlignedChildIndex(int i10) {
        if (i10 >= 0 && i10 < getChildCount()) {
            this.mBaselineAlignedChildIndex = i10;
            return;
        }
        throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.mDivider) {
            return;
        }
        this.mDivider = drawable;
        if (drawable != null) {
            this.mDividerWidth = drawable.getIntrinsicWidth();
            this.mDividerHeight = drawable.getIntrinsicHeight();
        } else {
            this.mDividerWidth = 0;
            this.mDividerHeight = 0;
        }
        setWillNotDraw(drawable == null);
        requestLayout();
    }

    public void setGravity(@GravityInt int i10) {
        if (this.mGravity != i10) {
            if ((8388615 & i10) == 0) {
                i10 |= GravityCompat.START;
            }
            if ((i10 & 112) == 0) {
                i10 |= 48;
            }
            this.mGravity = i10;
            requestLayout();
        }
    }

    public void setOrientation(int i10) {
        if (this.mOrientation != i10) {
            this.mOrientation = i10;
            requestLayout();
        }
    }

    public void setShowDividers(int i10) {
        if (i10 != this.mShowDividers) {
            requestLayout();
        }
        this.mShowDividers = i10;
    }

    public void setVerticalGravity(int i10) {
        int i11 = i10 & 112;
        int i12 = this.mGravity;
        if ((i12 & 112) != i11) {
            this.mGravity = i11 | (i12 & (-113));
            requestLayout();
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:33:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:35:0x00be  */
    /* JADX WARN: Code duplicated, block: B:37:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:39:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:41:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:42:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:44:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:48:0x0100  */
    void w(int i10, int i11, int i12, int i13) {
        int paddingLeft;
        int i14;
        int i15;
        boolean z6;
        int baseline;
        int i16;
        int i17;
        int measuredHeight;
        boolean zB = ViewUtils.b(this);
        int paddingTop = getPaddingTop();
        int i18 = i13 - i11;
        int paddingBottom = i18 - getPaddingBottom();
        int paddingBottom2 = (i18 - paddingTop) - getPaddingBottom();
        int virtualChildCount = getVirtualChildCount();
        int i19 = this.mGravity;
        int i20 = i19 & 112;
        boolean z10 = this.mBaselineAligned;
        int[] iArr = this.mMaxAscent;
        int[] iArr2 = this.mMaxDescent;
        int iB = GravityCompat.b(8388615 & i19, ViewCompat.D(this));
        boolean z11 = true;
        if (iB != 1) {
            paddingLeft = iB != 5 ? getPaddingLeft() : ((getPaddingLeft() + i12) - i10) - this.mTotalLength;
        } else {
            paddingLeft = getPaddingLeft() + (((i12 - i10) - this.mTotalLength) / 2);
        }
        if (zB) {
            i14 = virtualChildCount - 1;
            i15 = -1;
        } else {
            i14 = 0;
            i15 = 1;
        }
        int iP = 0;
        while (iP < virtualChildCount) {
            int i21 = i14 + (i15 * iP);
            View viewS = s(i21);
            if (viewS == null) {
                paddingLeft += A(i21);
                z6 = z11;
            } else {
                if (viewS.getVisibility() != 8) {
                    int measuredWidth = viewS.getMeasuredWidth();
                    int measuredHeight2 = viewS.getMeasuredHeight();
                    LayoutParams layoutParams = (LayoutParams) viewS.getLayoutParams();
                    int i22 = iP;
                    if (z10) {
                        virtualChildCount = virtualChildCount;
                        baseline = ((LinearLayout.LayoutParams) layoutParams).height != -1 ? viewS.getBaseline() : -1;
                        i16 = ((LinearLayout.LayoutParams) layoutParams).gravity;
                        if (i16 < 0) {
                            i16 = i20;
                        }
                        i17 = i16 & 112;
                        i20 = i20;
                        if (i17 != 16) {
                            if (i17 != 48) {
                                measuredHeight = ((LinearLayout.LayoutParams) layoutParams).topMargin + paddingTop;
                                if (baseline != -1) {
                                    z6 = true;
                                    measuredHeight += iArr[1] - baseline;
                                }
                            } else if (i17 != 80) {
                                measuredHeight = paddingTop;
                            } else {
                                measuredHeight = (paddingBottom - measuredHeight2) - ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                                if (baseline != -1) {
                                    measuredHeight -= iArr2[2] - (viewS.getMeasuredHeight() - baseline);
                                }
                            }
                            z6 = true;
                        } else {
                            z6 = true;
                            measuredHeight = ((((paddingBottom2 - measuredHeight2) / 2) + paddingTop) + ((LinearLayout.LayoutParams) layoutParams).topMargin) - ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                        }
                        if (t(i21)) {
                            paddingLeft += this.mDividerWidth;
                        }
                        int i23 = ((LinearLayout.LayoutParams) layoutParams).leftMargin + paddingLeft;
                        paddingTop = paddingTop;
                        C(viewS, i23 + q(viewS), measuredHeight, measuredWidth, measuredHeight2);
                        int iR = i23 + measuredWidth + ((LinearLayout.LayoutParams) layoutParams).rightMargin + r(viewS);
                        iP = i22 + p(viewS, i21);
                        paddingLeft = iR;
                    } else {
                        virtualChildCount = virtualChildCount;
                    }
                    i16 = ((LinearLayout.LayoutParams) layoutParams).gravity;
                    if (i16 < 0) {
                        i16 = i20;
                    }
                    i17 = i16 & 112;
                    i20 = i20;
                    if (i17 != 16) {
                        if (i17 != 48) {
                            measuredHeight = ((LinearLayout.LayoutParams) layoutParams).topMargin + paddingTop;
                            if (baseline != -1) {
                                z6 = true;
                                measuredHeight += iArr[1] - baseline;
                            }
                        } else if (i17 != 80) {
                            measuredHeight = paddingTop;
                        } else {
                            measuredHeight = (paddingBottom - measuredHeight2) - ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                            if (baseline != -1) {
                                measuredHeight -= iArr2[2] - (viewS.getMeasuredHeight() - baseline);
                            }
                        }
                        z6 = true;
                    } else {
                        z6 = true;
                        measuredHeight = ((((paddingBottom2 - measuredHeight2) / 2) + paddingTop) + ((LinearLayout.LayoutParams) layoutParams).topMargin) - ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                    }
                    if (t(i21)) {
                        paddingLeft += this.mDividerWidth;
                    }
                    int i24 = ((LinearLayout.LayoutParams) layoutParams).leftMargin + paddingLeft;
                    paddingTop = paddingTop;
                    C(viewS, i24 + q(viewS), measuredHeight, measuredWidth, measuredHeight2);
                    int iR2 = i24 + measuredWidth + ((LinearLayout.LayoutParams) layoutParams).rightMargin + r(viewS);
                    iP = i22 + p(viewS, i21);
                    paddingLeft = iR2;
                } else {
                    z6 = true;
                }
                iP++;
                virtualChildCount = virtualChildCount;
                i20 = i20;
                z11 = z6;
                paddingTop = paddingTop;
            }
            iP++;
            virtualChildCount = virtualChildCount;
            i20 = i20;
            z11 = z6;
            paddingTop = paddingTop;
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00a1  */
    void x(int i10, int i11, int i12, int i13) {
        int paddingTop;
        int i14;
        int i15;
        int i16;
        int i17;
        int paddingLeft = getPaddingLeft();
        int i18 = i12 - i10;
        int paddingRight = i18 - getPaddingRight();
        int paddingRight2 = (i18 - paddingLeft) - getPaddingRight();
        int virtualChildCount = getVirtualChildCount();
        int i19 = this.mGravity;
        int i20 = i19 & 112;
        int i21 = i19 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i20 != 16) {
            paddingTop = i20 != 80 ? getPaddingTop() : ((getPaddingTop() + i13) - i11) - this.mTotalLength;
        } else {
            paddingTop = getPaddingTop() + (((i13 - i11) - this.mTotalLength) / 2);
        }
        int iP = 0;
        while (iP < virtualChildCount) {
            View viewS = s(iP);
            if (viewS == null) {
                paddingTop += A(iP);
            } else {
                if (viewS.getVisibility() != 8) {
                    int measuredWidth = viewS.getMeasuredWidth();
                    int measuredHeight = viewS.getMeasuredHeight();
                    LayoutParams layoutParams = (LayoutParams) viewS.getLayoutParams();
                    int i22 = ((LinearLayout.LayoutParams) layoutParams).gravity;
                    if (i22 < 0) {
                        i22 = i21;
                    }
                    int iB = GravityCompat.b(i22, ViewCompat.D(this)) & 7;
                    if (iB != 1) {
                        if (iB != 5) {
                            i16 = ((LinearLayout.LayoutParams) layoutParams).leftMargin + paddingLeft;
                        } else {
                            i14 = paddingRight - measuredWidth;
                            i15 = ((LinearLayout.LayoutParams) layoutParams).rightMargin;
                        }
                        int i23 = i16;
                        if (t(iP)) {
                            paddingTop += this.mDividerHeight;
                        }
                        int i24 = paddingTop + ((LinearLayout.LayoutParams) layoutParams).topMargin;
                        C(viewS, i23, i24 + q(viewS), measuredWidth, measuredHeight);
                        int iR = i24 + measuredHeight + ((LinearLayout.LayoutParams) layoutParams).bottomMargin + r(viewS);
                        iP += p(viewS, iP);
                        paddingTop = iR;
                        i17 = 1;
                    } else {
                        i14 = ((paddingRight2 - measuredWidth) / 2) + paddingLeft + ((LinearLayout.LayoutParams) layoutParams).leftMargin;
                        i15 = ((LinearLayout.LayoutParams) layoutParams).rightMargin;
                    }
                    i16 = i14 - i15;
                    int i25 = i16;
                    if (t(iP)) {
                        paddingTop += this.mDividerHeight;
                    }
                    int i26 = paddingTop + ((LinearLayout.LayoutParams) layoutParams).topMargin;
                    C(viewS, i25, i26 + q(viewS), measuredWidth, measuredHeight);
                    int iR2 = i26 + measuredHeight + ((LinearLayout.LayoutParams) layoutParams).bottomMargin + r(viewS);
                    iP += p(viewS, iP);
                    paddingTop = iR2;
                    i17 = 1;
                }
                iP += i17;
            }
            i17 = 1;
            iP += i17;
        }
    }

    /* JADX WARN: Code duplicated, block: B:200:0x045b  */
    /* JADX WARN: Code duplicated, block: B:60:0x0175  */
    /* JADX WARN: Code duplicated, block: B:67:0x0197  */
    /* JADX WARN: Code duplicated, block: B:74:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:77:0x01cb A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:79:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:82:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:85:0x01e0  */
    void z(int i10, int i11) {
        int[] iArr;
        int iCombineMeasuredStates;
        int i12;
        int iMax;
        int i13;
        int i14;
        int baseline;
        int i15;
        int i16;
        byte b7;
        int i17;
        int i18;
        boolean z6;
        boolean z10;
        View view;
        int i19;
        boolean z11;
        int i20;
        int measuredHeight;
        int iP;
        int baseline2;
        int i21;
        this.mTotalLength = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        if (this.mMaxAscent == null || this.mMaxDescent == null) {
            this.mMaxAscent = new int[4];
            this.mMaxDescent = new int[4];
        }
        int[] iArr2 = this.mMaxAscent;
        int[] iArr3 = this.mMaxDescent;
        iArr2[3] = -1;
        iArr2[2] = -1;
        iArr2[1] = -1;
        iArr2[0] = -1;
        iArr3[3] = -1;
        iArr3[2] = -1;
        iArr3[1] = -1;
        iArr3[0] = -1;
        boolean z12 = this.mBaselineAligned;
        boolean z13 = this.mUseLargestChild;
        int i22 = 1073741824;
        boolean z14 = mode == 1073741824;
        int iP2 = 0;
        int iMax2 = 0;
        int iMax3 = 0;
        int iMax4 = 0;
        int iMax5 = 0;
        boolean z15 = false;
        int iCombineMeasuredStates2 = 0;
        boolean z16 = false;
        boolean z17 = true;
        float f = 0.0f;
        while (true) {
            iArr = iArr3;
            if (iP2 >= virtualChildCount) {
                break;
            }
            View viewS = s(iP2);
            if (viewS == null) {
                this.mTotalLength += A(iP2);
            } else {
                if (viewS.getVisibility() == 8) {
                    iP2 += p(viewS, iP2);
                } else {
                    if (t(iP2)) {
                        this.mTotalLength += this.mDividerWidth;
                    }
                    LayoutParams layoutParams = (LayoutParams) viewS.getLayoutParams();
                    float f6 = ((LinearLayout.LayoutParams) layoutParams).weight;
                    float f7 = f + f6;
                    if (mode == i22 && ((LinearLayout.LayoutParams) layoutParams).width == 0 && f6 > 0.0f) {
                        if (z14) {
                            this.mTotalLength += ((LinearLayout.LayoutParams) layoutParams).leftMargin + ((LinearLayout.LayoutParams) layoutParams).rightMargin;
                        } else {
                            int i23 = this.mTotalLength;
                            this.mTotalLength = Math.max(i23, ((LinearLayout.LayoutParams) layoutParams).leftMargin + i23 + ((LinearLayout.LayoutParams) layoutParams).rightMargin);
                        }
                        if (z12) {
                            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                            viewS.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                            i18 = iP2;
                            z6 = z13;
                            z10 = z12;
                            view = viewS;
                        } else {
                            i18 = iP2;
                            z6 = z13;
                            z10 = z12;
                            view = viewS;
                            z15 = true;
                            i19 = 1073741824;
                        }
                        if (mode2 == i19 && ((LinearLayout.LayoutParams) layoutParams).height == -1) {
                            z11 = true;
                            z16 = true;
                        } else {
                            z11 = false;
                        }
                        i20 = ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                        measuredHeight = view.getMeasuredHeight() + i20;
                        iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, view.getMeasuredState());
                        if (z10 && (baseline2 = view.getBaseline()) != -1) {
                            i21 = ((LinearLayout.LayoutParams) layoutParams).gravity;
                            if (i21 < 0) {
                                i21 = this.mGravity;
                            }
                            int i24 = (((i21 & 112) >> 4) & (-2)) >> 1;
                            iArr2[i24] = Math.max(iArr2[i24], baseline2);
                            iArr[i24] = Math.max(iArr[i24], measuredHeight - baseline2);
                        }
                        iMax3 = Math.max(iMax3, measuredHeight);
                        if (z17 || ((LinearLayout.LayoutParams) layoutParams).height != -1) {
                            z17 = false;
                        } else {
                            z17 = true;
                        }
                        if (((LinearLayout.LayoutParams) layoutParams).weight > 0.0f) {
                            if (!z11) {
                                i20 = measuredHeight;
                            }
                            iMax5 = Math.max(iMax5, i20);
                        } else {
                            int i25 = iMax5;
                            if (!z11) {
                                i20 = measuredHeight;
                            }
                            iMax4 = Math.max(iMax4, i20);
                            iMax5 = i25;
                        }
                        int i26 = i18;
                        iP = p(view, i26) + i26;
                        f = f7;
                    } else {
                        if (((LinearLayout.LayoutParams) layoutParams).width != 0 || f6 <= 0.0f) {
                            b7 = -2;
                            i17 = Integer.MIN_VALUE;
                        } else {
                            b7 = -2;
                            ((LinearLayout.LayoutParams) layoutParams).width = -2;
                            i17 = 0;
                        }
                        i18 = iP2;
                        int i27 = i17;
                        z6 = z13;
                        z10 = z12;
                        y(viewS, i18, i10, f7 == 0.0f ? this.mTotalLength : 0, i11, 0);
                        if (i27 != Integer.MIN_VALUE) {
                            ((LinearLayout.LayoutParams) layoutParams).width = i27;
                        }
                        int measuredWidth = viewS.getMeasuredWidth();
                        if (z14) {
                            view = viewS;
                            this.mTotalLength += ((LinearLayout.LayoutParams) layoutParams).leftMargin + measuredWidth + ((LinearLayout.LayoutParams) layoutParams).rightMargin + r(view);
                        } else {
                            view = viewS;
                            int i28 = this.mTotalLength;
                            this.mTotalLength = Math.max(i28, i28 + measuredWidth + ((LinearLayout.LayoutParams) layoutParams).leftMargin + ((LinearLayout.LayoutParams) layoutParams).rightMargin + r(view));
                        }
                        if (z6) {
                            iMax2 = Math.max(measuredWidth, iMax2);
                        }
                    }
                    i19 = 1073741824;
                    if (mode2 == i19) {
                        z11 = false;
                    } else {
                        z11 = false;
                    }
                    i20 = ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                    measuredHeight = view.getMeasuredHeight() + i20;
                    iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, view.getMeasuredState());
                    if (z10) {
                        i21 = ((LinearLayout.LayoutParams) layoutParams).gravity;
                        if (i21 < 0) {
                            i21 = this.mGravity;
                        }
                        int i29 = (((i21 & 112) >> 4) & (-2)) >> 1;
                        iArr2[i29] = Math.max(iArr2[i29], baseline2);
                        iArr[i29] = Math.max(iArr[i29], measuredHeight - baseline2);
                    }
                    iMax3 = Math.max(iMax3, measuredHeight);
                    if (z17) {
                        z17 = false;
                    } else {
                        z17 = false;
                    }
                    if (((LinearLayout.LayoutParams) layoutParams).weight > 0.0f) {
                        if (!z11) {
                            i20 = measuredHeight;
                        }
                        iMax5 = Math.max(iMax5, i20);
                    } else {
                        int i210 = iMax5;
                        if (!z11) {
                            i20 = measuredHeight;
                        }
                        iMax4 = Math.max(iMax4, i20);
                        iMax5 = i210;
                    }
                    int i211 = i18;
                    iP = p(view, i211) + i211;
                    f = f7;
                }
                int i30 = iP + 1;
                iArr3 = iArr;
                z13 = z6;
                z12 = z10;
                i22 = i19;
                iP2 = i30;
            }
            z6 = z13;
            z10 = z12;
            int i31 = i22;
            iP = iP2;
            i19 = i31;
            int i32 = iP + 1;
            iArr3 = iArr;
            z13 = z6;
            z12 = z10;
            i22 = i19;
            iP2 = i32;
        }
        boolean z18 = z13;
        boolean z19 = z12;
        int i33 = iMax3;
        int i34 = iMax4;
        int i35 = iMax5;
        int i36 = iCombineMeasuredStates2;
        if (this.mTotalLength > 0 && t(virtualChildCount)) {
            this.mTotalLength += this.mDividerWidth;
        }
        int i37 = iArr2[1];
        int iMax6 = (i37 == -1 && iArr2[0] == -1 && iArr2[2] == -1 && iArr2[3] == -1) ? i33 : Math.max(i33, Math.max(iArr2[3], Math.max(iArr2[0], Math.max(i37, iArr2[2]))) + Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))));
        if (z18 && (mode == Integer.MIN_VALUE || mode == 0)) {
            this.mTotalLength = 0;
            int iP3 = 0;
            while (iP3 < virtualChildCount) {
                View viewS2 = s(iP3);
                if (viewS2 == null) {
                    this.mTotalLength += A(iP3);
                } else if (viewS2.getVisibility() == 8) {
                    iP3 += p(viewS2, iP3);
                } else {
                    LayoutParams layoutParams2 = (LayoutParams) viewS2.getLayoutParams();
                    if (z14) {
                        this.mTotalLength += ((LinearLayout.LayoutParams) layoutParams2).leftMargin + iMax2 + ((LinearLayout.LayoutParams) layoutParams2).rightMargin + r(viewS2);
                    } else {
                        int i38 = this.mTotalLength;
                        this.mTotalLength = Math.max(i38, i38 + iMax2 + ((LinearLayout.LayoutParams) layoutParams2).leftMargin + ((LinearLayout.LayoutParams) layoutParams2).rightMargin + r(viewS2));
                    }
                    iP3++;
                    iMax6 = iMax6;
                }
                iP3++;
                iMax6 = iMax6;
            }
        }
        int iMax7 = iMax6;
        int paddingLeft = this.mTotalLength + getPaddingLeft() + getPaddingRight();
        this.mTotalLength = paddingLeft;
        int iResolveSizeAndState = View.resolveSizeAndState(Math.max(paddingLeft, getSuggestedMinimumWidth()), i10, 0);
        int i39 = (16777215 & iResolveSizeAndState) - this.mTotalLength;
        if (z15 || (i39 != 0 && f > 0.0f)) {
            float f10 = this.mWeightSum;
            if (f10 > 0.0f) {
                f = f10;
            }
            iArr2[3] = -1;
            iArr2[2] = -1;
            iArr2[1] = -1;
            iArr2[0] = -1;
            iArr[3] = -1;
            iArr[2] = -1;
            iArr[1] = -1;
            iArr[0] = -1;
            this.mTotalLength = 0;
            int i40 = i34;
            int iMax8 = -1;
            iCombineMeasuredStates = i36;
            int i41 = 0;
            while (i41 < virtualChildCount) {
                View viewS3 = s(i41);
                if (viewS3 == null || viewS3.getVisibility() == 8) {
                    i13 = i39;
                    virtualChildCount = virtualChildCount;
                } else {
                    LayoutParams layoutParams3 = (LayoutParams) viewS3.getLayoutParams();
                    float f11 = ((LinearLayout.LayoutParams) layoutParams3).weight;
                    if (f11 > 0.0f) {
                        int i42 = (int) ((i39 * f11) / f);
                        float f12 = f - f11;
                        int i43 = i39 - i42;
                        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i11, getPaddingTop() + getPaddingBottom() + ((LinearLayout.LayoutParams) layoutParams3).topMargin + ((LinearLayout.LayoutParams) layoutParams3).bottomMargin, ((LinearLayout.LayoutParams) layoutParams3).height);
                        if (((LinearLayout.LayoutParams) layoutParams3).width == 0) {
                            i16 = 1073741824;
                            if (mode == 1073741824) {
                                if (i42 <= 0) {
                                    i42 = 0;
                                }
                                viewS3.measure(View.MeasureSpec.makeMeasureSpec(i42, 1073741824), childMeasureSpec);
                            }
                            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, viewS3.getMeasuredState() & ViewCompat.MEASURED_STATE_MASK);
                            f = f12;
                            i13 = i43;
                        } else {
                            i16 = 1073741824;
                        }
                        int measuredWidth2 = viewS3.getMeasuredWidth() + i42;
                        if (measuredWidth2 < 0) {
                            measuredWidth2 = 0;
                        }
                        viewS3.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth2, i16), childMeasureSpec);
                        iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, viewS3.getMeasuredState() & ViewCompat.MEASURED_STATE_MASK);
                        f = f12;
                        i13 = i43;
                    } else {
                        i13 = i39;
                    }
                    if (z14) {
                        this.mTotalLength += viewS3.getMeasuredWidth() + ((LinearLayout.LayoutParams) layoutParams3).leftMargin + ((LinearLayout.LayoutParams) layoutParams3).rightMargin + r(viewS3);
                    } else {
                        int i44 = this.mTotalLength;
                        this.mTotalLength = Math.max(i44, viewS3.getMeasuredWidth() + i44 + ((LinearLayout.LayoutParams) layoutParams3).leftMargin + ((LinearLayout.LayoutParams) layoutParams3).rightMargin + r(viewS3));
                    }
                    boolean z20 = mode2 != 1073741824 && ((LinearLayout.LayoutParams) layoutParams3).height == -1;
                    int i45 = ((LinearLayout.LayoutParams) layoutParams3).topMargin + ((LinearLayout.LayoutParams) layoutParams3).bottomMargin;
                    int measuredHeight2 = viewS3.getMeasuredHeight() + i45;
                    iMax8 = Math.max(iMax8, measuredHeight2);
                    if (!z20) {
                        i45 = measuredHeight2;
                    }
                    int iMax9 = Math.max(i40, i45);
                    if (z17) {
                        i14 = -1;
                        boolean z21 = ((LinearLayout.LayoutParams) layoutParams3).height == -1;
                        if (z19 && (baseline = viewS3.getBaseline()) != i14) {
                            i15 = ((LinearLayout.LayoutParams) layoutParams3).gravity;
                            if (i15 < 0) {
                                i15 = this.mGravity;
                            }
                            int i46 = (((i15 & 112) >> 4) & (-2)) >> 1;
                            iArr2[i46] = Math.max(iArr2[i46], baseline);
                            iArr[i46] = Math.max(iArr[i46], measuredHeight2 - baseline);
                        }
                        z17 = z21;
                        i40 = iMax9;
                        f = f;
                    } else {
                        i14 = -1;
                    }
                    if (z19) {
                        i15 = ((LinearLayout.LayoutParams) layoutParams3).gravity;
                        if (i15 < 0) {
                            i15 = this.mGravity;
                        }
                        int i47 = (((i15 & 112) >> 4) & (-2)) >> 1;
                        iArr2[i47] = Math.max(iArr2[i47], baseline);
                        iArr[i47] = Math.max(iArr[i47], measuredHeight2 - baseline);
                    }
                    z17 = z21;
                    i40 = iMax9;
                    f = f;
                }
                i41++;
                i39 = i13;
                virtualChildCount = virtualChildCount;
            }
            i12 = virtualChildCount;
            this.mTotalLength += getPaddingLeft() + getPaddingRight();
            int i48 = iArr2[1];
            iMax7 = (i48 == -1 && iArr2[0] == -1 && iArr2[2] == -1 && iArr2[3] == -1) ? iMax8 : Math.max(iMax8, Math.max(iArr2[3], Math.max(iArr2[0], Math.max(i48, iArr2[2]))) + Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))));
            iMax = i40;
        } else {
            iMax = Math.max(i34, i35);
            if (z18 && mode != 1073741824) {
                for (int i49 = 0; i49 < virtualChildCount; i49++) {
                    View viewS4 = s(i49);
                    if (viewS4 != null && viewS4.getVisibility() != 8 && ((LinearLayout.LayoutParams) ((LayoutParams) viewS4.getLayoutParams())).weight > 0.0f) {
                        viewS4.measure(View.MeasureSpec.makeMeasureSpec(iMax2, 1073741824), View.MeasureSpec.makeMeasureSpec(viewS4.getMeasuredHeight(), 1073741824));
                    }
                }
            }
            i12 = virtualChildCount;
            iCombineMeasuredStates = i36;
        }
        if (z17 || mode2 == 1073741824) {
            iMax = iMax7;
        }
        setMeasuredDimension(iResolveSizeAndState | ((-16777216) & iCombineMeasuredStates), View.resolveSizeAndState(Math.max(iMax + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i11, iCombineMeasuredStates << 16));
        if (z16) {
            k(i12, i10);
        }
    }

    public LinearLayoutCompat(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mBaselineAligned = true;
        this.mBaselineAlignedChildIndex = -1;
        this.mBaselineChildTop = 0;
        this.mGravity = 8388659;
        int[] iArr = androidx.appcompat.R.styleable.LinearLayoutCompat;
        TintTypedArray tintTypedArrayV = TintTypedArray.v(context, attributeSet, iArr, i10, 0);
        ViewCompat.s0(this, context, iArr, attributeSet, tintTypedArrayV.r(), i10, 0);
        int iK = tintTypedArrayV.k(androidx.appcompat.R.styleable.LinearLayoutCompat_android_orientation, -1);
        if (iK >= 0) {
            setOrientation(iK);
        }
        int iK2 = tintTypedArrayV.k(androidx.appcompat.R.styleable.LinearLayoutCompat_android_gravity, -1);
        if (iK2 >= 0) {
            setGravity(iK2);
        }
        boolean zA = tintTypedArrayV.a(androidx.appcompat.R.styleable.LinearLayoutCompat_android_baselineAligned, true);
        if (!zA) {
            setBaselineAligned(zA);
        }
        this.mWeightSum = tintTypedArrayV.i(androidx.appcompat.R.styleable.LinearLayoutCompat_android_weightSum, -1.0f);
        this.mBaselineAlignedChildIndex = tintTypedArrayV.k(androidx.appcompat.R.styleable.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.mUseLargestChild = tintTypedArrayV.a(androidx.appcompat.R.styleable.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(tintTypedArrayV.g(androidx.appcompat.R.styleable.LinearLayoutCompat_divider));
        this.mShowDividers = tintTypedArrayV.k(androidx.appcompat.R.styleable.LinearLayoutCompat_showDividers, 0);
        this.mDividerPadding = tintTypedArrayV.f(androidx.appcompat.R.styleable.LinearLayoutCompat_dividerPadding, 0);
        tintTypedArrayV.w();
    }

    private void k(int i10, int i11) {
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
        for (int i12 = 0; i12 < i10; i12++) {
            View viewS = s(i12);
            if (viewS.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) viewS.getLayoutParams();
                if (((LinearLayout.LayoutParams) layoutParams).height == -1) {
                    int i13 = ((LinearLayout.LayoutParams) layoutParams).width;
                    ((LinearLayout.LayoutParams) layoutParams).width = viewS.getMeasuredWidth();
                    measureChildWithMargins(viewS, i11, 0, iMakeMeasureSpec, 0);
                    ((LinearLayout.LayoutParams) layoutParams).width = i13;
                }
            }
        }
    }

    private void l(int i10, int i11) {
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i12 = 0; i12 < i10; i12++) {
            View viewS = s(i12);
            if (viewS.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) viewS.getLayoutParams();
                if (((LinearLayout.LayoutParams) layoutParams).width == -1) {
                    int i13 = ((LinearLayout.LayoutParams) layoutParams).height;
                    ((LinearLayout.LayoutParams) layoutParams).height = viewS.getMeasuredHeight();
                    measureChildWithMargins(viewS, iMakeMeasureSpec, 0, i11, 0);
                    ((LinearLayout.LayoutParams) layoutParams).height = i13;
                }
            }
        }
    }

    void g(Canvas canvas) {
        int right;
        int left;
        int i10;
        int left2;
        int virtualChildCount = getVirtualChildCount();
        boolean zB = ViewUtils.b(this);
        for (int i11 = 0; i11 < virtualChildCount; i11++) {
            View viewS = s(i11);
            if (viewS != null && viewS.getVisibility() != 8 && t(i11)) {
                LayoutParams layoutParams = (LayoutParams) viewS.getLayoutParams();
                if (zB) {
                    left2 = viewS.getRight() + ((LinearLayout.LayoutParams) layoutParams).rightMargin;
                } else {
                    left2 = (viewS.getLeft() - ((LinearLayout.LayoutParams) layoutParams).leftMargin) - this.mDividerWidth;
                }
                j(canvas, left2);
            }
        }
        if (t(virtualChildCount)) {
            View viewS2 = s(virtualChildCount - 1);
            if (viewS2 == null) {
                if (zB) {
                    right = getPaddingLeft();
                } else {
                    left = getWidth() - getPaddingRight();
                    i10 = this.mDividerWidth;
                    right = left - i10;
                }
            } else {
                LayoutParams layoutParams2 = (LayoutParams) viewS2.getLayoutParams();
                if (zB) {
                    left = viewS2.getLeft() - ((LinearLayout.LayoutParams) layoutParams2).leftMargin;
                    i10 = this.mDividerWidth;
                    right = left - i10;
                } else {
                    right = viewS2.getRight() + ((LinearLayout.LayoutParams) layoutParams2).rightMargin;
                }
            }
            j(canvas, right);
        }
    }

    int getVirtualChildCount() {
        return getChildCount();
    }

    void h(Canvas canvas) {
        int bottom;
        int virtualChildCount = getVirtualChildCount();
        for (int i10 = 0; i10 < virtualChildCount; i10++) {
            View viewS = s(i10);
            if (viewS != null && viewS.getVisibility() != 8 && t(i10)) {
                i(canvas, (viewS.getTop() - ((LinearLayout.LayoutParams) ((LayoutParams) viewS.getLayoutParams())).topMargin) - this.mDividerHeight);
            }
        }
        if (t(virtualChildCount)) {
            View viewS2 = s(virtualChildCount - 1);
            if (viewS2 == null) {
                bottom = (getHeight() - getPaddingBottom()) - this.mDividerHeight;
            } else {
                bottom = viewS2.getBottom() + ((LinearLayout.LayoutParams) ((LayoutParams) viewS2.getLayoutParams())).bottomMargin;
            }
            i(canvas, bottom);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(ACCESSIBILITY_CLASS_NAME);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(ACCESSIBILITY_CLASS_NAME);
    }

    View s(int i10) {
        return getChildAt(i10);
    }

    public void setHorizontalGravity(int i10) {
        int i11 = i10 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        int i12 = this.mGravity;
        if ((8388615 & i12) != i11) {
            this.mGravity = i11 | ((-8388616) & i12);
            requestLayout();
        }
    }
}
