package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.annotation.NonNull;
import androidx.appcompat.R;
import androidx.appcompat.graphics.drawable.DrawableWrapper;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.widget.ListViewAutoScrollHelper;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes9.dex */
class DropDownListView extends ListView {
    public static final int INVALID_POSITION = -1;
    public static final int NO_POSITION = -1;
    private ViewPropertyAnimatorCompat mClickAnimation;
    private boolean mDrawsInPressedState;
    private boolean mHijackFocus;
    private Field mIsChildViewEnabled;
    private boolean mListSelectionHidden;
    private int mMotionPosition;
    ResolveHoverRunnable mResolveHoverRunnable;
    private ListViewAutoScrollHelper mScrollHelper;
    private int mSelectionBottomPadding;
    private int mSelectionLeftPadding;
    private int mSelectionRightPadding;
    private int mSelectionTopPadding;
    private GateKeeperDrawable mSelector;
    private final Rect mSelectorRect;

    private static class GateKeeperDrawable extends DrawableWrapper {
        private boolean mEnabled;

        void c(boolean z6) {
            this.mEnabled = z6;
        }

        @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            if (this.mEnabled) {
                super.draw(canvas);
            }
        }

        @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
        public void setHotspot(float f, float f6) {
            if (this.mEnabled) {
                super.setHotspot(f, f6);
            }
        }

        @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
        public void setHotspotBounds(int i10, int i11, int i12, int i13) {
            if (this.mEnabled) {
                super.setHotspotBounds(i10, i11, i12, i13);
            }
        }

        @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
        public boolean setState(int[] iArr) {
            if (this.mEnabled) {
                return super.setState(iArr);
            }
            return false;
        }

        @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
        public boolean setVisible(boolean z6, boolean z10) {
            if (this.mEnabled) {
                return super.setVisible(z6, z10);
            }
            return false;
        }

