package androidx.appcompat.widget;

import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityManager;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewConfigurationCompat;

/* JADX INFO: loaded from: classes2.dex */
@RestrictTo
class TooltipCompatHandler implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {
    private static final long HOVER_HIDE_TIMEOUT_MS = 15000;
    private static final long HOVER_HIDE_TIMEOUT_SHORT_MS = 3000;
    private static final long LONG_CLICK_HIDE_TIMEOUT_MS = 2500;
    private static final String TAG = "TooltipCompatHandler";
    private static TooltipCompatHandler sActiveHandler;
    private static TooltipCompatHandler sPendingHandler;
    private final View mAnchor;
    private int mAnchorX;
    private int mAnchorY;
    private boolean mFromTouch;
    private final int mHoverSlop;
    private TooltipPopup mPopup;
    private final CharSequence mTooltipText;
    private final Runnable mShowRunnable = new Runnable() { // from class: androidx.appcompat.widget.TooltipCompatHandler.1
        @Override // java.lang.Runnable
        public void run() {
            TooltipCompatHandler.this.g(false);
        }
    };
    private final Runnable mHideRunnable = new Runnable() { // from class: androidx.appcompat.widget.TooltipCompatHandler.2
        @Override // java.lang.Runnable
        public void run() {
            TooltipCompatHandler.this.c();
        }
    };

    private void b() {
        this.mAnchorX = Integer.MAX_VALUE;
        this.mAnchorY = Integer.MAX_VALUE;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    private void a() {
        this.mAnchor.removeCallbacks(this.mShowRunnable);
    }

    private void d() {
        this.mAnchor.postDelayed(this.mShowRunnable, ViewConfiguration.getLongPressTimeout());
    }

    private static void e(TooltipCompatHandler tooltipCompatHandler) {
        TooltipCompatHandler tooltipCompatHandler2 = sPendingHandler;
        if (tooltipCompatHandler2 != null) {
            tooltipCompatHandler2.a();
        }
        sPendingHandler = tooltipCompatHandler;
        if (tooltipCompatHandler != null) {
            tooltipCompatHandler.d();
        }
    }

    public static void f(View view, CharSequence charSequence) {
        TooltipCompatHandler tooltipCompatHandler = sPendingHandler;
        if (tooltipCompatHandler != null && tooltipCompatHandler.mAnchor == view) {
            e(null);
        }
        if (!TextUtils.isEmpty(charSequence)) {
            new TooltipCompatHandler(view, charSequence);
            return;
        }
        TooltipCompatHandler tooltipCompatHandler2 = sActiveHandler;
        if (tooltipCompatHandler2 != null && tooltipCompatHandler2.mAnchor == view) {
            tooltipCompatHandler2.c();
        }
        view.setOnLongClickListener(null);
        view.setLongClickable(false);
        view.setOnHoverListener(null);
    }

    void c() {
        if (sActiveHandler == this) {
            sActiveHandler = null;
            TooltipPopup tooltipPopup = this.mPopup;
            if (tooltipPopup != null) {
                tooltipPopup.c();
                this.mPopup = null;
                b();
                this.mAnchor.removeOnAttachStateChangeListener(this);
            } else {
                Log.e(TAG, "sActiveHandler.mPopup == null");
            }
        }
        if (sPendingHandler == this) {
            e(null);
        }
        this.mAnchor.removeCallbacks(this.mHideRunnable);
    }

    void g(boolean z6) {
        long longPressTimeout;
        long j6;
        long j10;
        if (ViewCompat.W(this.mAnchor)) {
            e(null);
            TooltipCompatHandler tooltipCompatHandler = sActiveHandler;
            if (tooltipCompatHandler != null) {
                tooltipCompatHandler.c();
            }
            sActiveHandler = this;
            this.mFromTouch = z6;
            TooltipPopup tooltipPopup = new TooltipPopup(this.mAnchor.getContext());
            this.mPopup = tooltipPopup;
            tooltipPopup.e(this.mAnchor, this.mAnchorX, this.mAnchorY, this.mFromTouch, this.mTooltipText);
            this.mAnchor.addOnAttachStateChangeListener(this);
            if (this.mFromTouch) {
                j10 = LONG_CLICK_HIDE_TIMEOUT_MS;
            } else {
                if ((ViewCompat.P(this.mAnchor) & 1) == 1) {
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                    j6 = 3000;
                } else {
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                    j6 = 15000;
                }
                j10 = j6 - longPressTimeout;
            }
            this.mAnchor.removeCallbacks(this.mHideRunnable);
            this.mAnchor.postDelayed(this.mHideRunnable, j10);
        }
    }

    @Override // android.view.View.OnHoverListener
    public boolean onHover(View view, MotionEvent motionEvent) {
        if (this.mPopup != null && this.mFromTouch) {
            return false;
        }
        AccessibilityManager accessibilityManager = (AccessibilityManager) this.mAnchor.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 7) {
            if (action == 10) {
                b();
                c();
            }
        } else if (this.mAnchor.isEnabled() && this.mPopup == null && h(motionEvent)) {
            e(this);
        }
        return false;
    }

    private TooltipCompatHandler(View view, CharSequence charSequence) {
        this.mAnchor = view;
        this.mTooltipText = charSequence;
        this.mHoverSlop = ViewConfigurationCompat.c(ViewConfiguration.get(view.getContext()));
        b();
        view.setOnLongClickListener(this);
        view.setOnHoverListener(this);
    }

    private boolean h(MotionEvent motionEvent) {
        int x6 = (int) motionEvent.getX();
        int y6 = (int) motionEvent.getY();
        if (Math.abs(x6 - this.mAnchorX) <= this.mHoverSlop && Math.abs(y6 - this.mAnchorY) <= this.mHoverSlop) {
            return false;
        }
        this.mAnchorX = x6;
        this.mAnchorY = y6;
        return true;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        this.mAnchorX = view.getWidth() / 2;
        this.mAnchorY = view.getHeight() / 2;
        g(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        c();
    }
}
