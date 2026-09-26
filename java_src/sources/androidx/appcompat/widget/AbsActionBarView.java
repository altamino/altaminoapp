package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListener;

/* JADX INFO: loaded from: classes6.dex */
abstract class AbsActionBarView extends ViewGroup {
    private static final int FADE_DURATION = 200;
    protected ActionMenuPresenter mActionMenuPresenter;
    protected int mContentHeight;
    private boolean mEatingHover;
    private boolean mEatingTouch;
    protected ActionMenuView mMenuView;
    protected final Context mPopupContext;
    protected final VisibilityAnimListener mVisAnimListener;
    protected ViewPropertyAnimatorCompat mVisibilityAnim;

    /* JADX INFO: renamed from: androidx.appcompat.widget.AbsActionBarView$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes5.dex */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ AbsActionBarView this$0;

        @Override // java.lang.Runnable
        public void run() {
            this.this$0.g();
        }
    }

    protected class VisibilityAnimListener implements ViewPropertyAnimatorListener {
        private boolean mCanceled = false;
        int mFinalVisibility;

        @Override // androidx.core.view.ViewPropertyAnimatorListener
        public void a(View view) {
            this.mCanceled = true;
        }

        protected VisibilityAnimListener() {
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListener
        public void b(View view) {
            if (this.mCanceled) {
                return;
            }
            AbsActionBarView absActionBarView = AbsActionBarView.this;
            absActionBarView.mVisibilityAnim = null;
            AbsActionBarView.super.setVisibility(this.mFinalVisibility);
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListener
        public void c(View view) {
            AbsActionBarView.super.setVisibility(0);
            this.mCanceled = false;
        }

        public VisibilityAnimListener d(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, int i10) {
            AbsActionBarView.this.mVisibilityAnim = viewPropertyAnimatorCompat;
            this.mFinalVisibility = i10;
            return this;
        }
    }

    AbsActionBarView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    protected static int d(int i10, int i11, boolean z6) {
        return z6 ? i10 - i11 : i10 + i11;
    }

    public int getContentHeight() {
        return this.mContentHeight;
    }

    AbsActionBarView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mVisAnimListener = new VisibilityAnimListener();
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(R.attr.actionBarPopupTheme, typedValue, true) || typedValue.resourceId == 0) {
            this.mPopupContext = context;
        } else {
            this.mPopupContext = new ContextThemeWrapper(context, typedValue.resourceId);
        }
    }

    protected int c(View view, int i10, int i11, int i12) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i10, Integer.MIN_VALUE), i11);
        return Math.max(0, (i10 - view.getMeasuredWidth()) - i12);
    }

    public ViewPropertyAnimatorCompat f(int i10, long j6) {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.mVisibilityAnim;
        if (viewPropertyAnimatorCompat != null) {
            viewPropertyAnimatorCompat.c();
        }
        if (i10 != 0) {
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompatB = ViewCompat.e(this).b(0.0f);
            viewPropertyAnimatorCompatB.f(j6);
            viewPropertyAnimatorCompatB.h(this.mVisAnimListener.d(viewPropertyAnimatorCompatB, i10));
            return viewPropertyAnimatorCompatB;
        }
        if (getVisibility() != 0) {
            setAlpha(0.0f);
        }
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompatB2 = ViewCompat.e(this).b(1.0f);
        viewPropertyAnimatorCompatB2.f(j6);
        viewPropertyAnimatorCompatB2.h(this.mVisAnimListener.d(viewPropertyAnimatorCompatB2, i10));
        return viewPropertyAnimatorCompatB2;
    }

    public boolean g() {
        ActionMenuPresenter actionMenuPresenter = this.mActionMenuPresenter;
        if (actionMenuPresenter != null) {
            return actionMenuPresenter.N();
        }
        return false;
    }

    public int getAnimatedVisibility() {
        return this.mVisibilityAnim != null ? this.mVisAnimListener.mFinalVisibility : getVisibility();
    }

    public void setContentHeight(int i10) {
        this.mContentHeight = i10;
        requestLayout();
    }

    protected int e(View view, int i10, int i11, int i12, boolean z6) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i13 = i11 + ((i12 - measuredHeight) / 2);
        if (z6) {
            view.layout(i10 - measuredWidth, i13, i10, measuredHeight + i13);
        } else {
            view.layout(i10, i13, i10 + measuredWidth, measuredHeight + i13);
        }
        if (z6) {
            return -measuredWidth;
        }
        return measuredWidth;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, R.styleable.ActionBar, R.attr.actionBarStyle, 0);
        setContentHeight(typedArrayObtainStyledAttributes.getLayoutDimension(R.styleable.ActionBar_height, 0));
        typedArrayObtainStyledAttributes.recycle();
        ActionMenuPresenter actionMenuPresenter = this.mActionMenuPresenter;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.I(configuration);
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.mEatingHover = false;
        }
        if (!this.mEatingHover) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.mEatingHover = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.mEatingHover = false;
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.mEatingTouch = false;
        }
        if (!this.mEatingTouch) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.mEatingTouch = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.mEatingTouch = false;
        }
        return true;
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        if (i10 != getVisibility()) {
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.mVisibilityAnim;
            if (viewPropertyAnimatorCompat != null) {
                viewPropertyAnimatorCompat.c();
            }
            super.setVisibility(i10);
        }
    }
}
