package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.R;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes8.dex */
@RestrictTo
public class MenuPopupHelper implements MenuHelper {
    private static final int TOUCH_EPICENTER_SIZE_DP = 48;
    private View mAnchorView;
    private final Context mContext;
    private int mDropDownGravity;
    private boolean mForceShowIcon;
    private final PopupWindow.OnDismissListener mInternalOnDismissListener;
    private final MenuBuilder mMenu;
    private PopupWindow.OnDismissListener mOnDismissListener;
    private final boolean mOverflowOnly;
    private MenuPopup mPopup;
    private final int mPopupStyleAttr;
    private final int mPopupStyleRes;
    private MenuPresenter.Callback mPresenterCallback;

    public MenuPopupHelper(@NonNull Context context, @NonNull MenuBuilder menuBuilder) {
        this(context, menuBuilder, null, false, R.attr.popupMenuStyle, 0);
    }

    protected void e() {
        this.mPopup = null;
        PopupWindow.OnDismissListener onDismissListener = this.mOnDismissListener;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    public void f(@NonNull View view) {
        this.mAnchorView = view;
    }

    public void h(int i10) {
        this.mDropDownGravity = i10;
    }

    public void i(@Nullable PopupWindow.OnDismissListener onDismissListener) {
        this.mOnDismissListener = onDismissListener;
    }

    public MenuPopupHelper(@NonNull Context context, @NonNull MenuBuilder menuBuilder, @NonNull View view) {
        this(context, menuBuilder, view, false, R.attr.popupMenuStyle, 0);
    }

    @NonNull
    private MenuPopup a() {
        Display defaultDisplay = ((WindowManager) this.mContext.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getRealSize(point);
        MenuPopup cascadingMenuPopup = Math.min(point.x, point.y) >= this.mContext.getResources().getDimensionPixelSize(R.dimen.abc_cascading_menus_min_smallest_width) ? new CascadingMenuPopup(this.mContext, this.mAnchorView, this.mPopupStyleAttr, this.mPopupStyleRes, this.mOverflowOnly) : new StandardMenuPopup(this.mContext, this.mMenu, this.mAnchorView, this.mPopupStyleAttr, this.mPopupStyleRes, this.mOverflowOnly);
        cascadingMenuPopup.l(this.mMenu);
        cascadingMenuPopup.u(this.mInternalOnDismissListener);
        cascadingMenuPopup.p(this.mAnchorView);
        cascadingMenuPopup.h(this.mPresenterCallback);
        cascadingMenuPopup.r(this.mForceShowIcon);
        cascadingMenuPopup.s(this.mDropDownGravity);
        return cascadingMenuPopup;
    }

    @NonNull
    @RestrictTo
    public MenuPopup c() {
        if (this.mPopup == null) {
            this.mPopup = a();
        }
        return this.mPopup;
    }

    public boolean d() {
        MenuPopup menuPopup = this.mPopup;
        return menuPopup != null && menuPopup.isShowing();
    }

    public void g(boolean z6) {
        this.mForceShowIcon = z6;
        MenuPopup menuPopup = this.mPopup;
        if (menuPopup != null) {
            menuPopup.r(z6);
        }
    }

    public void j(@Nullable MenuPresenter.Callback callback) {
        this.mPresenterCallback = callback;
        MenuPopup menuPopup = this.mPopup;
        if (menuPopup != null) {
            menuPopup.h(callback);
        }
    }

    public MenuPopupHelper(@NonNull Context context, @NonNull MenuBuilder menuBuilder, @NonNull View view, boolean z6, @AttrRes int i10) {
        this(context, menuBuilder, view, z6, i10, 0);
    }

    private void l(int i10, int i11, boolean z6, boolean z10) {
        MenuPopup menuPopupC = c();
        menuPopupC.v(z10);
        if (z6) {
            if ((GravityCompat.b(this.mDropDownGravity, ViewCompat.D(this.mAnchorView)) & 7) == 5) {
                i10 -= this.mAnchorView.getWidth();
            }
            menuPopupC.t(i10);
            menuPopupC.w(i11);
            int i12 = (int) ((this.mContext.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            menuPopupC.q(new Rect(i10 - i12, i11 - i12, i10 + i12, i11 + i12));
        }
        menuPopupC.show();
    }

    public void b() {
        if (d()) {
            this.mPopup.dismiss();
        }
    }

    public void k() {
        if (m()) {
        } else {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
    }

    public boolean m() {
        if (d()) {
            return true;
        }
        if (this.mAnchorView == null) {
            return false;
        }
        l(0, 0, false, false);
        return true;
    }

    public boolean n(int i10, int i11) {
        if (d()) {
            return true;
        }
        if (this.mAnchorView == null) {
            return false;
        }
        l(i10, i11, true, true);
        return true;
    }

    public MenuPopupHelper(@NonNull Context context, @NonNull MenuBuilder menuBuilder, @NonNull View view, boolean z6, @AttrRes int i10, @StyleRes int i11) {
        this.mDropDownGravity = GravityCompat.START;
        this.mInternalOnDismissListener = new PopupWindow.OnDismissListener() { // from class: androidx.appcompat.view.menu.MenuPopupHelper.1
            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                MenuPopupHelper.this.e();
            }
        };
        this.mContext = context;
        this.mMenu = menuBuilder;
        this.mAnchorView = view;
        this.mOverflowOnly = z6;
        this.mPopupStyleAttr = i10;
        this.mPopupStyleRes = i11;
    }
}
