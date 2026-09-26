package androidx.customview.widget;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.SparseArrayCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeProviderCompat;
import androidx.core.view.accessibility.AccessibilityRecordCompat;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public abstract class ExploreByTouchHelper extends AccessibilityDelegateCompat {
    private static final String DEFAULT_CLASS_NAME = "android.view.View";
    public static final int HOST_ID = -1;
    public static final int INVALID_ID = Integer.MIN_VALUE;
    private static final Rect INVALID_PARENT_BOUNDS = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);
    private static final FocusStrategy.BoundsAdapter<AccessibilityNodeInfoCompat> NODE_ADAPTER = new FocusStrategy.BoundsAdapter<AccessibilityNodeInfoCompat>() { // from class: androidx.customview.widget.ExploreByTouchHelper.1
        @Override // androidx.customview.widget.FocusStrategy.BoundsAdapter
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, Rect rect) {
            accessibilityNodeInfoCompat.m(rect);
        }
    };
    private static final FocusStrategy.CollectionAdapter<SparseArrayCompat<AccessibilityNodeInfoCompat>, AccessibilityNodeInfoCompat> SPARSE_VALUES_ADAPTER = new FocusStrategy.CollectionAdapter<SparseArrayCompat<AccessibilityNodeInfoCompat>, AccessibilityNodeInfoCompat>() { // from class: androidx.customview.widget.ExploreByTouchHelper.2
        @Override // androidx.customview.widget.FocusStrategy.CollectionAdapter
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public AccessibilityNodeInfoCompat a(SparseArrayCompat<AccessibilityNodeInfoCompat> sparseArrayCompat, int i10) {
            return sparseArrayCompat.s(i10);
        }

        @Override // androidx.customview.widget.FocusStrategy.CollectionAdapter
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public int b(SparseArrayCompat<AccessibilityNodeInfoCompat> sparseArrayCompat) {
            return sparseArrayCompat.r();
        }
    };
    private final View mHost;
    private final AccessibilityManager mManager;
    private MyNodeProvider mNodeProvider;
    private final Rect mTempScreenRect = new Rect();
    private final Rect mTempParentRect = new Rect();
    private final Rect mTempVisibleRect = new Rect();
    private final int[] mTempGlobalRect = new int[2];
    int mAccessibilityFocusedVirtualViewId = Integer.MIN_VALUE;
    int mKeyboardFocusedVirtualViewId = Integer.MIN_VALUE;
    private int mHoveredVirtualViewId = Integer.MIN_VALUE;

    private class MyNodeProvider extends AccessibilityNodeProviderCompat {
        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public AccessibilityNodeInfoCompat d(int i10) {
            int i11 = i10 == 2 ? ExploreByTouchHelper.this.mAccessibilityFocusedVirtualViewId : ExploreByTouchHelper.this.mKeyboardFocusedVirtualViewId;
            if (i11 == Integer.MIN_VALUE) {
                return null;
            }
            return b(i11);
        }

        MyNodeProvider() {
        }

        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public AccessibilityNodeInfoCompat b(int i10) {
            return AccessibilityNodeInfoCompat.S(ExploreByTouchHelper.this.u(i10));
        }

        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public boolean f(int i10, int i11, Bundle bundle) {
            return ExploreByTouchHelper.this.C(i10, i11, bundle);
        }
    }

    private boolean D(int i10, int i11, Bundle bundle) {
        if (i11 == 1) {
            return G(i10);
        }
        if (i11 == 2) {
            return b(i10);
        }
        if (i11 != 64) {
            return i11 != 128 ? w(i10, i11, bundle) : a(i10);
        }
        return F(i10);
    }

    private AccessibilityEvent d(int i10, int i11) {
        return i10 != -1 ? e(i10, i11) : f(i11);
    }

    private boolean r(Rect rect) {
        if (rect == null || rect.isEmpty() || this.mHost.getWindowVisibility() != 0) {
            return false;
        }
        Object parent = this.mHost.getParent();
        while (parent instanceof View) {
            View view = (View) parent;
            if (view.getAlpha() <= 0.0f || view.getVisibility() != 0) {
                return false;
            }
            parent = view.getParent();
        }
        return parent != null;
    }

    private static int s(int i10) {
        if (i10 == 19) {
            return 33;
        }
        if (i10 != 21) {
            return i10 != 22 ? 130 : 66;
        }
        return 17;
    }

    protected abstract void A(int i10, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat);

    protected void B(int i10, boolean z6) {
    }

    boolean C(int i10, int i11, Bundle bundle) {
        return i10 != -1 ? D(i10, i11, bundle) : E(i11, bundle);
    }

    public final int k() {
        return this.mAccessibilityFocusedVirtualViewId;
    }

    public final int n() {
        return this.mKeyboardFocusedVirtualViewId;
    }

    protected abstract int o(float f, float f6);

    protected abstract void p(List<Integer> list);

    @NonNull
    AccessibilityNodeInfoCompat u(int i10) {
        return i10 == -1 ? h() : g(i10);
    }

    protected abstract boolean w(int i10, int i11, @Nullable Bundle bundle);

    protected void x(@NonNull AccessibilityEvent accessibilityEvent) {
    }

    protected void y(int i10, @NonNull AccessibilityEvent accessibilityEvent) {
    }

    protected void z(@NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
    }

    private boolean E(int i10, Bundle bundle) {
        return ViewCompat.i0(this.mHost, i10, bundle);
    }

    private boolean F(int i10) {
        int i11;
        if (!this.mManager.isEnabled() || !this.mManager.isTouchExplorationEnabled() || (i11 = this.mAccessibilityFocusedVirtualViewId) == i10) {
            return false;
        }
        if (i11 != Integer.MIN_VALUE) {
            a(i11);
        }
        this.mAccessibilityFocusedVirtualViewId = i10;
        this.mHost.invalidate();
        H(i10, 32768);
        return true;
    }

    private void I(int i10) {
        int i11 = this.mHoveredVirtualViewId;
        if (i11 == i10) {
            return;
        }
        this.mHoveredVirtualViewId = i10;
        H(i10, 128);
        H(i11, 256);
    }

    private boolean a(int i10) {
        if (this.mAccessibilityFocusedVirtualViewId != i10) {
            return false;
        }
        this.mAccessibilityFocusedVirtualViewId = Integer.MIN_VALUE;
        this.mHost.invalidate();
        H(i10, 65536);
        return true;
    }

    private boolean c() {
        int i10 = this.mKeyboardFocusedVirtualViewId;
        return i10 != Integer.MIN_VALUE && w(i10, 16, null);
    }

    @NonNull
    private AccessibilityNodeInfoCompat h() {
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompatR = AccessibilityNodeInfoCompat.R(this.mHost);
        ViewCompat.g0(this.mHost, accessibilityNodeInfoCompatR);
        ArrayList arrayList = new ArrayList();
        p(arrayList);
        if (accessibilityNodeInfoCompatR.o() > 0 && arrayList.size() > 0) {
            throw new RuntimeException("Views cannot have both real and virtual children");
        }
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            accessibilityNodeInfoCompatR.d(this.mHost, ((Integer) arrayList.get(i10)).intValue());
        }
        return accessibilityNodeInfoCompatR;
    }

    private SparseArrayCompat<AccessibilityNodeInfoCompat> l() {
        ArrayList arrayList = new ArrayList();
        p(arrayList);
        SparseArrayCompat<AccessibilityNodeInfoCompat> sparseArrayCompat = new SparseArrayCompat<>();
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            sparseArrayCompat.o(arrayList.get(i10).intValue(), g(arrayList.get(i10).intValue()));
        }
        return sparseArrayCompat;
    }

    public final boolean G(int i10) {
        int i11;
        if ((!this.mHost.isFocused() && !this.mHost.requestFocus()) || (i11 = this.mKeyboardFocusedVirtualViewId) == i10) {
            return false;
        }
        if (i11 != Integer.MIN_VALUE) {
            b(i11);
        }
        if (i10 == Integer.MIN_VALUE) {
            return false;
        }
        this.mKeyboardFocusedVirtualViewId = i10;
        B(i10, true);
        H(i10, 8);
        return true;
    }

    public final boolean H(int i10, int i11) {
        ViewParent parent;
        if (i10 == Integer.MIN_VALUE || !this.mManager.isEnabled() || (parent = this.mHost.getParent()) == null) {
            return false;
        }
        return parent.requestSendAccessibilityEvent(this.mHost, d(i10, i11));
    }

    public final boolean b(int i10) {
        if (this.mKeyboardFocusedVirtualViewId != i10) {
            return false;
        }
        this.mKeyboardFocusedVirtualViewId = Integer.MIN_VALUE;
        B(i10, false);
        H(i10, 8);
        return true;
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View view) {
        if (this.mNodeProvider == null) {
            this.mNodeProvider = new MyNodeProvider();
        }
        return this.mNodeProvider;
    }

    public final boolean i(@NonNull MotionEvent motionEvent) {
        if (!this.mManager.isEnabled() || !this.mManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 7 || action == 9) {
            int iO = o(motionEvent.getX(), motionEvent.getY());
            I(iO);
            return iO != Integer.MIN_VALUE;
        }
        if (action != 10 || this.mHoveredVirtualViewId == Integer.MIN_VALUE) {
            return false;
        }
        I(Integer.MIN_VALUE);
        return true;
    }

    public final void v(boolean z6, int i10, @Nullable Rect rect) {
        int i11 = this.mKeyboardFocusedVirtualViewId;
        if (i11 != Integer.MIN_VALUE) {
            b(i11);
        }
        if (z6) {
            t(i10, rect);
        }
    }

    public ExploreByTouchHelper(@NonNull View view) {
        if (view != null) {
            this.mHost = view;
            this.mManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
            view.setFocusable(true);
            if (ViewCompat.B(view) == 0) {
                ViewCompat.F0(view, 1);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("View may not be null");
    }

    private AccessibilityEvent e(int i10, int i11) {
        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(i11);
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompatU = u(i10);
        accessibilityEventObtain.getText().add(accessibilityNodeInfoCompatU.y());
        accessibilityEventObtain.setContentDescription(accessibilityNodeInfoCompatU.r());
        accessibilityEventObtain.setScrollable(accessibilityNodeInfoCompatU.M());
        accessibilityEventObtain.setPassword(accessibilityNodeInfoCompatU.L());
        accessibilityEventObtain.setEnabled(accessibilityNodeInfoCompatU.H());
        accessibilityEventObtain.setChecked(accessibilityNodeInfoCompatU.F());
        y(i10, accessibilityEventObtain);
        if (accessibilityEventObtain.getText().isEmpty() && accessibilityEventObtain.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
        }
        accessibilityEventObtain.setClassName(accessibilityNodeInfoCompatU.p());
        AccessibilityRecordCompat.c(accessibilityEventObtain, this.mHost, i10);
        accessibilityEventObtain.setPackageName(this.mHost.getContext().getPackageName());
        return accessibilityEventObtain;
    }

    private AccessibilityEvent f(int i10) {
        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(i10);
        this.mHost.onInitializeAccessibilityEvent(accessibilityEventObtain);
        return accessibilityEventObtain;
    }

    @NonNull
    private AccessibilityNodeInfoCompat g(int i10) {
        boolean z6;
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompatQ = AccessibilityNodeInfoCompat.Q();
        accessibilityNodeInfoCompatQ.m0(true);
        accessibilityNodeInfoCompatQ.o0(true);
        accessibilityNodeInfoCompatQ.e0("android.view.View");
        Rect rect = INVALID_PARENT_BOUNDS;
        accessibilityNodeInfoCompatQ.Z(rect);
        accessibilityNodeInfoCompatQ.a0(rect);
        accessibilityNodeInfoCompatQ.z0(this.mHost);
        A(i10, accessibilityNodeInfoCompatQ);
        if (accessibilityNodeInfoCompatQ.y() == null && accessibilityNodeInfoCompatQ.r() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        accessibilityNodeInfoCompatQ.m(this.mTempParentRect);
        if (!this.mTempParentRect.equals(rect)) {
            int iK = accessibilityNodeInfoCompatQ.k();
            if ((iK & 64) == 0) {
                if ((iK & 128) == 0) {
                    accessibilityNodeInfoCompatQ.x0(this.mHost.getContext().getPackageName());
                    accessibilityNodeInfoCompatQ.J0(this.mHost, i10);
                    if (this.mAccessibilityFocusedVirtualViewId == i10) {
                        accessibilityNodeInfoCompatQ.X(true);
                        accessibilityNodeInfoCompatQ.a(128);
                    } else {
                        accessibilityNodeInfoCompatQ.X(false);
                        accessibilityNodeInfoCompatQ.a(64);
                    }
                    if (this.mKeyboardFocusedVirtualViewId == i10) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (z6) {
                        accessibilityNodeInfoCompatQ.a(2);
                    } else if (accessibilityNodeInfoCompatQ.I()) {
                        accessibilityNodeInfoCompatQ.a(1);
                    }
                    accessibilityNodeInfoCompatQ.p0(z6);
                    this.mHost.getLocationOnScreen(this.mTempGlobalRect);
                    accessibilityNodeInfoCompatQ.n(this.mTempScreenRect);
                    if (this.mTempScreenRect.equals(rect)) {
                        accessibilityNodeInfoCompatQ.m(this.mTempScreenRect);
                        if (accessibilityNodeInfoCompatQ.mParentVirtualDescendantId != -1) {
                            AccessibilityNodeInfoCompat accessibilityNodeInfoCompatQ2 = AccessibilityNodeInfoCompat.Q();
                            for (int i11 = accessibilityNodeInfoCompatQ.mParentVirtualDescendantId; i11 != -1; i11 = accessibilityNodeInfoCompatQ2.mParentVirtualDescendantId) {
                                accessibilityNodeInfoCompatQ2.A0(this.mHost, -1);
                                accessibilityNodeInfoCompatQ2.Z(INVALID_PARENT_BOUNDS);
                                A(i11, accessibilityNodeInfoCompatQ2);
                                accessibilityNodeInfoCompatQ2.m(this.mTempParentRect);
                                Rect rect2 = this.mTempScreenRect;
                                Rect rect3 = this.mTempParentRect;
                                rect2.offset(rect3.left, rect3.top);
                            }
                            accessibilityNodeInfoCompatQ2.U();
                        }
                        this.mTempScreenRect.offset(this.mTempGlobalRect[0] - this.mHost.getScrollX(), this.mTempGlobalRect[1] - this.mHost.getScrollY());
                    }
                    if (this.mHost.getLocalVisibleRect(this.mTempVisibleRect)) {
                        this.mTempVisibleRect.offset(this.mTempGlobalRect[0] - this.mHost.getScrollX(), this.mTempGlobalRect[1] - this.mHost.getScrollY());
                        if (this.mTempScreenRect.intersect(this.mTempVisibleRect)) {
                            accessibilityNodeInfoCompatQ.a0(this.mTempScreenRect);
                            if (r(this.mTempScreenRect)) {
                                accessibilityNodeInfoCompatQ.P0(true);
                            }
                        }
                    }
                    return accessibilityNodeInfoCompatQ;
                }
                throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
            }
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
    }

    private void m(int i10, Rect rect) {
        u(i10).m(rect);
    }

    private static Rect q(@NonNull View view, int i10, @NonNull Rect rect) {
        int width = view.getWidth();
        int height = view.getHeight();
        if (i10 != 17) {
            if (i10 != 33) {
                if (i10 != 66) {
                    if (i10 == 130) {
                        rect.set(0, -1, width, -1);
                    } else {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                } else {
                    rect.set(-1, 0, -1, height);
                }
            } else {
                rect.set(0, height, width, height);
            }
        } else {
            rect.set(width, 0, width, height);
        }
        return rect;
    }

    private boolean t(int i10, @Nullable Rect rect) {
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompatJ;
        boolean z6;
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat;
        SparseArrayCompat<AccessibilityNodeInfoCompat> sparseArrayCompatL = l();
        int i11 = this.mKeyboardFocusedVirtualViewId;
        int iN = Integer.MIN_VALUE;
        if (i11 == Integer.MIN_VALUE) {
            accessibilityNodeInfoCompatJ = null;
        } else {
            accessibilityNodeInfoCompatJ = sparseArrayCompatL.j(i11);
        }
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2 = accessibilityNodeInfoCompatJ;
        if (i10 != 1 && i10 != 2) {
            if (i10 != 17 && i10 != 33 && i10 != 66 && i10 != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            Rect rect2 = new Rect();
            int i12 = this.mKeyboardFocusedVirtualViewId;
            if (i12 != Integer.MIN_VALUE) {
                m(i12, rect2);
            } else if (rect != null) {
                rect2.set(rect);
            } else {
                q(this.mHost, i10, rect2);
            }
            accessibilityNodeInfoCompat = (AccessibilityNodeInfoCompat) FocusStrategy.c(sparseArrayCompatL, SPARSE_VALUES_ADAPTER, NODE_ADAPTER, accessibilityNodeInfoCompat2, rect2, i10);
        } else {
            if (ViewCompat.D(this.mHost) == 1) {
                z6 = true;
            } else {
                z6 = false;
            }
            accessibilityNodeInfoCompat = (AccessibilityNodeInfoCompat) FocusStrategy.d(sparseArrayCompatL, SPARSE_VALUES_ADAPTER, NODE_ADAPTER, accessibilityNodeInfoCompat2, i10, z6, false);
        }
        if (accessibilityNodeInfoCompat != null) {
            iN = sparseArrayCompatL.n(sparseArrayCompatL.m(accessibilityNodeInfoCompat));
        }
        return G(iN);
    }

    public final boolean j(@NonNull KeyEvent keyEvent) {
        int i10 = 0;
        if (keyEvent.getAction() == 1) {
            return false;
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyCode != 61) {
            if (keyCode != 66) {
                switch (keyCode) {
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                        if (!keyEvent.hasNoModifiers()) {
                            return false;
                        }
                        int iS = s(keyCode);
                        int repeatCount = keyEvent.getRepeatCount() + 1;
                        boolean z6 = false;
                        while (i10 < repeatCount && t(iS, null)) {
                            i10++;
                            z6 = true;
                        }
                        return z6;
                    case 23:
                        break;
                    default:
                        return false;
                }
            }
            if (!keyEvent.hasNoModifiers() || keyEvent.getRepeatCount() != 0) {
                return false;
            }
            c();
            return true;
        }
        if (keyEvent.hasNoModifiers()) {
            return t(2, null);
        }
        if (!keyEvent.hasModifiers(1)) {
            return false;
        }
        return t(1, null);
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        x(accessibilityEvent);
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        z(accessibilityNodeInfoCompat);
    }
}
