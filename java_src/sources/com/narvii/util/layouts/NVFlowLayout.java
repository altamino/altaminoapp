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

/* JADX INFO: loaded from: classes4.dex */
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

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    public boolean isShowMore() {
        return this.showMore;
    }

    public boolean showingMoreView() {
        return this.showMore && this.needShowMore && this.moreView != null;
    }

    private void setUpLineInfo(boolean z6) {
        View view;
        int size;
        this.mAllViews.clear();
        this.mLineHeight.clear();
        this.mLineWidth.clear();
        this.lineViews.clear();
        int measuredWidth = getMeasuredWidth();
        int childCount = getChildCount();
        this.needShowMore = z6;
        int measuredWidth2 = 0;
        int iMax = 0;
        int i10 = 1;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8 && childAt != this.moreView) {
                int i12 = this.maxTagCount;
                if (i12 > 0 && i11 >= i12) {
                    break;
                }
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                int measuredWidth3 = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                if (measuredWidth3 + measuredWidth2 + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin > (measuredWidth - getPaddingLeft()) - getPaddingRight()) {
                    i10++;
                    int i13 = this.maxTagLines;
                    if (i13 > 0 && i10 > i13) {
                        if (z6 && (view = this.moreView) != null) {
                            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                            measuredWidth2 += this.moreView.getMeasuredWidth() + marginLayoutParams2.leftMargin + marginLayoutParams2.rightMargin;
                            iMax = Math.max(iMax, this.moreView.getMeasuredHeight() + marginLayoutParams2.topMargin + marginLayoutParams2.bottomMargin);
                            this.lineViews.add(this.moreView);
                            if (measuredWidth2 <= (measuredWidth - getPaddingLeft()) - getPaddingRight() || (size = this.lineViews.size()) <= 1) {
                                break;
                                break;
                            }
                            int i14 = size - 2;
                            View view2 = this.lineViews.get(i14);
                            if (view2 != null) {
                                ViewGroup.MarginLayoutParams marginLayoutParams3 = (ViewGroup.MarginLayoutParams) this.moreView.getLayoutParams();
                                measuredWidth2 -= (view2.getMeasuredWidth() + marginLayoutParams3.leftMargin) + marginLayoutParams3.rightMargin;
                            }
                            this.lineViews.remove(i14);
                            break;
                        }
                        this.needShowMore = true;
                        break;
                    }
                    this.mLineHeight.add(Integer.valueOf(iMax));
                    this.mAllViews.add(this.lineViews);
                    this.mLineWidth.add(Integer.valueOf(measuredWidth2));
                    iMax = marginLayoutParams.bottomMargin + marginLayoutParams.topMargin + measuredHeight;
                    this.lineViews = new ArrayList();
                    if (z6 && i10 == this.maxTagLines && this.moreView != null) {
                        measuredWidth = getWidth() - this.moreView.getMeasuredWidth();
                    }
                    measuredWidth2 = 0;
                }
                measuredWidth2 += measuredWidth3 + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
                iMax = Math.max(iMax, measuredHeight + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin);
                this.lineViews.add(childAt);
            }
        }
        this.mLineHeight.add(Integer.valueOf(iMax));
        this.mLineWidth.add(Integer.valueOf(measuredWidth2));
        this.mAllViews.add(this.lineViews);
        if (!z6 && this.showMore && this.needShowMore && this.moreView != null) {
            setUpLineInfo(true);
        }
    }

    public void addMoreView(View view) {
        this.moreView = view;
        addView(view);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ViewGroup.MarginLayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        View view;
        setUpLineInfo(false);
        int measuredWidth = getMeasuredWidth();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int size = this.mAllViews.size();
        this.layoutViews.clear();
        for (int i14 = 0; i14 < size; i14++) {
            int i15 = this.maxTagLines;
            if (i15 > 0 && i14 >= i15) {
                break;
            }
            this.lineViews = this.mAllViews.get(i14);
            int iIntValue = this.mLineHeight.get(i14).intValue();
            int iIntValue2 = this.mLineWidth.get(i14).intValue();
            int i16 = this.mGravity;
            if (isRtl()) {
                i16 = this.mGravity * (-1);
            }
            int i17 = 1;
            if (i16 == -1) {
                paddingLeft = getPaddingLeft();
            } else if (i16 == 0) {
                paddingLeft = ((((measuredWidth - getPaddingLeft()) - getPaddingRight()) - iIntValue2) / 2) + getPaddingLeft();
            } else if (i16 == 1) {
                paddingLeft = (measuredWidth - iIntValue2) - (isRtl() ? getPaddingLeft() : getPaddingRight());
            }
            int i18 = 0;
            while (i18 < this.lineViews.size()) {
                if (isRtl()) {
                    List<View> list = this.lineViews;
                    view = list.get((list.size() - i18) - i17);
                } else {
                    view = this.lineViews.get(i18);
                }
                if (view.getVisibility() != 8) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                    int i19 = marginLayoutParams.leftMargin + paddingLeft;
                    int i20 = marginLayoutParams.topMargin + paddingTop;
                    int measuredWidth2 = view.getMeasuredWidth() + i19;
                    if (measuredWidth2 > (measuredWidth - getPaddingRight()) - marginLayoutParams.rightMargin) {
                        measuredWidth2 = (measuredWidth - getPaddingRight()) - marginLayoutParams.rightMargin;
                    }
                    view.layout(i19, i20, measuredWidth2, view.getMeasuredHeight() + i20);
                    this.layoutViews.add(view);
                    paddingLeft += view.getMeasuredWidth() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
                }
                i18++;
                i17 = 1;
            }
            paddingTop += iIntValue;
        }
        for (int i21 = 0; i21 < getChildCount(); i21++) {
            View childAt = getChildAt(i21);
            if (!this.layoutViews.contains(childAt)) {
                childAt.layout(0, 0, 0, 0);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        int i12;
        int size = View.MeasureSpec.getSize(i10);
        int mode = View.MeasureSpec.getMode(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        int mode2 = View.MeasureSpec.getMode(i11);
        int childCount = getChildCount();
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 1;
        int iMax = 0;
        while (true) {
            if (i13 < childCount) {
                View childAt = getChildAt(i13);
                if (childAt.getVisibility() == 8 || childAt == this.moreView) {
                    i12 = size2;
                    if (i13 == childCount - 1) {
                        i14 += i16;
                        iMax = Math.max(i15, iMax);
                    }
                } else {
                    int i18 = this.maxTagCount;
                    if (i18 <= 0 || i13 < i18) {
                        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                        i12 = size2;
                        measureChild(childAt, View.MeasureSpec.makeMeasureSpec((View.MeasureSpec.getSize(i10) - marginLayoutParams.leftMargin) - marginLayoutParams.rightMargin, View.MeasureSpec.getMode(i10)), i11);
                        int measuredWidth = childAt.getMeasuredWidth() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
                        int measuredHeight = childAt.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
                        int i19 = i15 + measuredWidth;
                        if (i19 > (size - getPaddingLeft()) - getPaddingRight()) {
                            i17++;
                            int i20 = this.maxTagLines;
                            if (i20 > 0 && i17 > i20) {
                                iMax = Math.max(i15, iMax);
                                i14 += i16;
                                break;
                            } else {
                                iMax = Math.max(iMax, i15);
                                i14 += i16;
                            }
                        } else {
                            measuredHeight = Math.max(i16, measuredHeight);
                            measuredWidth = i19;
                        }
                        if (i13 == childCount - 1) {
                            iMax = Math.max(measuredWidth, iMax);
                            i14 += measuredHeight;
                        }
                        i15 = measuredWidth;
                        i16 = measuredHeight;
                    } else {
                        iMax = Math.max(i15, iMax);
                        i14 += i16;
                    }
                }
                i13++;
                size2 = i12;
            }
            i12 = size2;
            break;
        }
        View view = this.moreView;
        if (view != null) {
            measureChild(view, i10, i11);
        }
        if (mode != 1073741824) {
            size = getPaddingRight() + iMax + getPaddingLeft();
        }
        setMeasuredDimension(size, mode2 == 1073741824 ? i12 : i14 + getPaddingTop() + getPaddingBottom());
    }

    public void setGravity(int i10) {
        this.mGravity = i10;
        invalidate();
    }

    public void setMaxTagLines(int i10) {
        this.maxTagLines = i10;
        requestLayout();
    }

    public void setShowEndItem(boolean z6) {
        this.showEndItem = z6;
        invalidate();
    }

    public void setShowMore(boolean z6) {
        if (this.showMore == z6) {
            return;
        }
        this.showMore = z6;
        requestLayout();
    }

    private boolean isRtl() {
        return Utils.isRtl();
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
}