        GateKeeperDrawable(Drawable drawable) {
            super(drawable);
            this.mEnabled = true;
        }
    }

    private class ResolveHoverRunnable implements Runnable {
        ResolveHoverRunnable() {
        }

        public void a() {
            DropDownListView dropDownListView = DropDownListView.this;
            dropDownListView.mResolveHoverRunnable = null;
            dropDownListView.removeCallbacks(this);
        }

        public void b() {
            DropDownListView.this.post(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            DropDownListView dropDownListView = DropDownListView.this;
            dropDownListView.mResolveHoverRunnable = null;
            dropDownListView.drawableStateChanged();
        }
    }

    DropDownListView(@NonNull Context context, boolean z6) {
        super(context, null, R.attr.dropDownListViewStyle);
        this.mSelectorRect = new Rect();
        this.mSelectionLeftPadding = 0;
        this.mSelectionTopPadding = 0;
        this.mSelectionRightPadding = 0;
        this.mSelectionBottomPadding = 0;
        this.mHijackFocus = z6;
        setCacheColorHint(0);
        try {
            Field declaredField = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            this.mIsChildViewEnabled = declaredField;
            declaredField.setAccessible(true);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }
    }

    private void a() {
        this.mDrawsInPressedState = false;
        setPressed(false);
        drawableStateChanged();
        View childAt = getChildAt(this.mMotionPosition - getFirstVisiblePosition());
        if (childAt != null) {
            childAt.setPressed(false);
        }
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.mClickAnimation;
        if (viewPropertyAnimatorCompat != null) {
            viewPropertyAnimatorCompat.c();
            this.mClickAnimation = null;
        }
    }

    private void i(View view, int i10, float f, float f6) {
        View childAt;
        this.mDrawsInPressedState = true;
        drawableHotspotChanged(f, f6);
        if (!isPressed()) {
            setPressed(true);
        }
        layoutChildren();
        int i11 = this.mMotionPosition;
        if (i11 != -1 && (childAt = getChildAt(i11 - getFirstVisiblePosition())) != null && childAt != view && childAt.isPressed()) {
            childAt.setPressed(false);
        }
        this.mMotionPosition = i10;
        view.drawableHotspotChanged(f - view.getLeft(), f6 - view.getTop());
        if (!view.isPressed()) {
            view.setPressed(true);
        }
        h(i10, view, f, f6);
        setSelectorEnabled(false);
        refreshDrawableState();
    }

    private boolean j() {
        return this.mDrawsInPressedState;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.mResolveHoverRunnable = null;
        super.onDetachedFromWindow();
    }

    void setListSelectionHidden(boolean z6) {
        this.mListSelectionHidden = z6;
    }

    private void c(Canvas canvas) {
        Drawable selector;
        if (this.mSelectorRect.isEmpty() || (selector = getSelector()) == null) {
            return;
        }
        selector.setBounds(this.mSelectorRect);
        selector.draw(canvas);
    }

    private void f(int i10, View view) {
        Rect rect = this.mSelectorRect;
        rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        rect.left -= this.mSelectionLeftPadding;
        rect.top -= this.mSelectionTopPadding;
        rect.right += this.mSelectionRightPadding;
        rect.bottom += this.mSelectionBottomPadding;
        try {
            boolean z6 = this.mIsChildViewEnabled.getBoolean(this);
            if (view.isEnabled() != z6) {
                this.mIsChildViewEnabled.set(this, Boolean.valueOf(!z6));
                if (i10 != -1) {
                    refreshDrawableState();
                }
            }
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
    }

    private void setSelectorEnabled(boolean z6) {
        GateKeeperDrawable gateKeeperDrawable = this.mSelector;
        if (gateKeeperDrawable != null) {
            gateKeeperDrawable.c(z6);
        }
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        if (this.mResolveHoverRunnable != null) {
            return;
        }
        super.drawableStateChanged();
        setSelectorEnabled(true);
        k();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean hasFocus() {
        return this.mHijackFocus || super.hasFocus();
    }

    @Override // android.view.View
    public boolean hasWindowFocus() {
        return this.mHijackFocus || super.hasWindowFocus();
    }

    @Override // android.view.View
    public boolean isFocused() {
        return this.mHijackFocus || super.isFocused();
    }

    @Override // android.view.View
    public boolean isInTouchMode() {
        return (this.mHijackFocus && this.mListSelectionHidden) || super.isInTouchMode();
    }

    @Override // android.view.View
    public boolean onHoverEvent(@NonNull MotionEvent motionEvent) {
        if (Build.VERSION.SDK_INT < 26) {
            return super.onHoverEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.mResolveHoverRunnable == null) {
            ResolveHoverRunnable resolveHoverRunnable = new ResolveHoverRunnable();
            this.mResolveHoverRunnable = resolveHoverRunnable;
            resolveHoverRunnable.b();
        }
        boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked == 9 || actionMasked == 7) {
            int iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (iPointToPosition != -1 && iPointToPosition != getSelectedItemPosition()) {
                View childAt = getChildAt(iPointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    setSelectionFromTop(iPointToPosition, childAt.getTop() - getTop());
                }
                k();
            }
        } else {
            setSelection(-1);
        }
        return zOnHoverEvent;
    }

    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        GateKeeperDrawable gateKeeperDrawable = drawable != null ? new GateKeeperDrawable(drawable) : null;
        this.mSelector = gateKeeperDrawable;
        super.setSelector(gateKeeperDrawable);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.mSelectionLeftPadding = rect.left;
        this.mSelectionTopPadding = rect.top;
        this.mSelectionRightPadding = rect.right;
        this.mSelectionBottomPadding = rect.bottom;
    }

    private void b(View view, int i10) {
        performItemClick(view, i10, getItemIdAtPosition(i10));
    }

    private void g(int i10, View view) {
        boolean z6;
        Drawable selector = getSelector();
        boolean z10 = true;
        if (selector != null && i10 != -1) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (z6) {
            selector.setVisible(false, false);
        }
        f(i10, view);
        if (z6) {
            Rect rect = this.mSelectorRect;
            float fExactCenterX = rect.exactCenterX();
            float fExactCenterY = rect.exactCenterY();
            if (getVisibility() != 0) {
                z10 = false;
            }
            selector.setVisible(z10, false);
            DrawableCompat.k(selector, fExactCenterX, fExactCenterY);
        }
    }

    private void h(int i10, View view, float f, float f6) {
        g(i10, view);
        Drawable selector = getSelector();
        if (selector != null && i10 != -1) {
            DrawableCompat.k(selector, f, f6);
        }
    }

    private void k() {
        Drawable selector = getSelector();
        if (selector != null && j() && isPressed()) {
            selector.setState(getDrawableState());
        }
    }

    public int d(int i10, int i11, int i12, int i13, int i14) {
        int iMakeMeasureSpec;
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        if (adapter == null) {
            return listPaddingTop + listPaddingBottom;
        }
        int measuredHeight = listPaddingTop + listPaddingBottom;
        if (dividerHeight <= 0 || divider == null) {
            dividerHeight = 0;
        }
        int count = adapter.getCount();
        int i15 = 0;
        int i16 = 0;
        View view = null;
        for (int i17 = 0; i17 < count; i17++) {
            int itemViewType = adapter.getItemViewType(i17);
            if (itemViewType != i15) {
                view = null;
                i15 = itemViewType;
            }
            view = adapter.getView(i17, view, this);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = generateDefaultLayoutParams();
                view.setLayoutParams(layoutParams);
            }
            int i18 = layoutParams.height;
            if (i18 > 0) {
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i18, 1073741824);
            } else {
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            }
            view.measure(i10, iMakeMeasureSpec);
            view.forceLayout();
            if (i17 > 0) {
                measuredHeight += dividerHeight;
            }
            measuredHeight += view.getMeasuredHeight();
            if (measuredHeight >= i13) {
                if (i14 >= 0 && i17 > i14 && i16 > 0 && measuredHeight != i13) {
                    return i16;
                }
                return i13;
            }
            if (i14 >= 0 && i17 >= i14) {
                i16 = measuredHeight;
            }
        }
        return measuredHeight;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        c(canvas);
        super.dispatchDraw(canvas);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x004a  */
    /* JADX WARN: Code duplicated, block: B:25:0x004f  */
    /* JADX WARN: Code duplicated, block: B:27:0x0053  */
    /* JADX WARN: Code duplicated, block: B:29:0x0065  */
    /* JADX WARN: Code duplicated, block: B:31:0x0069  */
    /* JADX WARN: Code duplicated, block: B:9:0x0011  */
    public boolean e(MotionEvent motionEvent, int i10) {
        boolean z6;
        boolean z10;
        ListViewAutoScrollHelper listViewAutoScrollHelper;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 1) {
            if (actionMasked != 2) {
                if (actionMasked != 3) {
                    z6 = true;
                    z10 = false;
                } else {
                    z10 = false;
                    z6 = false;
                }
                if (z6 || z10) {
                    a();
                }
                if (z6) {
                    if (this.mScrollHelper == null) {
                        this.mScrollHelper = new ListViewAutoScrollHelper(this);
                    }
                    this.mScrollHelper.m(true);
                    this.mScrollHelper.onTouch(this, motionEvent);
                } else {
                    listViewAutoScrollHelper = this.mScrollHelper;
                    if (listViewAutoScrollHelper != null) {
                        listViewAutoScrollHelper.m(false);
                    }
                }
                return z6;
            }
            z6 = true;
        } else {
            z6 = false;
        }
        int iFindPointerIndex = motionEvent.findPointerIndex(i10);
        if (iFindPointerIndex < 0) {
            z10 = false;
            z6 = false;
        } else {
            int x6 = (int) motionEvent.getX(iFindPointerIndex);
            int y6 = (int) motionEvent.getY(iFindPointerIndex);
            int iPointToPosition = pointToPosition(x6, y6);
            if (iPointToPosition == -1) {
                z10 = true;
            } else {
                View childAt = getChildAt(iPointToPosition - getFirstVisiblePosition());
                i(childAt, iPointToPosition, x6, y6);
                if (actionMasked == 1) {
                    b(childAt, iPointToPosition);
                }
                z6 = true;
                z10 = false;
            }
        }
        if (z6) {
            a();
        } else {
            a();
        }
        if (z6) {
            if (this.mScrollHelper == null) {
                this.mScrollHelper = new ListViewAutoScrollHelper(this);
            }
            this.mScrollHelper.m(true);
            this.mScrollHelper.onTouch(this, motionEvent);
        } else {
            listViewAutoScrollHelper = this.mScrollHelper;
            if (listViewAutoScrollHelper != null) {
                listViewAutoScrollHelper.m(false);
            }
        }
        return z6;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.mMotionPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        ResolveHoverRunnable resolveHoverRunnable = this.mResolveHoverRunnable;
        if (resolveHoverRunnable != null) {
            resolveHoverRunnable.a();
        }
        return super.onTouchEvent(motionEvent);
    }
}
