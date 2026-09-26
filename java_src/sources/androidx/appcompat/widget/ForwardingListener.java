package androidx.appcompat.widget;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.ShowableListMenu;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo
public abstract class ForwardingListener implements View.OnTouchListener, View.OnAttachStateChangeListener {
    private int mActivePointerId;
    private Runnable mDisallowIntercept;
    private boolean mForwarding;
    private final int mLongPressTimeout;
    private final float mScaledTouchSlop;
    final View mSrc;
    private final int mTapTimeout;
    private final int[] mTmpLocation = new int[2];
    private Runnable mTriggerLongPress;

    private class DisallowIntercept implements Runnable {
        DisallowIntercept() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewParent parent = ForwardingListener.this.mSrc.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
    }

    private class TriggerLongPress implements Runnable {
        TriggerLongPress() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForwardingListener.this.e();
        }
    }

    private static boolean h(View view, float f, float f6, float f7) {
        float f10 = -f7;
        return f >= f10 && f6 >= f10 && f < ((float) (view.getRight() - view.getLeft())) + f7 && f6 < ((float) (view.getBottom() - view.getTop())) + f7;
    }

    public abstract ShowableListMenu b();

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        this.mForwarding = false;
        this.mActivePointerId = -1;
        Runnable runnable = this.mDisallowIntercept;
        if (runnable != null) {
            this.mSrc.removeCallbacks(runnable);
        }
    }

    private void a() {
        Runnable runnable = this.mTriggerLongPress;
        if (runnable != null) {
            this.mSrc.removeCallbacks(runnable);
        }
        Runnable runnable2 = this.mDisallowIntercept;
        if (runnable2 != null) {
            this.mSrc.removeCallbacks(runnable2);
        }
    }

    private boolean f(MotionEvent motionEvent) {
        DropDownListView dropDownListView;
        View view = this.mSrc;
        ShowableListMenu showableListMenuB = b();
        if (showableListMenuB == null || !showableListMenuB.isShowing() || (dropDownListView = (DropDownListView) showableListMenuB.i()) == null || !dropDownListView.isShown()) {
            return false;
        }
        MotionEvent motionEventObtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
        i(view, motionEventObtainNoHistory);
        j(dropDownListView, motionEventObtainNoHistory);
        boolean zE = dropDownListView.e(motionEventObtainNoHistory, this.mActivePointerId);
        motionEventObtainNoHistory.recycle();
        int actionMasked = motionEvent.getActionMasked();
        return zE && (actionMasked != 1 && actionMasked != 3);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x003d  */
    private boolean g(MotionEvent motionEvent) {
        View view = this.mSrc;
        if (!view.isEnabled()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.mActivePointerId = motionEvent.getPointerId(0);
            if (this.mDisallowIntercept == null) {
                this.mDisallowIntercept = new DisallowIntercept();
            }
            view.postDelayed(this.mDisallowIntercept, this.mTapTimeout);
            if (this.mTriggerLongPress == null) {
                this.mTriggerLongPress = new TriggerLongPress();
            }
            view.postDelayed(this.mTriggerLongPress, this.mLongPressTimeout);
        } else if (actionMasked == 1) {
            a();
        } else if (actionMasked == 2) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
            if (iFindPointerIndex >= 0 && !h(view, motionEvent.getX(iFindPointerIndex), motionEvent.getY(iFindPointerIndex), this.mScaledTouchSlop)) {
                a();
                view.getParent().requestDisallowInterceptTouchEvent(true);
                return true;
            }
        } else if (actionMasked == 3) {
            a();
        }
        return false;
    }

    private boolean i(View view, MotionEvent motionEvent) {
        int[] iArr = this.mTmpLocation;
        view.getLocationOnScreen(iArr);
        motionEvent.offsetLocation(iArr[0], iArr[1]);
        return true;
    }

    private boolean j(View view, MotionEvent motionEvent) {
        int[] iArr = this.mTmpLocation;
        view.getLocationOnScreen(iArr);
        motionEvent.offsetLocation(-iArr[0], -iArr[1]);
        return true;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z6;
        boolean z10 = this.mForwarding;
        if (z10) {
            z6 = f(motionEvent) || !d();
        } else {
            z6 = g(motionEvent) && c();
            if (z6) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                this.mSrc.onTouchEvent(motionEventObtain);
                motionEventObtain.recycle();
            }
        }
        this.mForwarding = z6;
        return z6 || z10;
    }

    public ForwardingListener(View view) {
        this.mSrc = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.mScaledTouchSlop = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.mTapTimeout = tapTimeout;
        this.mLongPressTimeout = (tapTimeout + ViewConfiguration.getLongPressTimeout()) / 2;
    }

    protected boolean c() {
        ShowableListMenu showableListMenuB = b();
        if (showableListMenuB != null && !showableListMenuB.isShowing()) {
            showableListMenuB.show();
            return true;
        }
        return true;
    }

    protected boolean d() {
        ShowableListMenu showableListMenuB = b();
        if (showableListMenuB != null && showableListMenuB.isShowing()) {
            showableListMenuB.dismiss();
            return true;
        }
        return true;
    }

    void e() {
        a();
        View view = this.mSrc;
        if (!view.isEnabled() || view.isLongClickable() || !c()) {
            return;
        }
        view.getParent().requestDisallowInterceptTouchEvent(true);
        long jUptimeMillis = SystemClock.uptimeMillis();
        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
        view.onTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
        this.mForwarding = true;
    }
}
