package com.narvii.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.math.MathUtils;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.lib.R;
import com.narvii.util.Callback;
import com.narvii.util.EventDispatcher;
import com.narvii.util.Utils;
import com.narvii.widget.NVPagerTabLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
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
        View getPageTabView(int i);
    }

    public interface OnTabItemClickListener {
        void onTabItemClicked(int i);
    }

    public interface PositionChangeListener {
        void onPositionChange(int i, float f);
    }

    public NVPagerTabLayout(Context context) {
        this(context, null);
    }

    public NVPagerTabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NVPagerTabLayout(Context context, AttributeSet attributeSet, int i) throws Resources.NotFoundException {
        super(context, attributeSet, i);
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
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.NVPagerTabLayout, i, 0);
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
        int i2 = this.customTabWidth;
        if (i2 != 0 && i2 < dimensionPixelSize) {
            this.customTabWidth = dimensionPixelSize;
        }
        typedArrayObtainStyledAttributes.recycle();
        setFillViewport(true);
        setWillNotDraw(false);
        this.tabsContainer = new TabContainerLayout(context, this.tabMode);
        this.tabsContainer.setSegmentControl(this.segmentControl);
        this.tabsContainer.setScrollDivideEqual(this.scrollDivideEqual);
        this.tabsContainer.setOrientation(0);
        this.tabsContainer.setGravity(Utils.isRtl() ? GravityCompat.END : GravityCompat.START);
        this.tabsContainer.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(this.tabsContainer);
        this.indicatorHeight = context.getResources().getDimensionPixelSize(R.dimen.switch_button_decorator);
        this.rectPaint = new Paint();
        this.rectPaint.setAntiAlias(true);
        this.rectPaint.setStyle(Paint.Style.FILL);
        if (Build.VERSION.SDK_INT >= 17) {
            setLayoutDirection(0);
        }
    }

    public void addPositionListener(PositionChangeListener positionChangeListener) {
        this.positionChangeListenerEventDispatcher.addListener(positionChangeListener);
    }

    public void removePositionListener(PositionChangeListener positionChangeListener) {
        this.positionChangeListenerEventDispatcher.removeListener(positionChangeListener);
    }

    public void setScrollDividerEqual(boolean z) {
        this.tabsContainer.setScrollDivideEqual(z);
    }

    public void setOnTabItemClickListener(OnTabItemClickListener onTabItemClickListener) {
        this.onTabItemClickListener = onTabItemClickListener;
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

    public void setIndicatorColor(int i) {
        this.indicatorColor = i;
        invalidate();
    }

    public void setScrollOffset(int i) {
        this.scrollOffset = i;
        invalidate();
    }

    public void addPagerListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.pager.addOnPageChangeListener(onPageChangeListener);
    }

    public void removePagerListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.pager.removeOnPageChangeListener(onPageChangeListener);
    }

    public void setIndicatorAttachedViewId(int i) {
        this.indicatorArrachedViewId = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r0v2, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r3v0, types: [android.widget.HorizontalScrollView, com.narvii.widget.NVPagerTabLayout] */
    private void addTextTab(int i, String str) {
        ?? textView;
        TextView textView2;
        if (this.customTabViewId != 0) {
            textView = HorizontalScrollView.inflate(getContext(), this.customTabViewId, null);
            if (textView instanceof TextView) {
                textView2 = (TextView) textView;
            } else {
                textView2 = (TextView) findViewById(R.id.tab_item_text);
            }
            if (textView2 != null) {
                textView2.setText(str);
            }
        } else {
            textView = new TextView(getContext());
            textView.setSingleLine();
            textView.setGravity(17);
            textView.setText(str);
        }
        addTab(i, textView);
    }

    private void addIconTab(int i, int i2) {
        ImageButton imageButton = new ImageButton(getContext());
        imageButton.setImageResource(i2);
        addTab(i, imageButton);
    }

    public void setShowSelectedStatus(boolean z) {
        this.showSelectedStatus = z;
        updateTabsSelectStatus();
    }

    private void addTab(final int i, View view) {
        LinearLayout.LayoutParams layoutParams;
        view.setFocusable(true);
        if (Build.VERSION.SDK_INT >= 17) {
            view.setLayoutDirection(Utils.isRtl() ? 1 : getLayoutDirection());
        }
        view.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.widget.NVPagerTabLayout.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) throws Resources.NotFoundException {
                OnTabItemClickListener onTabItemClickListener = NVPagerTabLayout.this.onTabItemClickListener;
                if (onTabItemClickListener != null) {
                    onTabItemClickListener.onTabItemClicked(i);
                }
                List<OnTabItemClickListener> list = NVPagerTabLayout.this.onTabItemClickListenerList;
                if (list != null) {
                    Iterator<OnTabItemClickListener> it = list.iterator();
                    while (it.hasNext()) {
                        it.next().onTabItemClicked(i);
                    }
                }
                NVPagerTabLayout.this.pager.setCurrentItem(i, true);
            }
        });
        int i2 = this.tabPadding;
        view.setPadding(i2, 0, i2, 0);
        if (this.tabMode == 1) {
            layoutParams = new LinearLayout.LayoutParams(Utils.isRtl() ? getContext().getResources().getDisplayMetrics().widthPixels / 4 : 0, -1, 1.0f);
        } else {
            layoutParams = new LinearLayout.LayoutParams(-2, -1);
        }
        this.tabsContainer.addView(view, i, layoutParams);
    }

    public void setViewPager(ViewPager viewPager) {
        this.pager = viewPager;
        if (viewPager.getAdapter() == null) {
            throw new IllegalStateException("ViewPager does not have adapter instance.");
        }
        viewPager.addOnPageChangeListener(this.wrappedPageListener);
        notifyDataSetChanged();
    }

    public int getTabCount() {
        return this.tabCount;
    }

    public View getChildTabAt(int i) {
        TabContainerLayout tabContainerLayout = this.tabsContainer;
        if (tabContainerLayout != null) {
            return tabContainerLayout.getChildAt(i);
        }
        return null;
    }

    public void notifyDataSetChanged() {
        this.tabsContainer.removeAllViews();
        this.tabCount = this.pager.getAdapter().getCount();
        for (int i = 0; i < this.tabCount; i++) {
            if (this.pager.getAdapter() instanceof CustomPagerTabView) {
                addTab(i, ((CustomPagerTabView) this.pager.getAdapter()).getPageTabView(i));
            } else {
                addTextTab(i, this.pager.getAdapter().getPageTitle(i).toString());
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
                    if (Build.VERSION.SDK_INT < 16) {
                        NVPagerTabLayout.this.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                    } else {
                        NVPagerTabLayout.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    }
                    NVPagerTabLayout nVPagerTabLayout = NVPagerTabLayout.this;
                    nVPagerTabLayout.scrollToChild(nVPagerTabLayout.pager.getCurrentItem(), 0);
                }
            });
        }
    }

    public void updateTabsSelectStatus() {
        ViewPager viewPager = this.pager;
        if (viewPager == null || this.tabsContainer == null) {
            return;
        }
        int currentItem = viewPager.getCurrentItem();
        for (int i = 0; i < this.tabsContainer.getChildCount(); i++) {
            if (i == currentItem) {
                this.tabsContainer.getChildAt(i).setSelected(this.showSelectedStatus);
            } else {
                this.tabsContainer.getChildAt(i).setSelected(false);
            }
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i;
        super.onDraw(canvas);
        if (isInEditMode() || this.tabCount == 0 || !this.indicatorShow) {
            return;
        }
        int height = getHeight();
        this.rectPaint.setColor(this.indicatorColor);
        this.rectPaint.setAlpha(this.indicatorAlpha);
        View childAt = this.tabsContainer.getChildAt(this.currentPosition);
        float left = childAt == null ? 0.0f : childAt.getLeft();
        float measuredWidth = childAt == null ? getMeasuredWidth() : childAt.getRight();
        int i2 = this.indicatorArrachedViewId;
        if (i2 != 0) {
            childAt = childAt == null ? null : childAt.findViewById(i2);
            left += childAt == null ? 0.0f : childAt.getLeft();
            measuredWidth = (childAt == null ? 0 : childAt.getWidth()) + left;
        }
        if (this.customTabWidth != 0) {
            float width = childAt == null ? 0.0f : (childAt.getWidth() - this.customTabWidth) / 2.0f;
            left += width;
            measuredWidth -= width;
        }
        if (this.currentPositionOffset > 0.0f && (i = this.currentPosition) < this.tabCount - 1) {
            View childAt2 = this.tabsContainer.getChildAt(i + 1);
            float left2 = childAt2.getLeft();
            float right = childAt2.getRight();
            int i3 = this.indicatorArrachedViewId;
            if (i3 != 0) {
                childAt2 = childAt2.findViewById(i3);
                left2 += childAt2.getLeft();
                right = childAt2.getWidth() + left2;
            }
            if (this.customTabWidth != 0) {
                float width2 = (childAt2.getWidth() - this.customTabWidth) / 2.0f;
                left2 += width2;
                right -= width2;
            }
            float f = this.currentPositionOffset;
            left = (left2 * f) + ((1.0f - f) * left);
            measuredWidth = (right * f) + ((1.0f - f) * measuredWidth);
        }
        int i4 = this.indicatorHorizontalOffset;
        float fDpToPx = left + i4;
        float fDpToPx2 = measuredWidth - i4;
        int i5 = (height - this.indicatorHeight) - 2;
        int i6 = this.indicatorVerticalOffset;
        float f2 = i5 - i6;
        float f3 = (height - 2) - i6;
        if (this.tabMode == 1) {
            f2 += 2.0f;
            f3 += 2.0f;
        } else {
            fDpToPx += Utils.dpToPx(getContext(), 6.0f);
            fDpToPx2 -= Utils.dpToPx(getContext(), 6.0f);
        }
        this.indicatorRect = new RectF(fDpToPx, f2, fDpToPx2, f3);
        canvas.drawRoundRect(this.indicatorRect, 5.0f, 5.0f, this.rectPaint);
    }

    /* JADX INFO: Access modifiers changed from: private */
    class WrappedPageListener implements ViewPager.OnPageChangeListener {
        private WrappedPageListener() {
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrolled(final int i, final float f, int i2) {
            NVPagerTabLayout.this.currentPosition = i;
            NVPagerTabLayout.this.currentPositionOffset = f;
            NVPagerTabLayout.this.positionChangeListenerEventDispatcher.dispatch(new Callback() { // from class: com.narvii.widget.-$$Lambda$NVPagerTabLayout$WrappedPageListener$rLL7d4KeL4OMv5QVW9_ElMR6Xfg
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    ((NVPagerTabLayout.PositionChangeListener) obj).onPositionChange(i, f);
                }
            });
            View childAt = NVPagerTabLayout.this.tabsContainer.getChildAt(i);
            NVPagerTabLayout.this.scrollToChild(i, childAt == null ? 0 : (int) (f * r0.tabsContainer.getChildAt(i).getWidth()));
            NVPagerTabLayout.this.invalidate();
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            for (int i2 = 0; i2 < NVPagerTabLayout.this.tabsContainer.getChildCount(); i2++) {
                if (i2 == i) {
                    NVPagerTabLayout.this.tabsContainer.getChildAt(i2).setSelected(NVPagerTabLayout.this.showSelectedStatus);
                } else {
                    NVPagerTabLayout.this.tabsContainer.getChildAt(i2).setSelected(false);
                }
            }
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
            if (i == 0) {
                NVPagerTabLayout nVPagerTabLayout = NVPagerTabLayout.this;
                nVPagerTabLayout.scrollToChild(nVPagerTabLayout.pager.getCurrentItem(), 0);
            }
        }
    }

    public void scrollToCurrentPosition() {
        ViewPager viewPager = this.pager;
        if (viewPager != null) {
            scrollToChild(viewPager.getCurrentItem(), 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scrollToChild(int i, int i2) {
        View childAt;
        if (this.tabCount == 0 || (childAt = this.tabsContainer.getChildAt(i)) == null) {
            return;
        }
        int left = childAt.getLeft() + i2;
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

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.narvii.widget.NVPagerTabLayout.SavedState.1
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

    public void setIndicatorAlpha(float f) {
        this.indicatorAlpha = MathUtils.clamp((int) (f * 255.0f), 0, 255);
        invalidate();
    }
}
