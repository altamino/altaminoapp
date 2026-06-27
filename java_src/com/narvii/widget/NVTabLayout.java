package com.narvii.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.amino.R;

/* loaded from: classes3.dex */
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
        void onItemClick(int i);
    }

    public NVTabLayout(Context context) {
        this(context, null);
    }

    public NVTabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NVTabLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.currentPosition = 0;
        this.currentPositionOffset = 0.0f;
        this.scrollOffset = 52;
        this.lastScrollX = 0;
        this.indicatorHorizontalOffset = 0.0f;
        this.indicatorVerticalOffset = 0.0f;
        this.indicatorAttachedViewId = 0;
        this.pageChangeListener = new ViewPager.OnPageChangeListener() { // from class: com.narvii.widget.NVTabLayout.2
            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageSelected(int i2) {
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i2, float f, int i3) {
                NVTabLayout.this.currentPosition = i2;
                NVTabLayout.this.currentPositionOffset = f;
                NVTabLayout.this.scrollToChild(i2, (int) (f * r4.tabsContainer.getChildAt(i2).getWidth()));
                NVTabLayout.this.invalidate();
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i2) {
                if (i2 == 0) {
                    NVTabLayout nVTabLayout = NVTabLayout.this;
                    nVTabLayout.scrollToChild(nVTabLayout.viewPager.getCurrentItem(), 0);
                }
            }
        };
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.NVTabLayout);
        this.tabMode = typedArrayObtainStyledAttributes.getInt(2, 0);
        this.indicatorColor = typedArrayObtainStyledAttributes.getInt(0, 0);
        this.indicatorHeight = typedArrayObtainStyledAttributes.getDimension(1, 2.0f);
        typedArrayObtainStyledAttributes.recycle();
        this.tabsContainer = new LinearLayout(context);
        this.tabsContainer.setOrientation(0);
        this.tabsContainer.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(this.tabsContainer);
        setFillViewport(true);
        if (Build.VERSION.SDK_INT >= 17) {
            setLayoutDirection(0);
        }
        this.indicatorPaint = new Paint();
        this.indicatorPaint.setAntiAlias(true);
        this.indicatorPaint.setColor(-1);
        this.indicatorPaint.setStyle(Paint.Style.FILL);
        this.indicatorRect = new RectF();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
    }

    protected View getItemView(Context context, int i) {
        View viewInflate = LayoutInflater.from(context).inflate(com.narvii.amino.mastes.R.layout.simple_tab_item_layout, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(com.narvii.amino.mastes.R.id.title)).setText(i);
        return viewInflate;
    }

    public void setIndicatorAttachedViewId(int i) {
        this.indicatorAttachedViewId = i;
    }

    public void addSubView(View view) {
        LinearLayout.LayoutParams layoutParams;
        if (this.tabMode == 1) {
            layoutParams = new LinearLayout.LayoutParams(0, -1, 1.0f);
        } else {
            layoutParams = new LinearLayout.LayoutParams(-2, -1);
        }
        this.tabsContainer.addView(view, layoutParams);
        this.tabCount++;
        for (final int i = 0; i < this.tabsContainer.getChildCount(); i++) {
            this.tabsContainer.getChildAt(i).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.widget.NVTabLayout.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) throws Resources.NotFoundException {
                    NVTabLayout nVTabLayout = NVTabLayout.this;
                    if (nVTabLayout.clickListener != null) {
                        if (nVTabLayout.viewPager != null) {
                            NVTabLayout.this.viewPager.setCurrentItem(i, true);
                        }
                        NVTabLayout.this.clickListener.onItemClick(i);
                    }
                }
            });
        }
    }

    public void setViewPager(NVViewPager nVViewPager) {
        this.viewPager = nVViewPager;
        if (nVViewPager.getAdapter() == null) {
            throw new IllegalStateException("ViewPager does not have adapter instance.");
        }
        nVViewPager.addOnPageChangeListener(this.pageChangeListener);
        updateViews();
    }

    private void updateViews() {
        if (this.tabsContainer.getChildCount() == 0) {
            throw new IllegalStateException("Please add the label for each page");
        }
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.narvii.widget.NVTabLayout.3
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                if (Build.VERSION.SDK_INT < 16) {
                    NVTabLayout.this.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                } else {
                    NVTabLayout.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                }
                NVTabLayout nVTabLayout = NVTabLayout.this;
                nVTabLayout.currentPosition = nVTabLayout.viewPager.getCurrentItem();
                NVTabLayout nVTabLayout2 = NVTabLayout.this;
                nVTabLayout2.scrollToChild(nVTabLayout2.currentPosition, 0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scrollToChild(int i, int i2) {
        if (this.tabCount == 0 || i >= this.tabsContainer.getChildCount()) {
            return;
        }
        int left = this.tabsContainer.getChildAt(i).getLeft() + i2;
        if (i > 0 || i2 > 0) {
            left -= this.scrollOffset;
        }
        if (left != this.lastScrollX) {
            this.lastScrollX = left;
            scrollTo(left, 0);
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.currentPosition = this.currentPosition;
        return savedState;
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.currentPosition = savedState.currentPosition;
        requestLayout();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i;
        super.onDraw(canvas);
        if (isInEditMode() || this.tabCount == 0 || this.currentPosition >= this.tabsContainer.getChildCount()) {
            return;
        }
        int height = getHeight();
        this.indicatorPaint.setColor(this.indicatorColor);
        View childAt = this.tabsContainer.getChildAt(this.currentPosition);
        float left = childAt.getLeft();
        float right = childAt.getRight();
        int i2 = this.indicatorAttachedViewId;
        if (i2 != 0) {
            View viewFindViewById = childAt.findViewById(i2);
            left += viewFindViewById.getLeft() + viewFindViewById.getPaddingLeft();
            right = left + viewFindViewById.getWidth();
        }
        if (this.currentPositionOffset > 0.0f && (i = this.currentPosition) < this.tabCount - 1) {
            View childAt2 = this.tabsContainer.getChildAt(i + 1);
            float left2 = childAt2.getLeft();
            float right2 = childAt2.getRight();
            int i3 = this.indicatorAttachedViewId;
            if (i3 != 0) {
                View viewFindViewById2 = childAt2.findViewById(i3);
                left2 += viewFindViewById2.getLeft() + viewFindViewById2.getPaddingLeft();
                right2 = left2 + viewFindViewById2.getWidth();
            }
            float f = this.currentPositionOffset;
            left = (left2 * f) + ((1.0f - f) * left);
            right = (right2 * f) + ((1.0f - f) * right);
        }
        float paddingLeft = left + this.indicatorHorizontalOffset + getPaddingLeft();
        float f2 = right - this.indicatorHorizontalOffset;
        float f3 = (height - this.indicatorHeight) - 2.0f;
        float f4 = this.indicatorVerticalOffset;
        this.indicatorRect.set(paddingLeft, f3 - f4, f2, (height - 2) - f4);
        canvas.drawRoundRect(this.indicatorRect, 5.0f, 5.0f, this.indicatorPaint);
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
            public SavedState[] newArray(int i) {
                return new SavedState[i];
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
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.currentPosition);
        }
    }
}
