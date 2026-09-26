package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.R;
import androidx.appcompat.widget.MenuPopupWindow;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes9.dex */
final class StandardMenuPopup extends MenuPopup implements PopupWindow.OnDismissListener, View.OnKeyListener {
    private static final int ITEM_LAYOUT = R.layout.abc_popup_menu_item_layout;
    private final MenuAdapter mAdapter;
    private View mAnchorView;
    private int mContentWidth;
    private final Context mContext;
    private boolean mHasContentWidth;
    private final MenuBuilder mMenu;
    private PopupWindow.OnDismissListener mOnDismissListener;
    private final boolean mOverflowOnly;
    final MenuPopupWindow mPopup;
    private final int mPopupMaxWidth;
    private final int mPopupStyleAttr;
    private final int mPopupStyleRes;
    private MenuPresenter.Callback mPresenterCallback;
    private boolean mShowTitle;
    View mShownAnchorView;
    ViewTreeObserver mTreeObserver;
    private boolean mWasDismissed;
    final ViewTreeObserver.OnGlobalLayoutListener mGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.view.menu.StandardMenuPopup.1
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!StandardMenuPopup.this.isShowing() || StandardMenuPopup.this.mPopup.z()) {
                return;
            }
            View view = StandardMenuPopup.this.mShownAnchorView;
            if (view == null || !view.isShown()) {
                StandardMenuPopup.this.dismiss();
            } else {
                StandardMenuPopup.this.mPopup.show();
            }
        }
    };
    private final View.OnAttachStateChangeListener mAttachStateChangeListener = new View.OnAttachStateChangeListener() { // from class: androidx.appcompat.view.menu.StandardMenuPopup.2
        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            ViewTreeObserver viewTreeObserver = StandardMenuPopup.this.mTreeObserver;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    StandardMenuPopup.this.mTreeObserver = view.getViewTreeObserver();
                }
                StandardMenuPopup standardMenuPopup = StandardMenuPopup.this;
                standardMenuPopup.mTreeObserver.removeGlobalOnLayoutListener(standardMenuPopup.mGlobalLayoutListener);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    };
    private int mDropDownGravity = 0;

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public Parcelable c() {
        return null;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void d(boolean z6) {
        this.mHasContentWidth = false;
        MenuAdapter menuAdapter = this.mAdapter;
        if (menuAdapter != null) {
            menuAdapter.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean e() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void h(MenuPresenter.Callback callback) {
        this.mPresenterCallback = callback;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void j(Parcelable parcelable) {
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public void l(MenuBuilder menuBuilder) {
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        this.mWasDismissed = true;
        this.mMenu.close();
        ViewTreeObserver viewTreeObserver = this.mTreeObserver;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.mTreeObserver = this.mShownAnchorView.getViewTreeObserver();
            }
            this.mTreeObserver.removeGlobalOnLayoutListener(this.mGlobalLayoutListener);
            this.mTreeObserver = null;
        }
        this.mShownAnchorView.removeOnAttachStateChangeListener(this.mAttachStateChangeListener);
        PopupWindow.OnDismissListener onDismissListener = this.mOnDismissListener;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public void p(View view) {
        this.mAnchorView = view;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public void s(int i10) {
        this.mDropDownGravity = i10;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public void u(PopupWindow.OnDismissListener onDismissListener) {
        this.mOnDismissListener = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public void v(boolean z6) {
        this.mShowTitle = z6;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void a(MenuBuilder menuBuilder, boolean z6) {
        if (menuBuilder != this.mMenu) {
            return;
        }
        dismiss();
        MenuPresenter.Callback callback = this.mPresenterCallback;
        if (callback != null) {
            callback.a(menuBuilder, z6);
        }
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public ListView i() {
        return this.mPopup.i();
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public boolean isShowing() {
        return !this.mWasDismissed && this.mPopup.isShowing();
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public void r(boolean z6) {
        this.mAdapter.d(z6);
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public void t(int i10) {
        this.mPopup.k(i10);
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public void w(int i10) {
        this.mPopup.d(i10);
    }

    public StandardMenuPopup(Context context, MenuBuilder menuBuilder, View view, int i10, int i11, boolean z6) {
        this.mContext = context;
        this.mMenu = menuBuilder;
        this.mOverflowOnly = z6;
        this.mAdapter = new MenuAdapter(menuBuilder, LayoutInflater.from(context), z6, ITEM_LAYOUT);
        this.mPopupStyleAttr = i10;
        this.mPopupStyleRes = i11;
        Resources resources = context.getResources();
        this.mPopupMaxWidth = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.mAnchorView = view;
        this.mPopup = new MenuPopupWindow(context, null, i10, i11);
        menuBuilder.c(this, context);
    }

    private boolean z() {
        View view;
        boolean z6;
        if (isShowing()) {
            return true;
        }
        if (this.mWasDismissed || (view = this.mAnchorView) == null) {
            return false;
        }
        this.mShownAnchorView = view;
        this.mPopup.I(this);
        this.mPopup.J(this);
        this.mPopup.H(true);
        View view2 = this.mShownAnchorView;
        if (this.mTreeObserver == null) {
            z6 = true;
        } else {
            z6 = false;
        }
        ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
        this.mTreeObserver = viewTreeObserver;
        if (z6) {
            viewTreeObserver.addOnGlobalLayoutListener(this.mGlobalLayoutListener);
        }
        view2.addOnAttachStateChangeListener(this.mAttachStateChangeListener);
        this.mPopup.B(view2);
        this.mPopup.E(this.mDropDownGravity);
        if (!this.mHasContentWidth) {
            this.mContentWidth = MenuPopup.o(this.mAdapter, null, this.mContext, this.mPopupMaxWidth);
            this.mHasContentWidth = true;
        }
        this.mPopup.D(this.mContentWidth);
        this.mPopup.G(2);
        this.mPopup.F(n());
        this.mPopup.show();
        ListView listViewI = this.mPopup.i();
        listViewI.setOnKeyListener(this);
        if (this.mShowTitle && this.mMenu.z() != null) {
            FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this.mContext).inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) listViewI, false);
            TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
            if (textView != null) {
                textView.setText(this.mMenu.z());
            }
            frameLayout.setEnabled(false);
            listViewI.addHeaderView(frameLayout, null, false);
        }
        this.mPopup.n(this.mAdapter);
        this.mPopup.show();
        return true;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public void dismiss() {
        if (isShowing()) {
            this.mPopup.dismiss();
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean k(SubMenuBuilder subMenuBuilder) {
        if (subMenuBuilder.hasVisibleItems()) {
            MenuPopupHelper menuPopupHelper = new MenuPopupHelper(this.mContext, subMenuBuilder, this.mShownAnchorView, this.mOverflowOnly, this.mPopupStyleAttr, this.mPopupStyleRes);
            menuPopupHelper.j(this.mPresenterCallback);
            menuPopupHelper.g(MenuPopup.x(subMenuBuilder));
            menuPopupHelper.i(this.mOnDismissListener);
            this.mOnDismissListener = null;
            this.mMenu.e(false);
            int iJ = this.mPopup.j();
            int iG = this.mPopup.g();
            if ((Gravity.getAbsoluteGravity(this.mDropDownGravity, ViewCompat.D(this.mAnchorView)) & 7) == 5) {
                iJ += this.mAnchorView.getWidth();
            }
            if (menuPopupHelper.n(iJ, iG)) {
                MenuPresenter.Callback callback = this.mPresenterCallback;
                if (callback != null) {
                    callback.b(subMenuBuilder);
                    return true;
                }
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i10, KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1 && i10 == 82) {
            dismiss();
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public void show() {
        if (z()) {
        } else {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
    }
}
