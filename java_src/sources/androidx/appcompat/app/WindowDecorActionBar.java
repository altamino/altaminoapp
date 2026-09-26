package androidx.appcompat.app;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.ActionBarPolicy;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.ViewPropertyAnimatorCompatSet;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.DecorToolbar;
import androidx.appcompat.widget.ScrollingTabContainerView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListener;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
import androidx.core.view.ViewPropertyAnimatorUpdateListener;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentTransaction;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo
public class WindowDecorActionBar extends ActionBar implements ActionBarOverlayLayout.ActionBarVisibilityCallback {
    private static final long FADE_IN_DURATION_MS = 200;
    private static final long FADE_OUT_DURATION_MS = 100;
    private static final int INVALID_POSITION = -1;
    private static final String TAG = "WindowDecorActionBar";
    private static final Interpolator sHideInterpolator = new AccelerateInterpolator();
    private static final Interpolator sShowInterpolator = new DecelerateInterpolator();
    ActionModeImpl mActionMode;
    private Activity mActivity;
    ActionBarContainer mContainerView;
    View mContentView;
    Context mContext;
    ActionBarContextView mContextView;
    ViewPropertyAnimatorCompatSet mCurrentShowAnim;
    DecorToolbar mDecorToolbar;
    ActionMode mDeferredDestroyActionMode;
    ActionMode.Callback mDeferredModeDestroyCallback;
    private boolean mDisplayHomeAsUpSet;
    private boolean mHasEmbeddedTabs;
    boolean mHiddenByApp;
    boolean mHiddenBySystem;
    boolean mHideOnContentScroll;
    private boolean mLastMenuVisibility;
    ActionBarOverlayLayout mOverlayLayout;
    private TabImpl mSelectedTab;
    private boolean mShowHideAnimationEnabled;
    private boolean mShowingForMode;
    ScrollingTabContainerView mTabScrollView;
    private Context mThemedContext;
    private ArrayList<TabImpl> mTabs = new ArrayList<>();
    private int mSavedTabPosition = -1;
    private ArrayList<ActionBar.OnMenuVisibilityListener> mMenuVisibilityListeners = new ArrayList<>();
    private int mCurWindowVisibility = 0;
    boolean mContentAnimations = true;
    private boolean mNowShowing = true;
    final ViewPropertyAnimatorListener mHideListener = new ViewPropertyAnimatorListenerAdapter() { // from class: androidx.appcompat.app.WindowDecorActionBar.1
        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void b(View view) {
            View view2;
            WindowDecorActionBar windowDecorActionBar = WindowDecorActionBar.this;
            if (windowDecorActionBar.mContentAnimations && (view2 = windowDecorActionBar.mContentView) != null) {
                view2.setTranslationY(0.0f);
                WindowDecorActionBar.this.mContainerView.setTranslationY(0.0f);
            }
            WindowDecorActionBar.this.mContainerView.setVisibility(8);
            WindowDecorActionBar.this.mContainerView.setTransitioning(false);
            WindowDecorActionBar windowDecorActionBar2 = WindowDecorActionBar.this;
            windowDecorActionBar2.mCurrentShowAnim = null;
            windowDecorActionBar2.C();
            ActionBarOverlayLayout actionBarOverlayLayout = WindowDecorActionBar.this.mOverlayLayout;
            if (actionBarOverlayLayout != null) {
                ViewCompat.q0(actionBarOverlayLayout);
            }
        }
    };
    final ViewPropertyAnimatorListener mShowListener = new ViewPropertyAnimatorListenerAdapter() { // from class: androidx.appcompat.app.WindowDecorActionBar.2
        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void b(View view) {
            WindowDecorActionBar windowDecorActionBar = WindowDecorActionBar.this;
            windowDecorActionBar.mCurrentShowAnim = null;
            windowDecorActionBar.mContainerView.requestLayout();
        }
    };
    final ViewPropertyAnimatorUpdateListener mUpdateListener = new ViewPropertyAnimatorUpdateListener() { // from class: androidx.appcompat.app.WindowDecorActionBar.3
        @Override // androidx.core.view.ViewPropertyAnimatorUpdateListener
        public void a(View view) {
            ((View) WindowDecorActionBar.this.mContainerView.getParent()).invalidate();
        }
    };

