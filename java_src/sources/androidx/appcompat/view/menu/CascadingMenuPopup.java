package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Parcelable;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.R;
import androidx.appcompat.widget.MenuItemHoverListener;
import androidx.appcompat.widget.MenuPopupWindow;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class CascadingMenuPopup extends MenuPopup implements View.OnKeyListener, PopupWindow.OnDismissListener {
    static final int HORIZ_POSITION_LEFT = 0;
    static final int HORIZ_POSITION_RIGHT = 1;
    private static final int ITEM_LAYOUT = R.layout.abc_cascading_menu_item_layout;
    static final int SUBMENU_TIMEOUT_MS = 200;
    private View mAnchorView;
    private final Context mContext;
    private boolean mHasXOffset;
    private boolean mHasYOffset;
    private final int mMenuMaxWidth;
    private PopupWindow.OnDismissListener mOnDismissListener;
    private final boolean mOverflowOnly;
    private final int mPopupStyleAttr;
    private final int mPopupStyleRes;
    private MenuPresenter.Callback mPresenterCallback;
    boolean mShouldCloseImmediately;
    private boolean mShowTitle;
    View mShownAnchorView;
    final Handler mSubMenuHoverHandler;
    ViewTreeObserver mTreeObserver;
    private int mXOffset;
    private int mYOffset;
    private final List<MenuBuilder> mPendingMenus = new ArrayList();
    final List<CascadingMenuInfo> mShowingMenus = new ArrayList();
    final ViewTreeObserver.OnGlobalLayoutListener mGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.view.menu.CascadingMenuPopup.1
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!CascadingMenuPopup.this.isShowing() || CascadingMenuPopup.this.mShowingMenus.size() <= 0 || CascadingMenuPopup.this.mShowingMenus.get(0).window.z()) {
                return;
            }
            View view = CascadingMenuPopup.this.mShownAnchorView;
            if (view == null || !view.isShown()) {
                CascadingMenuPopup.this.dismiss();
                return;
            }
            Iterator<CascadingMenuInfo> it = CascadingMenuPopup.this.mShowingMenus.iterator();
            while (it.hasNext()) {
                it.next().window.show();
            }
        }
    };
    private final View.OnAttachStateChangeListener mAttachStateChangeListener = new View.OnAttachStateChangeListener() { // from class: androidx.appcompat.view.menu.CascadingMenuPopup.2
        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            ViewTreeObserver viewTreeObserver = CascadingMenuPopup.this.mTreeObserver;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    CascadingMenuPopup.this.mTreeObserver = view.getViewTreeObserver();
                }
                CascadingMenuPopup cascadingMenuPopup = CascadingMenuPopup.this;
                cascadingMenuPopup.mTreeObserver.removeGlobalOnLayoutListener(cascadingMenuPopup.mGlobalLayoutListener);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    };
    private final MenuItemHoverListener mMenuItemHoverListener = new MenuItemHoverListener() { // from class: androidx.appcompat.view.menu.CascadingMenuPopup.3
        @Override // androidx.appcompat.widget.MenuItemHoverListener
        public void a(@NonNull final MenuBuilder menuBuilder, @NonNull final MenuItem menuItem) {
            CascadingMenuPopup.this.mSubMenuHoverHandler.removeCallbacksAndMessages(null);
            int size = CascadingMenuPopup.this.mShowingMenus.size();
            int i10 = 0;
            while (true) {
                if (i10 >= size) {
                    i10 = -1;
                    break;
                } else if (menuBuilder == CascadingMenuPopup.this.mShowingMenus.get(i10).menu) {
                    break;
                } else {
                    i10++;
                }
            }
            if (i10 == -1) {
                return;
            }
            int i11 = i10 + 1;
            final CascadingMenuInfo cascadingMenuInfo = i11 < CascadingMenuPopup.this.mShowingMenus.size() ? CascadingMenuPopup.this.mShowingMenus.get(i11) : null;
            CascadingMenuPopup.this.mSubMenuHoverHandler.postAtTime(new Runnable() { // from class: androidx.appcompat.view.menu.CascadingMenuPopup.3.1
                @Override // java.lang.Runnable
                public void run() {
                    CascadingMenuInfo cascadingMenuInfo2 = cascadingMenuInfo;
                    if (cascadingMenuInfo2 != null) {
                        CascadingMenuPopup.this.mShouldCloseImmediately = true;
                        cascadingMenuInfo2.menu.e(false);
                        CascadingMenuPopup.this.mShouldCloseImmediately = false;
                    }
                    if (menuItem.isEnabled() && menuItem.hasSubMenu()) {
                        menuBuilder.N(menuItem, 4);
                    }
                }
            }, menuBuilder, SystemClock.uptimeMillis() + 200);
        }

        @Override // androidx.appcompat.widget.MenuItemHoverListener
        public void h(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
            CascadingMenuPopup.this.mSubMenuHoverHandler.removeCallbacksAndMessages(menuBuilder);
        }
    };
    private int mRawDropDownGravity = 0;
    private int mDropDownGravity = 0;
    private boolean mForceShowIcon = false;
    private int mLastPosition = D();

    private static class CascadingMenuInfo {
        public final MenuBuilder menu;
        public final int position;
        public final MenuPopupWindow window;

        public ListView a() {
            return this.window.i();
        }

        public CascadingMenuInfo(@NonNull MenuPopupWindow menuPopupWindow, @NonNull MenuBuilder menuBuilder, int i10) {
            this.window = menuPopupWindow;
            this.menu = menuBuilder;
            this.position = i10;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface HorizPosition {
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public Parcelable c() {
        return null;
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
    protected boolean m() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public void r(boolean z6) {
        this.mForceShowIcon = z6;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public void t(int i10) {
        this.mHasXOffset = true;
        this.mXOffset = i10;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public void u(PopupWindow.OnDismissListener onDismissListener) {
        this.mOnDismissListener = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public void v(boolean z6) {
        this.mShowTitle = z6;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public void w(int i10) {
        this.mHasYOffset = true;
        this.mYOffset = i10;
    }

    private int A(@NonNull MenuBuilder menuBuilder) {
        int size = this.mShowingMenus.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (menuBuilder == this.mShowingMenus.get(i10).menu) {
                return i10;
            }
        }
        return -1;
    }

    @Nullable
    private View C(@NonNull CascadingMenuInfo cascadingMenuInfo, @NonNull MenuBuilder menuBuilder) {
        MenuAdapter menuAdapter;
        int headersCount;
        int firstVisiblePosition;
        MenuItem menuItemB = B(cascadingMenuInfo.menu, menuBuilder);
        if (menuItemB == null) {
            return null;
        }
        ListView listViewA = cascadingMenuInfo.a();
        ListAdapter adapter = listViewA.getAdapter();
        int i10 = 0;
        if (adapter instanceof HeaderViewListAdapter) {
            HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
            headersCount = headerViewListAdapter.getHeadersCount();
            menuAdapter = (MenuAdapter) headerViewListAdapter.getWrappedAdapter();
        } else {
            menuAdapter = (MenuAdapter) adapter;
            headersCount = 0;
        }
        int count = menuAdapter.getCount();
        while (true) {
            if (i10 >= count) {
                i10 = -1;
                break;
            }
            if (menuItemB == menuAdapter.getItem(i10)) {
                break;
            }
            i10++;
        }
        if (i10 != -1 && (firstVisiblePosition = (i10 + headersCount) - listViewA.getFirstVisiblePosition()) >= 0 && firstVisiblePosition < listViewA.getChildCount()) {
            return listViewA.getChildAt(firstVisiblePosition);
        }
        return null;
    }

    private int D() {
        return ViewCompat.D(this.mAnchorView) == 1 ? 0 : 1;
    }

    private int E(int i10) {
        List<CascadingMenuInfo> list = this.mShowingMenus;
        ListView listViewA = list.get(list.size() - 1).a();
        int[] iArr = new int[2];
        listViewA.getLocationOnScreen(iArr);
        Rect rect = new Rect();
        this.mShownAnchorView.getWindowVisibleDisplayFrame(rect);
        if (this.mLastPosition == 1) {
            return (iArr[0] + listViewA.getWidth()) + i10 > rect.right ? 0 : 1;
        }
        return iArr[0] - i10 < 0 ? 1 : 0;
    }

    private void F(@NonNull MenuBuilder menuBuilder) {
        CascadingMenuInfo cascadingMenuInfo;
        View viewC;
        int i10;
        int i11;
        int i12;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.mContext);
        MenuAdapter menuAdapter = new MenuAdapter(menuBuilder, layoutInflaterFrom, this.mOverflowOnly, ITEM_LAYOUT);
        if (!isShowing() && this.mForceShowIcon) {
            menuAdapter.d(true);
        } else if (isShowing()) {
            menuAdapter.d(MenuPopup.x(menuBuilder));
        }
        int iO = MenuPopup.o(menuAdapter, null, this.mContext, this.mMenuMaxWidth);
        MenuPopupWindow menuPopupWindowZ = z();
        menuPopupWindowZ.n(menuAdapter);
        menuPopupWindowZ.D(iO);
        menuPopupWindowZ.E(this.mDropDownGravity);
        if (this.mShowingMenus.size() > 0) {
            List<CascadingMenuInfo> list = this.mShowingMenus;
            cascadingMenuInfo = list.get(list.size() - 1);
            viewC = C(cascadingMenuInfo, menuBuilder);
        } else {
            cascadingMenuInfo = null;
            viewC = null;
        }
        if (viewC != null) {
            menuPopupWindowZ.S(false);
            menuPopupWindowZ.P(null);
            int iE = E(iO);
            boolean z6 = iE == 1;
            this.mLastPosition = iE;
            if (Build.VERSION.SDK_INT >= 26) {
                menuPopupWindowZ.B(viewC);
                i11 = 0;
                i10 = 0;
            } else {
                int[] iArr = new int[2];
                this.mAnchorView.getLocationOnScreen(iArr);
                int[] iArr2 = new int[2];
                viewC.getLocationOnScreen(iArr2);
                if ((this.mDropDownGravity & 7) == 5) {
                    iArr[0] = iArr[0] + this.mAnchorView.getWidth();
                    iArr2[0] = iArr2[0] + viewC.getWidth();
                }
                i10 = iArr2[0] - iArr[0];
                i11 = iArr2[1] - iArr[1];
            }
            if ((this.mDropDownGravity & 5) == 5) {
                if (z6) {
                    i12 = i10 + iO;
                } else {
                    iO = viewC.getWidth();
                    i12 = i10 - iO;
                }
            } else if (z6) {
                iO = viewC.getWidth();
                i12 = i10 + iO;
            } else {
                i12 = i10 - iO;
            }
            menuPopupWindowZ.k(i12);
            menuPopupWindowZ.K(true);
            menuPopupWindowZ.d(i11);
        } else {
            if (this.mHasXOffset) {
                menuPopupWindowZ.k(this.mXOffset);
            }
            if (this.mHasYOffset) {
                menuPopupWindowZ.d(this.mYOffset);
            }
            menuPopupWindowZ.F(n());
        }
        this.mShowingMenus.add(new CascadingMenuInfo(menuPopupWindowZ, menuBuilder, this.mLastPosition));
        menuPopupWindowZ.show();
        ListView listViewI = menuPopupWindowZ.i();
        listViewI.setOnKeyListener(this);
        if (cascadingMenuInfo == null && this.mShowTitle && menuBuilder.z() != null) {
            FrameLayout frameLayout = (FrameLayout) layoutInflaterFrom.inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) listViewI, false);
            TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
            frameLayout.setEnabled(false);
            textView.setText(menuBuilder.z());
            listViewI.addHeaderView(frameLayout, null, false);
            menuPopupWindowZ.show();
        }
    }

    private MenuPopupWindow z() {
        MenuPopupWindow menuPopupWindow = new MenuPopupWindow(this.mContext, null, this.mPopupStyleAttr, this.mPopupStyleRes);
        menuPopupWindow.R(this.mMenuItemHoverListener);
        menuPopupWindow.J(this);
        menuPopupWindow.I(this);
        menuPopupWindow.B(this.mAnchorView);
        menuPopupWindow.E(this.mDropDownGravity);
        menuPopupWindow.H(true);
        menuPopupWindow.G(2);
        return menuPopupWindow;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void d(boolean z6) {
        Iterator<CascadingMenuInfo> it = this.mShowingMenus.iterator();
        while (it.hasNext()) {
            MenuPopup.y(it.next().a().getAdapter()).notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public void dismiss() {
        int size = this.mShowingMenus.size();
        if (size > 0) {
            CascadingMenuInfo[] cascadingMenuInfoArr = (CascadingMenuInfo[]) this.mShowingMenus.toArray(new CascadingMenuInfo[size]);
            for (int i10 = size - 1; i10 >= 0; i10--) {
                CascadingMenuInfo cascadingMenuInfo = cascadingMenuInfoArr[i10];
                if (cascadingMenuInfo.window.isShowing()) {
                    cascadingMenuInfo.window.dismiss();
                }
            }
        }
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public ListView i() {
        if (this.mShowingMenus.isEmpty()) {
            return null;
        }
        List<CascadingMenuInfo> list = this.mShowingMenus;
        return list.get(list.size() - 1).a();
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public boolean isShowing() {
        return this.mShowingMenus.size() > 0 && this.mShowingMenus.get(0).window.isShowing();
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean k(SubMenuBuilder subMenuBuilder) {
        for (CascadingMenuInfo cascadingMenuInfo : this.mShowingMenus) {
            if (subMenuBuilder == cascadingMenuInfo.menu) {
                cascadingMenuInfo.a().requestFocus();
                return true;
            }
        }
        if (!subMenuBuilder.hasVisibleItems()) {
            return false;
        }
        l(subMenuBuilder);
        MenuPresenter.Callback callback = this.mPresenterCallback;
        if (callback != null) {
            callback.b(subMenuBuilder);
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public void l(MenuBuilder menuBuilder) {
        menuBuilder.c(this, this.mContext);
        if (isShowing()) {
            F(menuBuilder);
        } else {
            this.mPendingMenus.add(menuBuilder);
        }
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        CascadingMenuInfo cascadingMenuInfo;
        int size = this.mShowingMenus.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                cascadingMenuInfo = null;
                break;
            }
            cascadingMenuInfo = this.mShowingMenus.get(i10);
            if (!cascadingMenuInfo.window.isShowing()) {
                break;
            } else {
                i10++;
            }
        }
        if (cascadingMenuInfo != null) {
            cascadingMenuInfo.menu.e(false);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public void p(@NonNull View view) {
        if (this.mAnchorView != view) {
            this.mAnchorView = view;
            this.mDropDownGravity = GravityCompat.b(this.mRawDropDownGravity, ViewCompat.D(view));
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public void s(int i10) {
        if (this.mRawDropDownGravity != i10) {
            this.mRawDropDownGravity = i10;
            this.mDropDownGravity = GravityCompat.b(i10, ViewCompat.D(this.mAnchorView));
        }
    }

    public CascadingMenuPopup(@NonNull Context context, @NonNull View view, @AttrRes int i10, @StyleRes int i11, boolean z6) {
        this.mContext = context;
        this.mAnchorView = view;
        this.mPopupStyleAttr = i10;
        this.mPopupStyleRes = i11;
        this.mOverflowOnly = z6;
        Resources resources = context.getResources();
        this.mMenuMaxWidth = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.mSubMenuHoverHandler = new Handler();
    }

    private MenuItem B(@NonNull MenuBuilder menuBuilder, @NonNull MenuBuilder menuBuilder2) {
        int size = menuBuilder.size();
        for (int i10 = 0; i10 < size; i10++) {
            MenuItem item = menuBuilder.getItem(i10);
            if (item.hasSubMenu() && menuBuilder2 == item.getSubMenu()) {
                return item;
            }
        }
        return null;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void a(MenuBuilder menuBuilder, boolean z6) {
        int iA = A(menuBuilder);
        if (iA < 0) {
            return;
        }
        int i10 = iA + 1;
        if (i10 < this.mShowingMenus.size()) {
            this.mShowingMenus.get(i10).menu.e(false);
        }
        CascadingMenuInfo cascadingMenuInfoRemove = this.mShowingMenus.remove(iA);
        cascadingMenuInfoRemove.menu.Q(this);
        if (this.mShouldCloseImmediately) {
            cascadingMenuInfoRemove.window.Q(null);
            cascadingMenuInfoRemove.window.C(0);
        }
        cascadingMenuInfoRemove.window.dismiss();
        int size = this.mShowingMenus.size();
        if (size > 0) {
            this.mLastPosition = this.mShowingMenus.get(size - 1).position;
        } else {
            this.mLastPosition = D();
        }
        if (size == 0) {
            dismiss();
            MenuPresenter.Callback callback = this.mPresenterCallback;
            if (callback != null) {
                callback.a(menuBuilder, true);
            }
            ViewTreeObserver viewTreeObserver = this.mTreeObserver;
            if (viewTreeObserver != null) {
                if (viewTreeObserver.isAlive()) {
                    this.mTreeObserver.removeGlobalOnLayoutListener(this.mGlobalLayoutListener);
                }
                this.mTreeObserver = null;
            }
            this.mShownAnchorView.removeOnAttachStateChangeListener(this.mAttachStateChangeListener);
            this.mOnDismissListener.onDismiss();
            return;
        }
        if (z6) {
            this.mShowingMenus.get(0).menu.e(false);
        }
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
        boolean z6;
        if (isShowing()) {
            return;
        }
        Iterator<MenuBuilder> it = this.mPendingMenus.iterator();
        while (it.hasNext()) {
            F(it.next());
        }
        this.mPendingMenus.clear();
        View view = this.mAnchorView;
        this.mShownAnchorView = view;
        if (view != null) {
            if (this.mTreeObserver == null) {
                z6 = true;
            } else {
                z6 = false;
            }
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            this.mTreeObserver = viewTreeObserver;
            if (z6) {
                viewTreeObserver.addOnGlobalLayoutListener(this.mGlobalLayoutListener);
            }
            this.mShownAnchorView.addOnAttachStateChangeListener(this.mAttachStateChangeListener);
        }
    }
}
