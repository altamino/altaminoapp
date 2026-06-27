package com.narvii.util.layouts;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.lib.R;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class NVFlowLayout extends ViewGroup {
    private static final int CENTER = 0;
    private static final int LEFT = -1;
    private static final int RIGHT = 1;
    private static final String TAG = "NVFlowLayout";
    protected List<View> layoutViews;
    private List<View> lineViews;
    protected List<List<View>> mAllViews;
    private int mGravity;
    protected List<Integer> mLineHeight;
    protected List<Integer> mLineWidth;
    protected int maxTagCount;
    protected int maxTagLines;
    protected View moreView;
    public boolean needShowMore;
    protected boolean showEndItem;
    public boolean showMore;
    protected boolean showStartItem;

    public NVFlowLayout(Context context) {
        super(context);
        this.mAllViews = new ArrayList();
        this.mLineHeight = new ArrayList();
        this.mLineWidth = new ArrayList();
        this.lineViews = new ArrayList();
        this.layoutViews = new ArrayList();
    }

    public NVFlowLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mAllViews = new ArrayList();
        this.mLineHeight = new ArrayList();
        this.mLineWidth = new ArrayList();
        this.lineViews = new ArrayList();
        this.layoutViews = new ArrayList();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.NVFlowLayout);
        this.mGravity = typedArrayObtainStyledAttributes.getInt(R.styleable.NVFlowLayout_flow_gravity, 0);
        this.maxTagCount = typedArrayObtainStyledAttributes.getInt(R.styleable.NVFlowLayout_max_tag_count, -1);
        this.maxTagLines = typedArrayObtainStyledAttributes.getInt(R.styleable.NVFlowLayout_max_tag_lines, -1);
        this.showEndItem = typedArrayObtainStyledAttributes.getBoolean(R.styleable.NVFlowLayout_show_end_item, false);
        this.showStartItem = typedArrayObtainStyledAttributes.getBoolean(R.styleable.NVFlowLayout_show_start_item, false);
        typedArrayObtainStyledAttributes.recycle();
    }

    public void setShowMore(boolean z) {
        if (this.showMore == z) {
            return;
        }
        this.showMore = z;
        requestLayout();
    }

    public void setMaxTagLines(int i) {
        this.maxTagLines = i;
        requestLayout();
    }

    public void setGravity(int i) {
        this.mGravity = i;
        invalidate();
    }

    public boolean isShowMore() {
        return this.showMore;
    }

    public void setShowEndItem(boolean z) {
        this.showEndItem = z;
        invalidate();
    }

    public void addMoreView(View view) {
        this.moreView = view;
        addView(this.moreView);
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00bf, code lost:
    
        r16 = r4;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r19, int r20) {
        /*
            Method dump skipped, instructions count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.util.layouts.NVFlowLayout.onMeasure(int, int):void");
    }

    private void setUpLineInfo(boolean z) {
        View view;
        int size;
        this.mAllViews.clear();
        this.mLineHeight.clear();
        this.mLineWidth.clear();
        this.lineViews.clear();
        int measuredWidth = getMeasuredWidth();
        int childCount = getChildCount();
        this.needShowMore = z;
        int width = measuredWidth;
        int i = 0;
        int measuredWidth2 = 0;
        int i2 = 1;
        int iMax = 0;
        while (true) {
            if (i >= childCount) {
                break;
            }
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8 && childAt != this.moreView) {
                int i3 = this.maxTagCount;
                if (i3 > 0 && i >= i3) {
                    break;
                }
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                int measuredWidth3 = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                if (measuredWidth3 + measuredWidth2 + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin > (width - getPaddingLeft()) - getPaddingRight()) {
                    i2++;
                    int i4 = this.maxTagLines;
                    if (i4 <= 0 || i2 <= i4) {
                        this.mLineHeight.add(Integer.valueOf(iMax));
                        this.mAllViews.add(this.lineViews);
                        this.mLineWidth.add(Integer.valueOf(measuredWidth2));
                        iMax = marginLayoutParams.bottomMargin + marginLayoutParams.topMargin + measuredHeight;
                        this.lineViews = new ArrayList();
                        if (z && i2 == this.maxTagLines && this.moreView != null) {
                            width = getWidth() - this.moreView.getMeasuredWidth();
                        }
                        measuredWidth2 = 0;
                    } else if (z && (view = this.moreView) != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                        measuredWidth2 += this.moreView.getMeasuredWidth() + marginLayoutParams2.leftMargin + marginLayoutParams2.rightMargin;
                        iMax = Math.max(iMax, this.moreView.getMeasuredHeight() + marginLayoutParams2.topMargin + marginLayoutParams2.bottomMargin);
                        this.lineViews.add(this.moreView);
                        if (measuredWidth2 > (width - getPaddingLeft()) - getPaddingRight() && (size = this.lineViews.size()) > 1) {
                            int i5 = size - 2;
                            View view2 = this.lineViews.get(i5);
                            if (view2 != null) {
                                ViewGroup.MarginLayoutParams marginLayoutParams3 = (ViewGroup.MarginLayoutParams) this.moreView.getLayoutParams();
                                measuredWidth2 -= (view2.getMeasuredWidth() + marginLayoutParams3.leftMargin) + marginLayoutParams3.rightMargin;
                            }
                            this.lineViews.remove(i5);
                        }
                    } else {
                        this.needShowMore = true;
                    }
                }
                measuredWidth2 += measuredWidth3 + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
                iMax = Math.max(iMax, measuredHeight + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin);
                this.lineViews.add(childAt);
            }
            i++;
        }
        this.mLineHeight.add(Integer.valueOf(iMax));
        this.mLineWidth.add(Integer.valueOf(measuredWidth2));
        this.mAllViews.add(this.lineViews);
        if (!z && this.showMore && this.needShowMore && this.moreView != null) {
            setUpLineInfo(true);
        }
    }

    public boolean showingMoreView() {
        return this.showMore && this.needShowMore && this.moreView != null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View view;
        setUpLineInfo(false);
        int measuredWidth = getMeasuredWidth();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int size = this.mAllViews.size();
        this.layoutViews.clear();
        int i5 = paddingTop;
        int paddingLeft2 = paddingLeft;
        int i6 = 0;
        while (i6 < size) {
            int i7 = this.maxTagLines;
            if (i7 > 0 && i6 >= i7) {
                break;
            }
            this.lineViews = this.mAllViews.get(i6);
            int iIntValue = this.mLineHeight.get(i6).intValue();
            int iIntValue2 = this.mLineWidth.get(i6).intValue();
            int i8 = this.mGravity;
            if (isRtl()) {
                i8 = this.mGravity * (-1);
            }
            int i9 = 1;
            if (i8 == -1) {
                paddingLeft2 = getPaddingLeft();
            } else if (i8 == 0) {
                paddingLeft2 = ((((measuredWidth - getPaddingLeft()) - getPaddingRight()) - iIntValue2) / 2) + getPaddingLeft();
            } else if (i8 == 1) {
                paddingLeft2 = (measuredWidth - iIntValue2) - (isRtl() ? getPaddingLeft() : getPaddingRight());
            }
            int measuredWidth2 = paddingLeft2;
            int i10 = 0;
            while (i10 < this.lineViews.size()) {
                if (isRtl()) {
                    List<View> list = this.lineViews;
                    view = list.get((list.size() - i10) - i9);
                } else {
                    view = this.lineViews.get(i10);
                }
                if (view.getVisibility() != 8) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                    int i11 = marginLayoutParams.leftMargin + measuredWidth2;
                    int i12 = marginLayoutParams.topMargin + i5;
                    int measuredWidth3 = view.getMeasuredWidth() + i11;
                    if (measuredWidth3 > (measuredWidth - getPaddingRight()) - marginLayoutParams.rightMargin) {
                        measuredWidth3 = (measuredWidth - getPaddingRight()) - marginLayoutParams.rightMargin;
                    }
                    view.layout(i11, i12, measuredWidth3, view.getMeasuredHeight() + i12);
                    this.layoutViews.add(view);
                    measuredWidth2 += view.getMeasuredWidth() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
                }
                i10++;
                i9 = 1;
            }
            i5 += iIntValue;
            i6++;
            paddingLeft2 = measuredWidth2;
        }
        for (int i13 = 0; i13 < getChildCount(); i13++) {
            View childAt = getChildAt(i13);
            if (!this.layoutViews.contains(childAt)) {
                childAt.layout(0, 0, 0, 0);
            }
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ViewGroup.MarginLayoutParams(layoutParams);
    }

    private boolean isRtl() {
        return Utils.isRtl();
    }
}
