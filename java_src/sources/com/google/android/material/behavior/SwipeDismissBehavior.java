package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.widget.ViewDragHelper;

/* JADX INFO: loaded from: classes4.dex */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {
    private static final float DEFAULT_ALPHA_END_DISTANCE = 0.5f;
    private static final float DEFAULT_ALPHA_START_DISTANCE = 0.0f;
    private static final float DEFAULT_DRAG_DISMISS_THRESHOLD = 0.5f;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    public static final int SWIPE_DIRECTION_ANY = 2;
    public static final int SWIPE_DIRECTION_END_TO_START = 1;
    public static final int SWIPE_DIRECTION_START_TO_END = 0;
    private boolean interceptingEvents;
    c listener;
    private boolean sensitivitySet;
    ViewDragHelper viewDragHelper;
    private float sensitivity = 0.0f;
    int swipeDirection = 2;
    float dragDismissThreshold = 0.5f;
    float alphaStartSwipeDistance = 0.0f;
    float alphaEndSwipeDistance = 0.5f;
    private final ViewDragHelper.Callback dragCallback = new a();

    class a extends ViewDragHelper.Callback {
        private static final int INVALID_POINTER_ID = -1;
        private int activePointerId = -1;
        private int originalCapturedViewLeft;

        private boolean a(@NonNull View view, float f) {
            if (f == 0.0f) {
                return Math.abs(view.getLeft() - this.originalCapturedViewLeft) >= Math.round(((float) view.getWidth()) * SwipeDismissBehavior.this.dragDismissThreshold);
            }
            boolean z6 = ViewCompat.D(view) == 1;
            int i10 = SwipeDismissBehavior.this.swipeDirection;
            if (i10 == 2) {
                return true;
            }
            if (i10 == 0) {
                if (z6) {
                    if (f >= 0.0f) {
                        return false;
                    }
                } else if (f <= 0.0f) {
                    return false;
                }
                return true;
            }
            if (i10 != 1) {
                return false;
            }
            if (z6) {
                if (f <= 0.0f) {
                    return false;
                }
            } else if (f >= 0.0f) {
                return false;
            }
            return true;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewReleased(@NonNull View view, float f, float f6) {
            int i10;
            boolean z6;
            c cVar;
            this.activePointerId = -1;
            int width = view.getWidth();
            if (a(view, f)) {
                int left = view.getLeft();
                int i11 = this.originalCapturedViewLeft;
                i10 = left < i11 ? i11 - width : i11 + width;
                z6 = true;
            } else {
                i10 = this.originalCapturedViewLeft;
                z6 = false;
            }
            if (SwipeDismissBehavior.this.viewDragHelper.P(i10, view.getTop())) {
                ViewCompat.l0(view, new d(view, z6));
            } else {
                if (!z6 || (cVar = SwipeDismissBehavior.this.listener) == null) {
                    return;
                }
                cVar.a(view);
            }
        }

        a() {
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewCaptured(@NonNull View view, int i10) {
            this.activePointerId = i10;
            this.originalCapturedViewLeft = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int i10) {
            c cVar = SwipeDismissBehavior.this.listener;
            if (cVar != null) {
                cVar.b(i10);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewPositionChanged(@NonNull View view, int i10, int i11, int i12, int i13) {
            float width = this.originalCapturedViewLeft + (view.getWidth() * SwipeDismissBehavior.this.alphaStartSwipeDistance);
            float width2 = this.originalCapturedViewLeft + (view.getWidth() * SwipeDismissBehavior.this.alphaEndSwipeDistance);
            float f = i10;
            if (f <= width) {
                view.setAlpha(1.0f);
            } else if (f >= width2) {
                view.setAlpha(0.0f);
            } else {
                view.setAlpha(SwipeDismissBehavior.b(0.0f, 1.0f - SwipeDismissBehavior.d(width, width2, f), 1.0f));
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(View view, int i10) {
            int i11 = this.activePointerId;
            return (i11 == -1 || i11 == i10) && SwipeDismissBehavior.this.a(view);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionHorizontal(@NonNull View view, int i10, int i11) {
            boolean z6;
            int width;
            int width2;
            int width3;
            if (ViewCompat.D(view) == 1) {
                z6 = true;
            } else {
                z6 = false;
            }
            int i12 = SwipeDismissBehavior.this.swipeDirection;
            if (i12 == 0) {
                if (z6) {
                    width = this.originalCapturedViewLeft - view.getWidth();
                    width2 = this.originalCapturedViewLeft;
                } else {
                    width = this.originalCapturedViewLeft;
                    width3 = view.getWidth();
                    width2 = width3 + width;
                }
            } else if (i12 == 1) {
                if (z6) {
                    width = this.originalCapturedViewLeft;
                    width3 = view.getWidth();
                    width2 = width3 + width;
                } else {
                    width = this.originalCapturedViewLeft - view.getWidth();
                    width2 = this.originalCapturedViewLeft;
                }
            } else {
                width = this.originalCapturedViewLeft - view.getWidth();
                width2 = view.getWidth() + this.originalCapturedViewLeft;
            }
            return SwipeDismissBehavior.clamp(width, i10, width2);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(@NonNull View view, int i10, int i11) {
            return view.getTop();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int getViewHorizontalDragRange(@NonNull View view) {
            return view.getWidth();
        }
    }

    class b implements AccessibilityViewCommand {
        b() {
        }

        @Override // androidx.core.view.accessibility.AccessibilityViewCommand
        public boolean a(@NonNull View view, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
            if (!SwipeDismissBehavior.this.a(view)) {
                return false;
            }
            boolean z6 = ViewCompat.D(view) == 1;
            int i10 = SwipeDismissBehavior.this.swipeDirection;
            ViewCompat.d0(view, (!(i10 == 0 && z6) && (i10 != 1 || z6)) ? view.getWidth() : -view.getWidth());
            view.setAlpha(0.0f);
            c cVar = SwipeDismissBehavior.this.listener;
            if (cVar != null) {
                cVar.a(view);
            }
            return true;
        }
    }

    public interface c {
        void a(View view);

        void b(int i10);
    }

    private class d implements Runnable {
        private final boolean dismiss;
        private final View view;

        d(View view, boolean z6) {
            this.view = view;
            this.dismiss = z6;
        }

        @Override // java.lang.Runnable
        public void run() {
            c cVar;
            ViewDragHelper viewDragHelper = SwipeDismissBehavior.this.viewDragHelper;
            if (viewDragHelper != null && viewDragHelper.n(true)) {
                ViewCompat.l0(this.view, this);
            } else {
                if (!this.dismiss || (cVar = SwipeDismissBehavior.this.listener) == null) {
                    return;
                }
                cVar.a(this.view);
            }
        }
    }

    static float d(float f, float f6, float f7) {
        return (f7 - f) / (f6 - f);
    }

    public boolean a(@NonNull View view) {
        return true;
    }

    public void e(float f) {
        this.alphaEndSwipeDistance = b(0.0f, f, 1.0f);
    }

    public void f(@Nullable c cVar) {
        this.listener = cVar;
    }

    public void g(float f) {
        this.alphaStartSwipeDistance = b(0.0f, f, 1.0f);
    }

    public void h(int i10) {
        this.swipeDirection = i10;
    }

    private void c(ViewGroup viewGroup) {
        if (this.viewDragHelper == null) {
            this.viewDragHelper = this.sensitivitySet ? ViewDragHelper.o(viewGroup, this.sensitivity, this.dragCallback) : ViewDragHelper.p(viewGroup, this.dragCallback);
        }
    }

    private void i(View view) {
        ViewCompat.n0(view, 1048576);
        if (a(view)) {
            ViewCompat.p0(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS, null, new b());
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, @NonNull MotionEvent motionEvent) {
        boolean zIsPointInChildBounds = this.interceptingEvents;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            zIsPointInChildBounds = coordinatorLayout.isPointInChildBounds(v5, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.interceptingEvents = zIsPointInChildBounds;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.interceptingEvents = false;
        }
        if (!zIsPointInChildBounds) {
            return false;
        }
        c(coordinatorLayout);
        return this.viewDragHelper.Q(motionEvent);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v5, MotionEvent motionEvent) {
        ViewDragHelper viewDragHelper = this.viewDragHelper;
        if (viewDragHelper == null) {
            return false;
        }
        viewDragHelper.G(motionEvent);
        return true;
    }

    static float b(float f, float f6, float f7) {
        return Math.min(Math.max(f, f6), f7);
    }

    static int clamp(int i10, int i11, int i12) {
        return Math.min(Math.max(i10, i11), i12);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, int i10) {
        boolean zOnLayoutChild = super.onLayoutChild(coordinatorLayout, v5, i10);
        if (ViewCompat.B(v5) == 0) {
            ViewCompat.F0(v5, 1);
            i(v5);
        }
        return zOnLayoutChild;
    }
}
