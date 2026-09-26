package com.narvii.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.math.MathUtils;
import androidx.core.view.GravityCompat;
import androidx.viewpager.widget.ViewPager;
import com.narvii.lib.R;
import com.narvii.util.Callback;
import com.narvii.util.EventDispatcher;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class NVPagerTabLayout extends HorizontalScrollView {
    private static final int DEFAULT_INDICATOR_COLOR = -1;
    private static final int DEFAULT_INDICATOR_CORNER_SIZE = 5;
    private static final int DEFAULT_INDICATOR_WIDTH_SIZE = 20;
    private int currentPosition;
    private float currentPositionOffset;
    private int customTabViewId;
    private int customTabWidth;
    private int indicatorAlpha;
    private int indicatorArrachedViewId;
    private int indicatorColor;
    private int indicatorHeight;
    private int indicatorHorizontalOffset;
    private RectF indicatorRect;
    private boolean indicatorShow;
    private int indicatorVerticalOffset;
    private int lastScrollX;
    OnTabItemClickListener onTabItemClickListener;
    List<OnTabItemClickListener> onTabItemClickListenerList;
    private ViewPager pager;
    EventDispatcher<PositionChangeListener> positionChangeListenerEventDispatcher;
    private Paint rectPaint;
    boolean scrollDivideEqual;
    private int scrollOffset;
    public boolean scrollWhenGlobalLayoutChanged;
    boolean segmentControl;
    public boolean showSelectedStatus;
    private int tabCount;
    private int tabMode;
    private int tabPadding;
    private TabContainerLayout tabsContainer;
    private final WrappedPageListener wrappedPageListener;

    public interface CustomPagerTabView {
        View getPageTabView(int i10);
    }

    public interface OnTabItemClickListener {
        void onTabItemClicked(int i10);
    }

    public interface PositionChangeListener {
        void onPositionChange(int i10, float f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    class WrappedPageListener implements ViewPager.OnPageChangeListener {
        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i10) {
            for (int i11 = 0; i11 < NVPagerTabLayout.this.tabsContainer.getChildCount(); i11++) {
                if (i11 == i10) {
                    NVPagerTabLayout.this.tabsContainer.getChildAt(i11).setSelected(NVPagerTabLayout.this.showSelectedStatus);
                } else {
                    NVPagerTabLayout.this.tabsContainer.getChildAt(i11).setSelected(false);
                }
            }
        }

        private WrappedPageListener() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i10) {
            if (i10 == 0) {
                NVPagerTabLayout nVPagerTabLayout = NVPagerTabLayout.this;
                nVPagerTabLayout.scrollToChild(nVPagerTabLayout.pager.getCurrentItem(), 0);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(final int i10, final float f, int i11) {
            NVPagerTabLayout.this.currentPosition = i10;
            NVPagerTabLayout.this.currentPositionOffset = f;
            NVPagerTabLayout.this.positionChangeListenerEventDispatcher.dispatch(new Callback() { // from class: com.narvii.widget.j
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    ((NVPagerTabLayout.PositionChangeListener) obj).onPositionChange(i10, f);
                }
            });
            View childAt = NVPagerTabLayout.this.tabsContainer.getChildAt(i10);
            NVPagerTabLayout nVPagerTabLayout = NVPagerTabLayout.this;
            nVPagerTabLayout.scrollToChild(i10, childAt == null ? 0 : (int) (f * nVPagerTabLayout.tabsContainer.getChildAt(i10).getWidth()));
            NVPagerTabLayout.this.invalidate();
        }
    }

    public NVPagerTabLayout(Context context) {
        this(context, null);
    }

    private void addTab(final int i10, View view) {
        LinearLayout.LayoutParams layoutParams;
        view.setFocusable(true);
        view.setLayoutDirection(Utils.isRtl() ? 1 : getLayoutDirection());
        view.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.widget.NVPagerTabLayout.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                OnTabItemClickListener onTabItemClickListener = NVPagerTabLayout.this.onTabItemClickListener;
                if (onTabItemClickListener != null) {
                    onTabItemClickListener.onTabItemClicked(i10);
                }
                List<OnTabItemClickListener> list = NVPagerTabLayout.this.onTabItemClickListenerList;
                if (list != null) {
                    Iterator<OnTabItemClickListener> it = list.iterator();
                    while (it.hasNext()) {
                        it.next().onTabItemClicked(i10);
                    }
                }
                NVPagerTabLayout.this.pager.setCurrentItem(i10, true);
            }
        });
        int i11 = this.tabPadding;
        view.setPadding(i11, 0, i11, 0);
        if (this.tabMode == 1) {
            layoutParams = new LinearLayout.LayoutParams(Utils.isRtl() ? getContext().getResources().getDisplayMetrics().widthPixels / 4 : 0, -1, 1.0f);
        } else {
            layoutParams = new LinearLayout.LayoutParams(-2, -1);
        }
        this.tabsContainer.addView(view, i10, layoutParams);
    }

    public int getTabCount() {
        return this.tabCount;
    }

    public void setIndicatorAttachedViewId(int i10) {
        this.indicatorArrachedViewId = i10;
    }

    public void setOnTabItemClickListener(OnTabItemClickListener onTabItemClickListener) {
        this.onTabItemClickListener = onTabItemClickListener;
    }

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.narvii.widget.NVPagerTabLayout.SavedState.1
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

    public NVPagerTabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void addIconTab(int i10, int i11) {
        ImageButton imageButton = new ImageButton(getContext());
        imageButton.setImageResource(i11);
        addTab(i10, imageButton);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r0v2, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r3v0, types: [android.view.View, com.narvii.widget.NVPagerTabLayout] */
    private void addTextTab(int i10, String str) {
        ?? textView;
        if (this.customTabViewId != 0) {
            textView = View.inflate(getContext(), this.customTabViewId, null);
            TextView textView2 = textView instanceof TextView ? (TextView) textView : (TextView) findViewById(R.id.tab_item_text);
            if (textView2 != null) {
                textView2.setText(str);
            }
        } else {
            textView = new TextView(getContext());
            textView.setSingleLine();
            textView.setGravity(17);
            textView.setText(str);
        }
        addTab(i10, textView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scrollToChild(int i10, int i11) {
        View childAt;
        if (this.tabCount == 0 || (childAt = this.tabsContainer.getChildAt(i10)) == null) {
            return;
        }
        int left = childAt.getLeft() + i11;
        if (i10 > 0 || i11 > 0) {
            left -= this.scrollOffset;
        }
        if (left != this.lastScrollX) {
            this.lastScrollX = left;
            scrollTo(left, 0);
        }
    }

    public void addOnTabItemClickListener(OnTabItemClickListener onTabItemClickListener) {
        if (onTabItemClickListener == null) {
            return;
        }
        if (this.onTabItemClickListenerList == null) {
            this.onTabItemClickListenerList = new ArrayList();
        }
        this.onTabItemClickListenerList.add(onTabItemClickListener);
    }

    public void addPagerListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.pager.addOnPageChangeListener(onPageChangeListener);
    }

    public void addPositionListener(PositionChangeListener positionChangeListener) {
        this.positionChangeListenerEventDispatcher.addListener(positionChangeListener);
    }

    public View getChildTabAt(int i10) {
        TabContainerLayout tabContainerLayout = this.tabsContainer;
        if (tabContainerLayout != null) {
            return tabContainerLayout.getChildAt(i10);
        }
        return null;
    }

    public void notifyDataSetChanged() {
        this.tabsContainer.removeAllViews();
        this.tabCount = this.pager.getAdapter().getCount();
        for (int i10 = 0; i10 < this.tabCount; i10++) {
            if (this.pager.getAdapter() instanceof CustomPagerTabView) {
                addTab(i10, ((CustomPagerTabView) this.pager.getAdapter()).getPageTabView(i10));
            } else {
                addTextTab(i10, this.pager.getAdapter().getPageTitle(i10).toString());
            }
        }
        updateTabsSelectStatus();
        if (this.scrollWhenGlobalLayoutChanged) {
            getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.narvii.widget.NVPagerTabLayout.2
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                @SuppressLint({"NewApi"})
                public void onGlobalLayout() {
                    if (NVPagerTabLayout.this.getWidth() == 0 && NVPagerTabLayout.this.getHeight() == 0) {
                        return;
                    }
                    NVPagerTabLayout.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    NVPagerTabLayout nVPagerTabLayout = NVPagerTabLayout.this;
                    nVPagerTabLayout.scrollToChild(nVPagerTabLayout.pager.getCurrentItem(), 0);
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

    public void removePagerListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.pager.removeOnPageChangeListener(onPageChangeListener);
    }

    public void removePositionListener(PositionChangeListener positionChangeListener) {
        this.positionChangeListenerEventDispatcher.removeListener(positionChangeListener);
    }

    public void scrollToCurrentPosition() {
        ViewPager viewPager = this.pager;
        if (viewPager != null) {
            scrollToChild(viewPager.getCurrentItem(), 0);
        }
    }

    public void setIndicatorAlpha(float f) {
        this.indicatorAlpha = MathUtils.b((int) (f * 255.0f), 0, 255);
        invalidate();
    }

    public void setIndicatorColor(int i10) {
        this.indicatorColor = i10;
        invalidate();
    }

    public void setScrollDividerEqual(boolean z6) {
        this.tabsContainer.setScrollDivideEqual(z6);
    }

    public void setScrollOffset(int i10) {
        this.scrollOffset = i10;
        invalidate();
    }

    public void setShowSelectedStatus(boolean z6) {
        this.showSelectedStatus = z6;
        updateTabsSelectStatus();
    }

    public void setViewPager(ViewPager viewPager) {
        this.pager = viewPager;
        if (viewPager.getAdapter() == null) {
            throw new IllegalStateException("ViewPager does not have adapter instance.");
        }
        viewPager.addOnPageChangeListener(this.wrappedPageListener);
        notifyDataSetChanged();
    }

    public void updateTabsSelectStatus() {
        ViewPager viewPager = this.pager;
        if (viewPager == null || this.tabsContainer == null) {
            return;
        }
        int currentItem = viewPager.getCurrentItem();
        for (int i10 = 0; i10 < this.tabsContainer.getChildCount(); i10++) {
            if (i10 == currentItem) {
                this.tabsContainer.getChildAt(i10).setSelected(this.showSelectedStatus);
            } else {
                this.tabsContainer.getChildAt(i10).setSelected(false);
            }
        }
    }

    public NVPagerTabLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.currentPosition = 0;
        this.currentPositionOffset = 0.0f;
        this.lastScrollX = 0;
        this.scrollOffset = 52;
        this.showSelectedStatus = true;
        this.scrollWhenGlobalLayoutChanged = true;
        this.indicatorArrachedViewId = 0;
        this.wrappedPageListener = new WrappedPageListener();
        this.scrollDivideEqual = true;
        this.indicatorAlpha = 255;
        this.customTabWidth = 0;
        this.positionChangeListenerEventDispatcher = new EventDispatcher<>();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.NVPagerTabLayout, i10, 0);
        this.tabMode = typedArrayObtainStyledAttributes.getInteger(R.styleable.NVPagerTabLayout_tab_mode, 0);
        this.tabPadding = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.NVPagerTabLayout_tab_padding, context.getResources().getDimensionPixelSize(R.dimen.tab_padding));
        this.indicatorHorizontalOffset = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.NVPagerTabLayout_indicator_h_offset, 0);
        this.indicatorVerticalOffset = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.NVPagerTabLayout_indicator_v_offset, 0);
        this.indicatorColor = typedArrayObtainStyledAttributes.getColor(R.styleable.NVPagerTabLayout_indicator_color, -1);
        this.indicatorShow = typedArrayObtainStyledAttributes.getBoolean(R.styleable.NVPagerTabLayout_indicator_show, true);
        this.segmentControl = typedArrayObtainStyledAttributes.getBoolean(R.styleable.NVPagerTabLayout_segment_control, false);
        this.scrollDivideEqual = typedArrayObtainStyledAttributes.getBoolean(R.styleable.NVPagerTabLayout_scroll_divide_equal, true);
        this.customTabViewId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.NVPagerTabLayout_custom_tab_view, 0);
        this.customTabWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.NVPagerTabLayout_custom_tab_width, 0);
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.tab_custom_min_width);
        int i11 = this.customTabWidth;
        if (i11 != 0 && i11 < dimensionPixelSize) {
            this.customTabWidth = dimensionPixelSize;
        }
        typedArrayObtainStyledAttributes.recycle();
        setFillViewport(true);
        setWillNotDraw(false);
        TabContainerLayout tabContainerLayout = new TabContainerLayout(context, this.tabMode);
        this.tabsContainer = tabContainerLayout;
        tabContainerLayout.setSegmentControl(this.segmentControl);
        this.tabsContainer.setScrollDivideEqual(this.scrollDivideEqual);
        this.tabsContainer.setOrientation(0);
        this.tabsContainer.setGravity(Utils.isRtl() ? GravityCompat.END : GravityCompat.START);
        this.tabsContainer.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(this.tabsContainer);
        this.indicatorHeight = context.getResources().getDimensionPixelSize(R.dimen.switch_button_decorator);
        Paint paint = new Paint();
        this.rectPaint = paint;
        paint.setAntiAlias(true);
        this.rectPaint.setStyle(Paint.Style.FILL);
        setLayoutDirection(0);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float left;
        int right;
        int i10;
        float width;
        float left2;
        int width2;
        super.onDraw(canvas);
        if (isInEditMode() || this.tabCount == 0 || !this.indicatorShow) {
            return;
        }
        int height = getHeight();
        this.rectPaint.setColor(this.indicatorColor);
        this.rectPaint.setAlpha(this.indicatorAlpha);
        View childAt = this.tabsContainer.getChildAt(this.currentPosition);
        if (childAt == null) {
            left = 0.0f;
        } else {
            left = childAt.getLeft();
        }
        if (childAt == null) {
            right = getMeasuredWidth();
        } else {
            right = childAt.getRight();
        }
        float f = right;
        int i11 = this.indicatorArrachedViewId;
        if (i11 != 0) {
            if (childAt == null) {
                childAt = null;
            } else {
                childAt = childAt.findViewById(i11);
            }
            if (childAt == null) {
                left2 = 0.0f;
            } else {
                left2 = childAt.getLeft();
            }
            left += left2;
            if (childAt == null) {
                width2 = 0;
            } else {
                width2 = childAt.getWidth();
            }
            f = width2 + left;
        }
        if (this.customTabWidth != 0) {
            if (childAt == null) {
                width = 0.0f;
            } else {
                width = (childAt.getWidth() - this.customTabWidth) / 2.0f;
            }
            left += width;
            f -= width;
        }
        if (this.currentPositionOffset > 0.0f && (i10 = this.currentPosition) < this.tabCount - 1) {
            View childAt2 = this.tabsContainer.getChildAt(i10 + 1);
            float left3 = childAt2.getLeft();
            float right2 = childAt2.getRight();
            int i12 = this.indicatorArrachedViewId;
            if (i12 != 0) {
                childAt2 = childAt2.findViewById(i12);
                left3 += childAt2.getLeft();
                right2 = childAt2.getWidth() + left3;
            }
            if (this.customTabWidth != 0) {
                float width3 = (childAt2.getWidth() - this.customTabWidth) / 2.0f;
                left3 += width3;
                right2 -= width3;
            }
            float f6 = this.currentPositionOffset;
            left = (left3 * f6) + ((1.0f - f6) * left);
            f = (right2 * f6) + ((1.0f - f6) * f);
        }
        int i13 = this.indicatorHorizontalOffset;
        float fDpToPx = left + i13;
        float fDpToPx2 = f - i13;
        int i14 = (height - this.indicatorHeight) - 2;
        int i15 = this.indicatorVerticalOffset;
        float f7 = i14 - i15;
        float f10 = (height - 2) - i15;
        if (this.tabMode == 1) {
            f7 += 2.0f;
            f10 += 2.0f;
        } else {
            fDpToPx += Utils.dpToPx(getContext(), 6.0f);
            fDpToPx2 -= Utils.dpToPx(getContext(), 6.0f);
        }
        RectF rectF = new RectF(fDpToPx, f7, fDpToPx2, f10);
        this.indicatorRect = rectF;
        canvas.drawRoundRect(rectF, 5.0f, 5.0f, this.rectPaint);
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.currentPosition = this.currentPosition;
        return savedState;
    }
}
