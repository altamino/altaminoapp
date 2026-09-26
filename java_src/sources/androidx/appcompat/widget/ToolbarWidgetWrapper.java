package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.widget.Spinner;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.menu.ActionMenuItem;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;

/* JADX INFO: loaded from: classes8.dex */
@RestrictTo
public class ToolbarWidgetWrapper implements DecorToolbar {
    private static final int AFFECTS_LOGO_MASK = 3;
    private static final long DEFAULT_FADE_DURATION_MS = 200;
    private static final String TAG = "ToolbarWidgetWrapper";
    private ActionMenuPresenter mActionMenuPresenter;
    private View mCustomView;
    private int mDefaultNavigationContentDescription;
    private Drawable mDefaultNavigationIcon;
    private int mDisplayOpts;
    private CharSequence mHomeDescription;
    private Drawable mIcon;
    private Drawable mLogo;
    boolean mMenuPrepared;
    private Drawable mNavIcon;
    private int mNavigationMode;
    private Spinner mSpinner;
    private CharSequence mSubtitle;
    private View mTabView;
    CharSequence mTitle;
    private boolean mTitleSet;
    Toolbar mToolbar;
    Window.Callback mWindowCallback;

    public ToolbarWidgetWrapper(Toolbar toolbar, boolean z6) {
        this(toolbar, z6, R.string.abc_action_bar_up_description, R.drawable.abc_ic_ab_back_material);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void f() {
        this.mMenuPrepared = true;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public int j() {
        return this.mNavigationMode;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public int o() {
        return this.mDisplayOpts;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setIcon(int i10) {
        setIcon(i10 != 0 ? AppCompatResources.b(getContext(), i10) : null);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setTitle(CharSequence charSequence) {
        this.mTitleSet = true;
        E(charSequence);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setWindowCallback(Window.Callback callback) {
        this.mWindowCallback = callback;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public ViewGroup t() {
        return this.mToolbar;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void u(boolean z6) {
    }

    public ToolbarWidgetWrapper(Toolbar toolbar, boolean z6, int i10, int i11) {
        Drawable drawable;
        this.mNavigationMode = 0;
        this.mDefaultNavigationContentDescription = 0;
        this.mToolbar = toolbar;
        this.mTitle = toolbar.getTitle();
        this.mSubtitle = toolbar.getSubtitle();
        this.mTitleSet = this.mTitle != null;
        this.mNavIcon = toolbar.getNavigationIcon();
        TintTypedArray tintTypedArrayV = TintTypedArray.v(toolbar.getContext(), null, R.styleable.ActionBar, R.attr.actionBarStyle, 0);
        this.mDefaultNavigationIcon = tintTypedArrayV.g(R.styleable.ActionBar_homeAsUpIndicator);
        if (z6) {
            CharSequence charSequenceP = tintTypedArrayV.p(R.styleable.ActionBar_title);
            if (!TextUtils.isEmpty(charSequenceP)) {
                setTitle(charSequenceP);
            }
            CharSequence charSequenceP2 = tintTypedArrayV.p(R.styleable.ActionBar_subtitle);
            if (!TextUtils.isEmpty(charSequenceP2)) {
                D(charSequenceP2);
            }
            Drawable drawableG = tintTypedArrayV.g(R.styleable.ActionBar_logo);
            if (drawableG != null) {
                B(drawableG);
            }
            Drawable drawableG2 = tintTypedArrayV.g(R.styleable.ActionBar_icon);
            if (drawableG2 != null) {
                setIcon(drawableG2);
            }
            if (this.mNavIcon == null && (drawable = this.mDefaultNavigationIcon) != null) {
                q(drawable);
            }
            i(tintTypedArrayV.k(R.styleable.ActionBar_displayOptions, 0));
            int iN = tintTypedArrayV.n(R.styleable.ActionBar_customNavigationLayout, 0);
            if (iN != 0) {
                z(LayoutInflater.from(this.mToolbar.getContext()).inflate(iN, (ViewGroup) this.mToolbar, false));
                i(this.mDisplayOpts | 16);
            }
            int iM = tintTypedArrayV.m(R.styleable.ActionBar_height, 0);
            if (iM > 0) {
                ViewGroup.LayoutParams layoutParams = this.mToolbar.getLayoutParams();
                layoutParams.height = iM;
                this.mToolbar.setLayoutParams(layoutParams);
            }
            int iE = tintTypedArrayV.e(R.styleable.ActionBar_contentInsetStart, -1);
            int iE2 = tintTypedArrayV.e(R.styleable.ActionBar_contentInsetEnd, -1);
            if (iE >= 0 || iE2 >= 0) {
                this.mToolbar.J(Math.max(iE, 0), Math.max(iE2, 0));
            }
            int iN2 = tintTypedArrayV.n(R.styleable.ActionBar_titleTextStyle, 0);
            if (iN2 != 0) {
                Toolbar toolbar2 = this.mToolbar;
                toolbar2.N(toolbar2.getContext(), iN2);
            }
            int iN3 = tintTypedArrayV.n(R.styleable.ActionBar_subtitleTextStyle, 0);
            if (iN3 != 0) {
                Toolbar toolbar3 = this.mToolbar;
                toolbar3.M(toolbar3.getContext(), iN3);
            }
            int iN4 = tintTypedArrayV.n(R.styleable.ActionBar_popupTheme, 0);
            if (iN4 != 0) {
                this.mToolbar.setPopupTheme(iN4);
            }
        } else {
            this.mDisplayOpts = y();
        }
        tintTypedArrayV.w();
        A(i10);
        this.mHomeDescription = this.mToolbar.getNavigationContentDescription();
        this.mToolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: androidx.appcompat.widget.ToolbarWidgetWrapper.1
            final ActionMenuItem mNavItem;

            {
                this.mNavItem = new ActionMenuItem(ToolbarWidgetWrapper.this.mToolbar.getContext(), 0, android.R.id.home, 0, 0, ToolbarWidgetWrapper.this.mTitle);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ToolbarWidgetWrapper toolbarWidgetWrapper = ToolbarWidgetWrapper.this;
                Window.Callback callback = toolbarWidgetWrapper.mWindowCallback;
                if (callback == null || !toolbarWidgetWrapper.mMenuPrepared) {
                    return;
                }
                callback.onMenuItemSelected(0, this.mNavItem);
            }
        });
    }

    private void E(CharSequence charSequence) {
        this.mTitle = charSequence;
        if ((this.mDisplayOpts & 8) != 0) {
            this.mToolbar.setTitle(charSequence);
            if (this.mTitleSet) {
                ViewCompat.x0(this.mToolbar.getRootView(), charSequence);
            }
        }
    }

    private void F() {
        if ((this.mDisplayOpts & 4) != 0) {
            if (TextUtils.isEmpty(this.mHomeDescription)) {
                this.mToolbar.setNavigationContentDescription(this.mDefaultNavigationContentDescription);
            } else {
                this.mToolbar.setNavigationContentDescription(this.mHomeDescription);
            }
        }
    }

    private void G() {
        if ((this.mDisplayOpts & 4) == 0) {
            this.mToolbar.setNavigationIcon((Drawable) null);
            return;
        }
        Toolbar toolbar = this.mToolbar;
        Drawable drawable = this.mNavIcon;
        if (drawable == null) {
            drawable = this.mDefaultNavigationIcon;
        }
        toolbar.setNavigationIcon(drawable);
    }

    private void H() {
        Drawable drawable;
        int i10 = this.mDisplayOpts;
        if ((i10 & 2) == 0) {
            drawable = null;
        } else if ((i10 & 1) == 0 || (drawable = this.mLogo) == null) {
            drawable = this.mIcon;
        }
        this.mToolbar.setLogo(drawable);
    }

    private int y() {
        if (this.mToolbar.getNavigationIcon() == null) {
            return 11;
        }
        this.mDefaultNavigationIcon = this.mToolbar.getNavigationIcon();
        return 15;
    }

    public void A(int i10) {
        if (i10 == this.mDefaultNavigationContentDescription) {
            return;
        }
        this.mDefaultNavigationContentDescription = i10;
        if (TextUtils.isEmpty(this.mToolbar.getNavigationContentDescription())) {
            k(this.mDefaultNavigationContentDescription);
        }
    }

    public void B(Drawable drawable) {
        this.mLogo = drawable;
        H();
    }

    public void C(CharSequence charSequence) {
        this.mHomeDescription = charSequence;
        F();
    }

    public void D(CharSequence charSequence) {
        this.mSubtitle = charSequence;
        if ((this.mDisplayOpts & 8) != 0) {
            this.mToolbar.setSubtitle(charSequence);
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public boolean a() {
        return this.mToolbar.d();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public boolean b() {
        return this.mToolbar.Q();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public boolean c() {
        return this.mToolbar.B();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void collapseActionView() {
        this.mToolbar.e();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public boolean d() {
        return this.mToolbar.w();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void e(Menu menu, MenuPresenter.Callback callback) {
        if (this.mActionMenuPresenter == null) {
            ActionMenuPresenter actionMenuPresenter = new ActionMenuPresenter(this.mToolbar.getContext());
            this.mActionMenuPresenter = actionMenuPresenter;
            actionMenuPresenter.s(R.id.action_menu_presenter);
        }
        this.mActionMenuPresenter.h(callback);
        this.mToolbar.K((MenuBuilder) menu, this.mActionMenuPresenter);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public boolean g() {
        return this.mToolbar.A();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public Context getContext() {
        return this.mToolbar.getContext();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public CharSequence getTitle() {
        return this.mToolbar.getTitle();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public int getVisibility() {
        return this.mToolbar.getVisibility();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public boolean h() {
        return this.mToolbar.v();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void i(int i10) {
        View view;
        int i11 = this.mDisplayOpts ^ i10;
        this.mDisplayOpts = i10;
        if (i11 != 0) {
            if ((i11 & 4) != 0) {
                if ((i10 & 4) != 0) {
                    F();
                }
                G();
            }
            if ((i11 & 3) != 0) {
                H();
            }
            if ((i11 & 8) != 0) {
                if ((i10 & 8) != 0) {
                    this.mToolbar.setTitle(this.mTitle);
                    this.mToolbar.setSubtitle(this.mSubtitle);
                } else {
                    this.mToolbar.setTitle((CharSequence) null);
                    this.mToolbar.setSubtitle((CharSequence) null);
                }
            }
            if ((i11 & 16) == 0 || (view = this.mCustomView) == null) {
                return;
            }
            if ((i10 & 16) != 0) {
                this.mToolbar.addView(view);
            } else {
                this.mToolbar.removeView(view);
            }
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void k(int i10) {
        C(i10 == 0 ? null : getContext().getString(i10));
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void l() {
        Log.i(TAG, "Progress display unsupported");
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void m(boolean z6) {
        this.mToolbar.setCollapsible(z6);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void n() {
        this.mToolbar.f();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void p() {
        Log.i(TAG, "Progress display unsupported");
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void q(Drawable drawable) {
        this.mNavIcon = drawable;
        G();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public Menu r() {
        return this.mToolbar.getMenu();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public ViewPropertyAnimatorCompat s(final int i10, long j6) {
        return ViewCompat.e(this.mToolbar).b(i10 == 0 ? 1.0f : 0.0f).f(j6).h(new ViewPropertyAnimatorListenerAdapter() { // from class: androidx.appcompat.widget.ToolbarWidgetWrapper.2
            private boolean mCanceled = false;

            @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
            public void a(View view) {
                this.mCanceled = true;
            }

            @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
            public void b(View view) {
                if (this.mCanceled) {
                    return;
                }
                ToolbarWidgetWrapper.this.mToolbar.setVisibility(i10);
            }

            @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
            public void c(View view) {
                ToolbarWidgetWrapper.this.mToolbar.setVisibility(0);
            }
        });
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setIcon(Drawable drawable) {
        this.mIcon = drawable;
        H();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setVisibility(int i10) {
        this.mToolbar.setVisibility(i10);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void setWindowTitle(CharSequence charSequence) {
        if (this.mTitleSet) {
            return;
        }
        E(charSequence);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void v(ScrollingTabContainerView scrollingTabContainerView) {
        View view = this.mTabView;
        if (view != null) {
            ViewParent parent = view.getParent();
            Toolbar toolbar = this.mToolbar;
            if (parent == toolbar) {
                toolbar.removeView(this.mTabView);
            }
        }
        this.mTabView = scrollingTabContainerView;
        if (scrollingTabContainerView == null || this.mNavigationMode != 2) {
            return;
        }
        this.mToolbar.addView(scrollingTabContainerView, 0);
        Toolbar.LayoutParams layoutParams = (Toolbar.LayoutParams) this.mTabView.getLayoutParams();
        ((ViewGroup.MarginLayoutParams) layoutParams).width = -2;
        ((ViewGroup.MarginLayoutParams) layoutParams).height = -2;
        layoutParams.gravity = 8388691;
        scrollingTabContainerView.setAllowCollapse(true);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void w(int i10) {
        B(i10 != 0 ? AppCompatResources.b(getContext(), i10) : null);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public void x(MenuPresenter.Callback callback, MenuBuilder.Callback callback2) {
        this.mToolbar.L(callback, callback2);
    }

    public void z(View view) {
        View view2 = this.mCustomView;
        if (view2 != null && (this.mDisplayOpts & 16) != 0) {
            this.mToolbar.removeView(view2);
        }
        this.mCustomView = view;
        if (view == null || (this.mDisplayOpts & 16) == 0) {
            return;
        }
        this.mToolbar.addView(view);
    }
}