    @RestrictTo
    public class ActionModeImpl extends ActionMode implements MenuBuilder.Callback {
        private final Context mActionModeContext;
        private ActionMode.Callback mCallback;
        private WeakReference<View> mCustomView;
        private final MenuBuilder mMenu;

        @Override // androidx.appcompat.view.ActionMode
        public Menu e() {
            return this.mMenu;
        }

        public ActionModeImpl(Context context, ActionMode.Callback callback) {
            this.mActionModeContext = context;
            this.mCallback = callback;
            MenuBuilder menuBuilderW = new MenuBuilder(context).W(1);
            this.mMenu = menuBuilderW;
            menuBuilderW.V(this);
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public boolean a(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
            ActionMode.Callback callback = this.mCallback;
            if (callback != null) {
                return callback.b(this, menuItem);
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public void b(@NonNull MenuBuilder menuBuilder) {
            if (this.mCallback == null) {
                return;
            }
            k();
            WindowDecorActionBar.this.mContextView.g();
        }

        @Override // androidx.appcompat.view.ActionMode
        public void c() {
            WindowDecorActionBar windowDecorActionBar = WindowDecorActionBar.this;
            if (windowDecorActionBar.mActionMode != this) {
                return;
            }
            if (WindowDecorActionBar.B(windowDecorActionBar.mHiddenByApp, windowDecorActionBar.mHiddenBySystem, false)) {
                this.mCallback.d(this);
            } else {
                WindowDecorActionBar windowDecorActionBar2 = WindowDecorActionBar.this;
                windowDecorActionBar2.mDeferredDestroyActionMode = this;
                windowDecorActionBar2.mDeferredModeDestroyCallback = this.mCallback;
            }
            this.mCallback = null;
            WindowDecorActionBar.this.A(false);
            WindowDecorActionBar.this.mContextView.h();
            WindowDecorActionBar windowDecorActionBar3 = WindowDecorActionBar.this;
            windowDecorActionBar3.mOverlayLayout.setHideOnContentScrollEnabled(windowDecorActionBar3.mHideOnContentScroll);
            WindowDecorActionBar.this.mActionMode = null;
        }

        @Override // androidx.appcompat.view.ActionMode
        public View d() {
            WeakReference<View> weakReference = this.mCustomView;
            if (weakReference != null) {
                return weakReference.get();
            }
            return null;
        }

        @Override // androidx.appcompat.view.ActionMode
        public MenuInflater f() {
            return new SupportMenuInflater(this.mActionModeContext);
        }

        @Override // androidx.appcompat.view.ActionMode
        public CharSequence g() {
            return WindowDecorActionBar.this.mContextView.getSubtitle();
        }

        @Override // androidx.appcompat.view.ActionMode
        public CharSequence i() {
            return WindowDecorActionBar.this.mContextView.getTitle();
        }

        @Override // androidx.appcompat.view.ActionMode
        public void k() {
            if (WindowDecorActionBar.this.mActionMode != this) {
                return;
            }
            this.mMenu.h0();
            try {
                this.mCallback.c(this, this.mMenu);
            } finally {
                this.mMenu.g0();
            }
        }

        @Override // androidx.appcompat.view.ActionMode
        public boolean l() {
            return WindowDecorActionBar.this.mContextView.k();
        }

        @Override // androidx.appcompat.view.ActionMode
        public void m(View view) {
            WindowDecorActionBar.this.mContextView.setCustomView(view);
            this.mCustomView = new WeakReference<>(view);
        }

        @Override // androidx.appcompat.view.ActionMode
        public void n(int i10) {
            o(WindowDecorActionBar.this.mContext.getResources().getString(i10));
        }

        @Override // androidx.appcompat.view.ActionMode
        public void o(CharSequence charSequence) {
            WindowDecorActionBar.this.mContextView.setSubtitle(charSequence);
        }

        @Override // androidx.appcompat.view.ActionMode
        public void q(int i10) {
            r(WindowDecorActionBar.this.mContext.getResources().getString(i10));
        }

        @Override // androidx.appcompat.view.ActionMode
        public void r(CharSequence charSequence) {
            WindowDecorActionBar.this.mContextView.setTitle(charSequence);
        }

        public boolean t() {
            this.mMenu.h0();
            try {
                return this.mCallback.a(this, this.mMenu);
            } finally {
                this.mMenu.g0();
            }
        }

        @Override // androidx.appcompat.view.ActionMode
        public void s(boolean z6) {
            super.s(z6);
            WindowDecorActionBar.this.mContextView.setTitleOptional(z6);
        }
    }

    @RestrictTo
    public class TabImpl extends ActionBar.Tab {
        private ActionBar.TabListener mCallback;
        private CharSequence mContentDesc;
        private View mCustomView;
        private Drawable mIcon;
        private int mPosition = -1;
        private Object mTag;
        private CharSequence mText;

        @Override // androidx.appcompat.app.ActionBar.Tab
        public CharSequence a() {
            return this.mContentDesc;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public View b() {
            return this.mCustomView;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public Drawable c() {
            return this.mIcon;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public int d() {
            return this.mPosition;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public CharSequence e() {
            return this.mText;
        }

        public ActionBar.TabListener g() {
            return this.mCallback;
        }

        public TabImpl() {
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public void f() {
            WindowDecorActionBar.this.L(this);
        }
    }

    public WindowDecorActionBar(Activity activity, boolean z6) {
        this.mActivity = activity;
        View decorView = activity.getWindow().getDecorView();
        K(decorView);
        if (z6) {
            return;
        }
        this.mContentView = decorView.findViewById(R.id.content);
    }

    static boolean B(boolean z6, boolean z10, boolean z11) {
        if (z11) {
            return true;
        }
        return (z6 || z10) ? false : true;
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void b() {
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void e(boolean z6) {
        this.mContentAnimations = z6;
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void onWindowVisibilityChanged(int i10) {
        this.mCurWindowVisibility = i10;
    }

    @Override // androidx.appcompat.app.ActionBar
    public void t(boolean z6) {
        M(z6 ? 4 : 0, 4);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private DecorToolbar F(View view) {
        if (view instanceof DecorToolbar) {
            return (DecorToolbar) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Can't make a decor toolbar out of ");
        sb.append(view != 0 ? view.getClass().getSimpleName() : "null");
        throw new IllegalStateException(sb.toString());
    }

    private void J() {
        if (this.mShowingForMode) {
            this.mShowingForMode = false;
            ActionBarOverlayLayout actionBarOverlayLayout = this.mOverlayLayout;
            if (actionBarOverlayLayout != null) {
                actionBarOverlayLayout.setShowingForActionMode(false);
            }
            T(false);
        }
    }

    private void K(View view) {
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(androidx.appcompat.R.id.decor_content_parent);
        this.mOverlayLayout = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        this.mDecorToolbar = F(view.findViewById(androidx.appcompat.R.id.action_bar));
        this.mContextView = (ActionBarContextView) view.findViewById(androidx.appcompat.R.id.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(androidx.appcompat.R.id.action_bar_container);
        this.mContainerView = actionBarContainer;
        DecorToolbar decorToolbar = this.mDecorToolbar;
        if (decorToolbar == null || this.mContextView == null || actionBarContainer == null) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with a compatible window decor layout");
        }
        this.mContext = decorToolbar.getContext();
        boolean z6 = (this.mDecorToolbar.o() & 4) != 0;
        if (z6) {
            this.mDisplayHomeAsUpSet = true;
        }
        ActionBarPolicy actionBarPolicyB = ActionBarPolicy.b(this.mContext);
        Q(actionBarPolicyB.a() || z6);
        O(actionBarPolicyB.g());
        TypedArray typedArrayObtainStyledAttributes = this.mContext.obtainStyledAttributes(null, androidx.appcompat.R.styleable.ActionBar, androidx.appcompat.R.attr.actionBarStyle, 0);
        if (typedArrayObtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.ActionBar_hideOnContentScroll, false)) {
            P(true);
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(androidx.appcompat.R.styleable.ActionBar_elevation, 0);
        if (dimensionPixelSize != 0) {
            N(dimensionPixelSize);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private void O(boolean z6) {
        this.mHasEmbeddedTabs = z6;
        if (z6) {
            this.mContainerView.setTabContainer(null);
            this.mDecorToolbar.v(this.mTabScrollView);
        } else {
            this.mDecorToolbar.v(null);
            this.mContainerView.setTabContainer(this.mTabScrollView);
        }
        boolean z10 = I() == 2;
        ScrollingTabContainerView scrollingTabContainerView = this.mTabScrollView;
        if (scrollingTabContainerView != null) {
            if (z10) {
                scrollingTabContainerView.setVisibility(0);
                ActionBarOverlayLayout actionBarOverlayLayout = this.mOverlayLayout;
                if (actionBarOverlayLayout != null) {
                    ViewCompat.q0(actionBarOverlayLayout);
                }
            } else {
                scrollingTabContainerView.setVisibility(8);
            }
        }
        this.mDecorToolbar.m(!this.mHasEmbeddedTabs && z10);
        this.mOverlayLayout.setHasNonEmbeddedTabs(!this.mHasEmbeddedTabs && z10);
    }

    private boolean R() {
        return ViewCompat.X(this.mContainerView);
    }

    private void S() {
        if (this.mShowingForMode) {
            return;
        }
        this.mShowingForMode = true;
        ActionBarOverlayLayout actionBarOverlayLayout = this.mOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setShowingForActionMode(true);
        }
        T(false);
    }

    private void T(boolean z6) {
        if (B(this.mHiddenByApp, this.mHiddenBySystem, this.mShowingForMode)) {
            if (this.mNowShowing) {
                return;
            }
            this.mNowShowing = true;
            E(z6);
            return;
        }
        if (this.mNowShowing) {
            this.mNowShowing = false;
            D(z6);
        }
    }

    public void A(boolean z6) {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompatS;
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompatF;
        if (z6) {
            S();
        } else {
            J();
        }
        if (!R()) {
            if (z6) {
                this.mDecorToolbar.setVisibility(4);
                this.mContextView.setVisibility(0);
                return;
            } else {
                this.mDecorToolbar.setVisibility(0);
                this.mContextView.setVisibility(8);
                return;
            }
        }
        if (z6) {
            viewPropertyAnimatorCompatF = this.mDecorToolbar.s(4, 100L);
            viewPropertyAnimatorCompatS = this.mContextView.f(0, FADE_IN_DURATION_MS);
        } else {
            viewPropertyAnimatorCompatS = this.mDecorToolbar.s(0, FADE_IN_DURATION_MS);
            viewPropertyAnimatorCompatF = this.mContextView.f(8, 100L);
        }
        ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet = new ViewPropertyAnimatorCompatSet();
        viewPropertyAnimatorCompatSet.d(viewPropertyAnimatorCompatF, viewPropertyAnimatorCompatS);
        viewPropertyAnimatorCompatSet.h();
    }

    void C() {
        ActionMode.Callback callback = this.mDeferredModeDestroyCallback;
        if (callback != null) {
            callback.d(this.mDeferredDestroyActionMode);
            this.mDeferredDestroyActionMode = null;
            this.mDeferredModeDestroyCallback = null;
        }
    }

    public void D(boolean z6) {
        View view;
        ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet = this.mCurrentShowAnim;
        if (viewPropertyAnimatorCompatSet != null) {
            viewPropertyAnimatorCompatSet.a();
        }
        if (this.mCurWindowVisibility != 0 || (!this.mShowHideAnimationEnabled && !z6)) {
            this.mHideListener.b(null);
            return;
        }
        this.mContainerView.setAlpha(1.0f);
        this.mContainerView.setTransitioning(true);
        ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet2 = new ViewPropertyAnimatorCompatSet();
        float f = -this.mContainerView.getHeight();
        if (z6) {
            int[] iArr = {0, 0};
            this.mContainerView.getLocationInWindow(iArr);
            f -= iArr[1];
        }
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompatM = ViewCompat.e(this.mContainerView).m(f);
        viewPropertyAnimatorCompatM.k(this.mUpdateListener);
        viewPropertyAnimatorCompatSet2.c(viewPropertyAnimatorCompatM);
        if (this.mContentAnimations && (view = this.mContentView) != null) {
            viewPropertyAnimatorCompatSet2.c(ViewCompat.e(view).m(f));
        }
        viewPropertyAnimatorCompatSet2.f(sHideInterpolator);
        viewPropertyAnimatorCompatSet2.e(250L);
        viewPropertyAnimatorCompatSet2.g(this.mHideListener);
        this.mCurrentShowAnim = viewPropertyAnimatorCompatSet2;
        viewPropertyAnimatorCompatSet2.h();
    }

    public void E(boolean z6) {
        View view;
        View view2;
        ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet = this.mCurrentShowAnim;
        if (viewPropertyAnimatorCompatSet != null) {
            viewPropertyAnimatorCompatSet.a();
        }
        this.mContainerView.setVisibility(0);
        if (this.mCurWindowVisibility == 0 && (this.mShowHideAnimationEnabled || z6)) {
            this.mContainerView.setTranslationY(0.0f);
            float f = -this.mContainerView.getHeight();
            if (z6) {
                int[] iArr = {0, 0};
                this.mContainerView.getLocationInWindow(iArr);
                f -= iArr[1];
            }
            this.mContainerView.setTranslationY(f);
            ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet2 = new ViewPropertyAnimatorCompatSet();
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompatM = ViewCompat.e(this.mContainerView).m(0.0f);
            viewPropertyAnimatorCompatM.k(this.mUpdateListener);
            viewPropertyAnimatorCompatSet2.c(viewPropertyAnimatorCompatM);
            if (this.mContentAnimations && (view2 = this.mContentView) != null) {
                view2.setTranslationY(f);
                viewPropertyAnimatorCompatSet2.c(ViewCompat.e(this.mContentView).m(0.0f));
            }
            viewPropertyAnimatorCompatSet2.f(sShowInterpolator);
            viewPropertyAnimatorCompatSet2.e(250L);
            viewPropertyAnimatorCompatSet2.g(this.mShowListener);
            this.mCurrentShowAnim = viewPropertyAnimatorCompatSet2;
            viewPropertyAnimatorCompatSet2.h();
        } else {
            this.mContainerView.setAlpha(1.0f);
            this.mContainerView.setTranslationY(0.0f);
            if (this.mContentAnimations && (view = this.mContentView) != null) {
                view.setTranslationY(0.0f);
            }
            this.mShowListener.b(null);
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.mOverlayLayout;
        if (actionBarOverlayLayout != null) {
            ViewCompat.q0(actionBarOverlayLayout);
        }
    }

    public int G() {
        return this.mContainerView.getHeight();
    }

    public int H() {
        return this.mOverlayLayout.getActionBarHideOffset();
    }

    public int I() {
        return this.mDecorToolbar.j();
    }

    public void M(int i10, int i11) {
        int iO = this.mDecorToolbar.o();
        if ((i11 & 4) != 0) {
            this.mDisplayHomeAsUpSet = true;
        }
        this.mDecorToolbar.i((i10 & i11) | ((~i11) & iO));
    }

    public void N(float f) {
        ViewCompat.C0(this.mContainerView, f);
    }

    public void P(boolean z6) {
        if (z6 && !this.mOverlayLayout.q()) {
            throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
        }
        this.mHideOnContentScroll = z6;
        this.mOverlayLayout.setHideOnContentScrollEnabled(z6);
    }

    public void Q(boolean z6) {
        this.mDecorToolbar.u(z6);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void a() {
        if (this.mHiddenBySystem) {
            this.mHiddenBySystem = false;
            T(true);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void c() {
        if (this.mHiddenBySystem) {
            return;
        }
        this.mHiddenBySystem = true;
        T(true);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void d() {
        ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet = this.mCurrentShowAnim;
        if (viewPropertyAnimatorCompatSet != null) {
            viewPropertyAnimatorCompatSet.a();
            this.mCurrentShowAnim = null;
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean g() {
        DecorToolbar decorToolbar = this.mDecorToolbar;
        if (decorToolbar == null || !decorToolbar.h()) {
            return false;
        }
        this.mDecorToolbar.collapseActionView();
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    public void h(boolean z6) {
        if (z6 == this.mLastMenuVisibility) {
            return;
        }
        this.mLastMenuVisibility = z6;
        int size = this.mMenuVisibilityListeners.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.mMenuVisibilityListeners.get(i10).a(z6);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public int i() {
        return this.mDecorToolbar.o();
    }

    @Override // androidx.appcompat.app.ActionBar
    public Context j() {
        if (this.mThemedContext == null) {
            TypedValue typedValue = new TypedValue();
            this.mContext.getTheme().resolveAttribute(androidx.appcompat.R.attr.actionBarWidgetTheme, typedValue, true);
            int i10 = typedValue.resourceId;
            if (i10 != 0) {
                this.mThemedContext = new ContextThemeWrapper(this.mContext, i10);
            } else {
                this.mThemedContext = this.mContext;
            }
        }
        return this.mThemedContext;
    }

    @Override // androidx.appcompat.app.ActionBar
    public void k() {
        if (this.mHiddenByApp) {
            return;
        }
        this.mHiddenByApp = true;
        T(false);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void n(Configuration configuration) {
        O(ActionBarPolicy.b(this.mContext).g());
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean p(int i10, KeyEvent keyEvent) {
        Menu menuE;
        ActionModeImpl actionModeImpl = this.mActionMode;
        if (actionModeImpl == null || (menuE = actionModeImpl.e()) == null) {
            return false;
        }
        menuE.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return menuE.performShortcut(i10, keyEvent, 0);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void s(boolean z6) {
        if (this.mDisplayHomeAsUpSet) {
            return;
        }
        t(z6);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void u(int i10) {
        this.mDecorToolbar.k(i10);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void v(Drawable drawable) {
        this.mDecorToolbar.q(drawable);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void w(boolean z6) {
        ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet;
        this.mShowHideAnimationEnabled = z6;
        if (z6 || (viewPropertyAnimatorCompatSet = this.mCurrentShowAnim) == null) {
            return;
        }
        viewPropertyAnimatorCompatSet.a();
    }

    @Override // androidx.appcompat.app.ActionBar
    public void x(CharSequence charSequence) {
        this.mDecorToolbar.setTitle(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void y(CharSequence charSequence) {
        this.mDecorToolbar.setWindowTitle(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    public ActionMode z(ActionMode.Callback callback) {
        ActionModeImpl actionModeImpl = this.mActionMode;
        if (actionModeImpl != null) {
            actionModeImpl.c();
        }
        this.mOverlayLayout.setHideOnContentScrollEnabled(false);
        this.mContextView.l();
        ActionModeImpl actionModeImpl2 = new ActionModeImpl(this.mContextView.getContext(), callback);
        if (!actionModeImpl2.t()) {
            return null;
        }
        this.mActionMode = actionModeImpl2;
        actionModeImpl2.k();
        this.mContextView.i(actionModeImpl2);
        A(true);
        return actionModeImpl2;
    }

    public void L(ActionBar.Tab tab) {
        FragmentTransaction fragmentTransactionP;
        int iD = -1;
        if (I() != 2) {
            if (tab != null) {
                iD = tab.d();
            }
            this.mSavedTabPosition = iD;
            return;
        }
        if ((this.mActivity instanceof FragmentActivity) && !this.mDecorToolbar.t().isInEditMode()) {
            fragmentTransactionP = ((FragmentActivity) this.mActivity).getSupportFragmentManager().q().p();
        } else {
            fragmentTransactionP = null;
        }
        TabImpl tabImpl = this.mSelectedTab;
        if (tabImpl == tab) {
            if (tabImpl != null) {
                tabImpl.g().b(this.mSelectedTab, fragmentTransactionP);
                this.mTabScrollView.a(tab.d());
            }
        } else {
            ScrollingTabContainerView scrollingTabContainerView = this.mTabScrollView;
            if (tab != null) {
                iD = tab.d();
            }
            scrollingTabContainerView.setTabSelected(iD);
            TabImpl tabImpl2 = this.mSelectedTab;
            if (tabImpl2 != null) {
                tabImpl2.g().c(this.mSelectedTab, fragmentTransactionP);
            }
            TabImpl tabImpl3 = (TabImpl) tab;
            this.mSelectedTab = tabImpl3;
            if (tabImpl3 != null) {
                tabImpl3.g().a(this.mSelectedTab, fragmentTransactionP);
            }
        }
        if (fragmentTransactionP != null && !fragmentTransactionP.s()) {
            fragmentTransactionP.j();
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean m() {
        int iG = G();
        if (this.mNowShowing && (iG == 0 || H() < iG)) {
            return true;
        }
        return false;
    }

    public WindowDecorActionBar(Dialog dialog) {
        K(dialog.getWindow().getDecorView());
    }

    @RestrictTo
    public WindowDecorActionBar(View view) {
        K(view);
    }
}
