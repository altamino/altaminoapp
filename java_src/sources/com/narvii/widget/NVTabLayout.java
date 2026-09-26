package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import com.narvii.amino.R;

/* JADX INFO: loaded from: classes4.dex */
public class NVTabLayout extends HorizontalScrollView {
    private static final int DEFAULT_INDICATOR_CORNER_SIZE = 5;
    ItemClickListener clickListener;
    private int currentPosition;
    private float currentPositionOffset;
    private int indicatorAttachedViewId;
    private int indicatorColor;
    private float indicatorHeight;
    private float indicatorHorizontalOffset;
    private Paint indicatorPaint;
    private RectF indicatorRect;
    private float indicatorVerticalOffset;
    private int lastScrollX;
    private ViewPager.OnPageChangeListener pageChangeListener;
    private int scrollOffset;
    private int tabCount;
    private int tabMode;
    public LinearLayout tabsContainer;
    private ViewPager viewPager;

    interface ItemClickListener {
        void onItemClick(int i10);
    }

    public NVTabLayout(Context context) {
        this(context, null);
    }

    public void setIndicatorAttachedViewId(int i10) {
        this.indicatorAttachedViewId = i10;
    }

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.narvii.widget.NVTabLayout.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        };
        int currentPosition;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.currentPosition = parcel.readInt();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.currentPosition);
        }
    }

    public NVTabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scrollToChild(int i10, int i11) {
        if (this.tabCount == 0 || i10 >= this.tabsContainer.getChildCount()) {
            return;
        }
        int left = this.tabsContainer.getChildAt(i10).getLeft() + i11;
        if (i10 > 0 || i11 > 0) {
            left -= this.scrollOffset;
        }
        if (left != this.lastScrollX) {
            this.lastScrollX = left;
            scrollTo(left, 0);
        }
    }

    private void updateViews() {
        if (this.tabsContainer.getChildCount() == 0) {
            throw new IllegalStateException("Please add the label for each page");
        }
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.narvii.widget.NVTabLayout.3
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                NVTabLayout.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                NVTabLayout nVTabLayout = NVTabLayout.this;
                nVTabLayout.currentPosition = nVTabLayout.viewPager.getCurrentItem();
                NVTabLayout nVTabLayout2 = NVTabLayout.this;
                nVTabLayout2.scrollToChild(nVTabLayout2.currentPosition, 0);
            }
        });
    }

    public void addSubView(View view) {
        this.tabsContainer.addView(view, this.tabMode == 1 ? new LinearLayout.LayoutParams(0, -1, 1.0f) : new LinearLayout.LayoutParams(-2, -1));
        this.tabCount++;
        for (final int i10 = 0; i10 < this.tabsContainer.getChildCount(); i10++) {
            this.tabsContainer.getChildAt(i10).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.widget.NVTabLayout.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    NVTabLayout nVTabLayout = NVTabLayout.this;
                    if (nVTabLayout.clickListener != null) {
                        if (nVTabLayout.viewPager != null) {
                            NVTabLayout.this.viewPager.setCurrentItem(i10, true);
                        }
                        NVTabLayout.this.clickListener.onItemClick(i10);
                    }
                }
            });
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.currentPosition = savedState.currentPosition;
        requestLayout();
    }

    public void setViewPager(NVViewPager nVViewPager) {
        this.viewPager = nVViewPager;
        if (nVViewPager.getAdapter() == null) {
            throw new IllegalStateException("ViewPager does not have adapter instance.");
        }
        nVViewPager.addOnPageChangeListener(this.pageChangeListener);
        updateViews();
    }

    public NVTabLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.currentPosition = 0;
        this.currentPositionOffset = 0.0f;
        this.scrollOffset = 52;
        this.lastScrollX = 0;
        this.indicatorHorizontalOffset = 0.0f;
        this.indicatorVerticalOffset = 0.0f;
        this.indicatorAttachedViewId = 0;
        this.pageChangeListener = new ViewPager.OnPageChangeListener() { // from class: com.narvii.widget.NVTabLayout.2
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i11) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i11) {
                if (i11 == 0) {
                    NVTabLayout nVTabLayout = NVTabLayout.this;
                    nVTabLayout.scrollToChild(nVTabLayout.viewPager.getCurrentItem(), 0);
                }
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i11, float f, int i12) {
                NVTabLayout.this.currentPosition = i11;
                NVTabLayout.this.currentPositionOffset = f;
                NVTabLayout nVTabLayout = NVTabLayout.this;
                nVTabLayout.scrollToChild(i11, (int) (f * nVTabLayout.tabsContainer.getChildAt(i11).getWidth()));
                NVTabLayout.this.invalidate();
            }
        };
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.NVTabLayout);
        this.tabMode = typedArrayObtainStyledAttributes.getInt(2, 0);
        this.indicatorColor = typedArrayObtainStyledAttributes.getInt(0, 0);
        this.indicatorHeight = typedArrayObtainStyledAttributes.getDimension(1, 2.0f);
        typedArrayObtainStyledAttributes.recycle();
        LinearLayout linearLayout = new LinearLayout(context);
        this.tabsContainer = linearLayout;
        linearLayout.setOrientation(0);
        this.tabsContainer.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(this.tabsContainer);
        setFillViewport(true);
        setLayoutDirection(0);
        Paint paint = new Paint();
        this.indicatorPaint = paint;
        paint.setAntiAlias(true);
        this.indicatorPaint.setColor(-1);
        this.indicatorPaint.setStyle(Paint.Style.FILL);
        this.indicatorRect = new RectF();
    }

    protected View getItemView(Context context, int i10) {
        View viewInflate = LayoutInflater.from(context).inflate(com.narvii.amino.master.R.layout.simple_tab_item_layout, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(com.narvii.amino.master.R.id.title)).setText(i10);
        return viewInflate;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i10;
        super.onDraw(canvas);
        if (!isInEditMode() && this.tabCount != 0 && this.currentPosition < this.tabsContainer.getChildCount()) {
            int height = getHeight();
            this.indicatorPaint.setColor(this.indicatorColor);
            View childAt = this.tabsContainer.getChildAt(this.currentPosition);
            float left = childAt.getLeft();
            float right = childAt.getRight();
            int i11 = this.indicatorAttachedViewId;
            if (i11 != 0) {
                View viewFindViewById = childAt.findViewById(i11);
                left += viewFindViewById.getLeft() + viewFindViewById.getPaddingLeft();
                right = left + viewFindViewById.getWidth();
            }
            if (this.currentPositionOffset > 0.0f && (i10 = this.currentPosition) < this.tabCount - 1) {
                View childAt2 = this.tabsContainer.getChildAt(i10 + 1);
                float left2 = childAt2.getLeft();
                float right2 = childAt2.getRight();
                int i12 = this.indicatorAttachedViewId;
                if (i12 != 0) {
                    View viewFindViewById2 = childAt2.findViewById(i12);
                    left2 += viewFindViewById2.getLeft() + viewFindViewById2.getPaddingLeft();
                    right2 = left2 + viewFindViewById2.getWidth();
                }
                float f = this.currentPositionOffset;
                left = (left2 * f) + ((1.0f - f) * left);
                right = (right2 * f) + ((1.0f - f) * right);
            }
            float paddingLeft = left + this.indicatorHorizontalOffset + getPaddingLeft();
            float f6 = right - this.indicatorHorizontalOffset;
            float f7 = (height - this.indicatorHeight) - 2.0f;
            float f10 = this.indicatorVerticalOffset;
            this.indicatorRect.set(paddingLeft, f7 - f10, f6, (height - 2) - f10);
            canvas.drawRoundRect(this.indicatorRect, 5.0f, 5.0f, this.indicatorPaint);
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.currentPosition = this.currentPosition;
        return savedState;
    }
}
