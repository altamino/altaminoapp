package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R;
import androidx.appcompat.view.ActionBarPolicy;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.BaseMenuPresenter;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPopupHelper;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.view.menu.ShowableListMenu;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ActionProvider;
import androidx.core.view.GravityCompat;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
class ActionMenuPresenter extends BaseMenuPresenter implements ActionProvider.SubUiVisibilityListener {
    private static final String TAG = "ActionMenuPresenter";
    private final SparseBooleanArray mActionButtonGroups;
    ActionButtonSubmenu mActionButtonPopup;
    private int mActionItemWidthLimit;
    private boolean mExpandedActionViewsExclusive;
    private int mMaxItems;
    private boolean mMaxItemsSet;
    private int mMinCellSize;
    int mOpenSubMenuId;
    OverflowMenuButton mOverflowButton;
    OverflowPopup mOverflowPopup;
    private Drawable mPendingOverflowIcon;
    private boolean mPendingOverflowIconSet;
    private ActionMenuPopupCallback mPopupCallback;
    final PopupPresenterCallback mPopupPresenterCallback;
    OpenOverflowRunnable mPostedOpenRunnable;
    private boolean mReserveOverflow;
    private boolean mReserveOverflowSet;
    private boolean mStrictWidthLimit;
    private int mWidthLimit;
    private boolean mWidthLimitSet;

    private class ActionButtonSubmenu extends MenuPopupHelper {
        public ActionButtonSubmenu(Context context, SubMenuBuilder subMenuBuilder, View view) {
            super(context, subMenuBuilder, view, false, R.attr.actionOverflowMenuStyle);
            if (!((MenuItemImpl) subMenuBuilder.getItem()).l()) {
                View view2 = ActionMenuPresenter.this.mOverflowButton;
                f(view2 == null ? (View) ((BaseMenuPresenter) ActionMenuPresenter.this).mMenuView : view2);
            }
            j(ActionMenuPresenter.this.mPopupPresenterCallback);
        }

        @Override // androidx.appcompat.view.menu.MenuPopupHelper
        protected void e() {
            ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
            actionMenuPresenter.mActionButtonPopup = null;
            actionMenuPresenter.mOpenSubMenuId = 0;
            super.e();
        }
    }

    private class ActionMenuPopupCallback extends ActionMenuItemView.PopupCallback {
        ActionMenuPopupCallback() {
        }

        @Override // androidx.appcompat.view.menu.ActionMenuItemView.PopupCallback
        public ShowableListMenu a() {
            ActionButtonSubmenu actionButtonSubmenu = ActionMenuPresenter.this.mActionButtonPopup;
            if (actionButtonSubmenu != null) {
                return actionButtonSubmenu.c();
            }
            return null;
        }
    }

    private class OpenOverflowRunnable implements Runnable {
        private OverflowPopup mPopup;

        public OpenOverflowRunnable(OverflowPopup overflowPopup) {
            this.mPopup = overflowPopup;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (((BaseMenuPresenter) ActionMenuPresenter.this).mMenu != null) {
                ((BaseMenuPresenter) ActionMenuPresenter.this).mMenu.d();
            }
            View view = (View) ((BaseMenuPresenter) ActionMenuPresenter.this).mMenuView;
            if (view != null && view.getWindowToken() != null && this.mPopup.m()) {
                ActionMenuPresenter.this.mOverflowPopup = this.mPopup;
            }
            ActionMenuPresenter.this.mPostedOpenRunnable = null;
        }
    }

    private class OverflowMenuButton extends AppCompatImageView implements ActionMenuView.ActionMenuChildView {
        @Override // androidx.appcompat.widget.ActionMenuView.ActionMenuChildView
        public boolean a() {
            return false;
        }

        @Override // androidx.appcompat.widget.ActionMenuView.ActionMenuChildView
        public boolean b() {
            return false;
        }

        public OverflowMenuButton(Context context) {
            super(context, null, R.attr.actionOverflowButtonStyle);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            TooltipCompat.a(this, getContentDescription());
            setOnTouchListener(new ForwardingListener(this) { // from class: androidx.appcompat.widget.ActionMenuPresenter.OverflowMenuButton.1
                @Override // androidx.appcompat.widget.ForwardingListener
                public ShowableListMenu b() {
                    OverflowPopup overflowPopup = ActionMenuPresenter.this.mOverflowPopup;
                    if (overflowPopup == null) {
                        return null;
                    }
                    return overflowPopup.c();
                }

                @Override // androidx.appcompat.widget.ForwardingListener
                public boolean c() {
                    ActionMenuPresenter.this.N();
                    return true;
                }

                @Override // androidx.appcompat.widget.ForwardingListener
                public boolean d() {
                    ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
                    if (actionMenuPresenter.mPostedOpenRunnable != null) {
                        return false;
                    }
                    actionMenuPresenter.E();
                    return true;
                }
            });
        }

        @Override // android.view.View
        public boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            ActionMenuPresenter.this.N();
            return true;
        }

        @Override // android.widget.ImageView
        protected boolean setFrame(int i10, int i11, int i12, int i13) {
            boolean frame = super.setFrame(i10, i11, i12, i13);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (drawable != null && background != null) {
                int width = getWidth();
                int height = getHeight();
                int iMax = Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                DrawableCompat.l(background, paddingLeft - iMax, paddingTop - iMax, paddingLeft + iMax, paddingTop + iMax);
            }
            return frame;
        }
    }

    private class OverflowPopup extends MenuPopupHelper {
        public OverflowPopup(Context context, MenuBuilder menuBuilder, View view, boolean z6) {
            super(context, menuBuilder, view, z6, R.attr.actionOverflowMenuStyle);
            h(GravityCompat.END);
            j(ActionMenuPresenter.this.mPopupPresenterCallback);
        }

        @Override // androidx.appcompat.view.menu.MenuPopupHelper
        protected void e() {
            if (((BaseMenuPresenter) ActionMenuPresenter.this).mMenu != null) {
                ((BaseMenuPresenter) ActionMenuPresenter.this).mMenu.close();
            }
            ActionMenuPresenter.this.mOverflowPopup = null;
            super.e();
        }
    }

    private class PopupPresenterCallback implements MenuPresenter.Callback {
        PopupPresenterCallback() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public void a(@NonNull MenuBuilder menuBuilder, boolean z6) {
            if (menuBuilder instanceof SubMenuBuilder) {
                menuBuilder.F().e(false);
            }
            MenuPresenter.Callback callbackP = ActionMenuPresenter.this.p();
            if (callbackP != null) {
                callbackP.a(menuBuilder, z6);
            }
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public boolean b(@NonNull MenuBuilder menuBuilder) {
            if (menuBuilder == ((BaseMenuPresenter) ActionMenuPresenter.this).mMenu) {
                return false;
            }
            ActionMenuPresenter.this.mOpenSubMenuId = ((SubMenuBuilder) menuBuilder).getItem().getItemId();
            MenuPresenter.Callback callbackP = ActionMenuPresenter.this.p();
            if (callbackP != null) {
                return callbackP.b(menuBuilder);
            }
            return false;
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    private static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: androidx.appcompat.widget.ActionMenuPresenter.SavedState.1
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        };
        public int openSubMenuId;

        SavedState() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        SavedState(Parcel parcel) {
            this.openSubMenuId = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeInt(this.openSubMenuId);
        }
    }

    public void J(boolean z6) {
        this.mExpandedActionViewsExclusive = z6;
    }

    public void M(boolean z6) {
        this.mReserveOverflow = z6;
        this.mReserveOverflowSet = true;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    public void m(MenuItemImpl menuItemImpl, MenuView.ItemView itemView) {
        itemView.e(menuItemImpl, 0);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) itemView;
        actionMenuItemView.setItemInvoker((ActionMenuView) this.mMenuView);
        if (this.mPopupCallback == null) {
            this.mPopupCallback = new ActionMenuPopupCallback();
        }
        actionMenuItemView.setPopupCallback(this.mPopupCallback);
    }

    public ActionMenuPresenter(Context context) {
        super(context, R.layout.abc_action_menu_layout, R.layout.abc_action_menu_item_layout);
        this.mActionButtonGroups = new SparseBooleanArray();
        this.mPopupPresenterCallback = new PopupPresenterCallback();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private View C(MenuItem menuItem) {
        ViewGroup viewGroup = (ViewGroup) this.mMenuView;
        if (viewGroup == null) {
            return null;
        }
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if ((childAt instanceof MenuView.ItemView) && ((MenuView.ItemView) childAt).getItemData() == menuItem) {
                return childAt;
            }
        }
        return null;
    }

    public Drawable D() {
        OverflowMenuButton overflowMenuButton = this.mOverflowButton;
        if (overflowMenuButton != null) {
            return overflowMenuButton.getDrawable();
        }
        if (this.mPendingOverflowIconSet) {
            return this.mPendingOverflowIcon;
        }
        return null;
    }

    public boolean E() {
        Object obj;
        OpenOverflowRunnable openOverflowRunnable = this.mPostedOpenRunnable;
        if (openOverflowRunnable != null && (obj = this.mMenuView) != null) {
            ((View) obj).removeCallbacks(openOverflowRunnable);
            this.mPostedOpenRunnable = null;
            return true;
        }
        OverflowPopup overflowPopup = this.mOverflowPopup;
        if (overflowPopup == null) {
            return false;
        }
        overflowPopup.b();
        return true;
    }

    public boolean F() {
        ActionButtonSubmenu actionButtonSubmenu = this.mActionButtonPopup;
        if (actionButtonSubmenu == null) {
            return false;
        }
        actionButtonSubmenu.b();
        return true;
    }

    public boolean G() {
        return this.mPostedOpenRunnable != null || H();
    }

    public boolean H() {
        OverflowPopup overflowPopup = this.mOverflowPopup;
        return overflowPopup != null && overflowPopup.d();
    }

    public void I(Configuration configuration) {
        if (!this.mMaxItemsSet) {
            this.mMaxItems = ActionBarPolicy.b(this.mContext).d();
        }
        MenuBuilder menuBuilder = this.mMenu;
        if (menuBuilder != null) {
            menuBuilder.M(true);
        }
    }

    public void K(ActionMenuView actionMenuView) {
        this.mMenuView = actionMenuView;
        actionMenuView.a(this.mMenu);
    }

    public void L(Drawable drawable) {
        OverflowMenuButton overflowMenuButton = this.mOverflowButton;
        if (overflowMenuButton != null) {
            overflowMenuButton.setImageDrawable(drawable);
        } else {
            this.mPendingOverflowIconSet = true;
            this.mPendingOverflowIcon = drawable;
        }
    }

    public boolean N() {
        MenuBuilder menuBuilder;
        if (!this.mReserveOverflow || H() || (menuBuilder = this.mMenu) == null || this.mMenuView == null || this.mPostedOpenRunnable != null || menuBuilder.B().isEmpty()) {
            return false;
        }
        OpenOverflowRunnable openOverflowRunnable = new OpenOverflowRunnable(new OverflowPopup(this.mContext, this.mMenu, this.mOverflowButton, true));
        this.mPostedOpenRunnable = openOverflowRunnable;
        ((View) this.mMenuView).post(openOverflowRunnable);
        return true;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public Parcelable c() {
        SavedState savedState = new SavedState();
        savedState.openSubMenuId = this.mOpenSubMenuId;
        return savedState;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.appcompat.widget.ActionMenuPresenter] */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r15v1, types: [androidx.appcompat.view.menu.MenuItemImpl] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [int] */
    /* JADX WARN: Type inference failed for: r3v12 */
    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public boolean e() {
        ArrayList<MenuItemImpl> arrayListG;
        int size;
        int i10;
        int iN;
        ?? r1;
        ActionMenuPresenter actionMenuPresenter = this;
        MenuBuilder menuBuilder = actionMenuPresenter.mMenu;
        View view = null;
        ?? r5 = 0;
        if (menuBuilder != null) {
            arrayListG = menuBuilder.G();
            size = arrayListG.size();
        } else {
            arrayListG = null;
            size = 0;
        }
        int i11 = actionMenuPresenter.mMaxItems;
        int i12 = actionMenuPresenter.mActionItemWidthLimit;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) actionMenuPresenter.mMenuView;
        boolean z6 = false;
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 0; i15 < size; i15++) {
            MenuItemImpl menuItemImpl = arrayListG.get(i15);
            if (menuItemImpl.o()) {
                i13++;
            } else if (menuItemImpl.n()) {
                i14++;
            } else {
                z6 = true;
            }
            if (actionMenuPresenter.mExpandedActionViewsExclusive && menuItemImpl.isActionViewExpanded()) {
                i11 = 0;
            }
        }
        if (actionMenuPresenter.mReserveOverflow && (z6 || i14 + i13 > i11)) {
            i11--;
        }
        int i16 = i11 - i13;
        SparseBooleanArray sparseBooleanArray = actionMenuPresenter.mActionButtonGroups;
        sparseBooleanArray.clear();
        if (actionMenuPresenter.mStrictWidthLimit) {
            int i17 = actionMenuPresenter.mMinCellSize;
            iN = i12 / i17;
            i10 = i17 + ((i12 % i17) / iN);
        } else {
            i10 = 0;
            iN = 0;
        }
        int i18 = 0;
        int i19 = 0;
        ?? r10 = actionMenuPresenter;
        while (i18 < size) {
            MenuItemImpl menuItemImpl2 = arrayListG.get(i18);
            if (menuItemImpl2.o()) {
                View viewQ = r10.q(menuItemImpl2, view, viewGroup);
                if (r10.mStrictWidthLimit) {
                    iN -= ActionMenuView.N(viewQ, i10, iN, iMakeMeasureSpec, r5);
                } else {
                    viewQ.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                }
                int measuredWidth = viewQ.getMeasuredWidth();
                i12 -= measuredWidth;
                if (i19 == 0) {
                    i19 = measuredWidth;
                }
                int groupId = menuItemImpl2.getGroupId();
                if (groupId != 0) {
                    sparseBooleanArray.put(groupId, true);
                }
                menuItemImpl2.u(true);
                r1 = r5;
            } else if (menuItemImpl2.n()) {
                int groupId2 = menuItemImpl2.getGroupId();
                boolean z10 = sparseBooleanArray.get(groupId2);
                boolean z11 = (i16 > 0 || z10) && i12 > 0 && (!r10.mStrictWidthLimit || iN > 0);
                boolean z12 = z11;
                if (z11) {
                    View viewQ2 = r10.q(menuItemImpl2, null, viewGroup);
                    if (r10.mStrictWidthLimit) {
                        int iN2 = ActionMenuView.N(viewQ2, i10, iN, iMakeMeasureSpec, 0);
                        iN -= iN2;
                        if (iN2 == 0) {
                            z12 = false;
                        }
                    } else {
                        viewQ2.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                    }
                    boolean z13 = z12;
                    int measuredWidth2 = viewQ2.getMeasuredWidth();
                    i12 -= measuredWidth2;
                    if (i19 == 0) {
                        i19 = measuredWidth2;
                    }
                    z11 = z13 & (!r10.mStrictWidthLimit ? i12 + i19 <= 0 : i12 < 0);
                }
                if (z11 && groupId2 != 0) {
                    sparseBooleanArray.put(groupId2, true);
                } else if (z10) {
                    sparseBooleanArray.put(groupId2, false);
                    for (int i20 = 0; i20 < i18; i20++) {
                        MenuItemImpl menuItemImpl3 = arrayListG.get(i20);
                        if (menuItemImpl3.getGroupId() == groupId2) {
                            if (menuItemImpl3.l()) {
                                i16++;
                            }
                            menuItemImpl3.u(false);
                        }
                    }
                }
                if (z11) {
                    i16--;
                }
                menuItemImpl2.u(z11);
                r1 = 0;
            } else {
                r1 = r5;
                menuItemImpl2.u(r1);
            }
            i18++;
            r5 = r1;
            size = size;
            view = null;
            r10 = this;
        }
        return true;
    }

    @Override // androidx.core.view.ActionProvider.SubUiVisibilityListener
    public void i(boolean z6) {
        if (z6) {
            super.k(null);
            return;
        }
        MenuBuilder menuBuilder = this.mMenu;
        if (menuBuilder != null) {
            menuBuilder.e(false);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void j(Parcelable parcelable) {
        int i10;
        MenuItem menuItemFindItem;
        if ((parcelable instanceof SavedState) && (i10 = ((SavedState) parcelable).openSubMenuId) > 0 && (menuItemFindItem = this.mMenu.findItem(i10)) != null) {
            k((SubMenuBuilder) menuItemFindItem.getSubMenu());
        }
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    public MenuView r(ViewGroup viewGroup) {
        MenuView menuView = this.mMenuView;
        MenuView menuViewR = super.r(viewGroup);
        if (menuView != menuViewR) {
            ((ActionMenuView) menuViewR).setPresenter(this);
        }
        return menuViewR;
    }

    public boolean B() {
        return E() | F();
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public void a(MenuBuilder menuBuilder, boolean z6) {
        B();
        super.a(menuBuilder, z6);
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public void d(boolean z6) {
        ArrayList<MenuItemImpl> arrayListB;
        int size;
        super.d(z6);
        ((View) this.mMenuView).requestLayout();
        MenuBuilder menuBuilder = this.mMenu;
        if (menuBuilder != null) {
            ArrayList<MenuItemImpl> arrayListU = menuBuilder.u();
            int size2 = arrayListU.size();
            for (int i10 = 0; i10 < size2; i10++) {
                ActionProvider actionProviderA = arrayListU.get(i10).a();
                if (actionProviderA != null) {
                    actionProviderA.i(this);
                }
            }
        }
        MenuBuilder menuBuilder2 = this.mMenu;
        if (menuBuilder2 != null) {
            arrayListB = menuBuilder2.B();
        } else {
            arrayListB = null;
        }
        if (this.mReserveOverflow && arrayListB != null && ((size = arrayListB.size()) != 1 ? size > 0 : (!arrayListB.get(0).isActionViewExpanded()))) {
            if (this.mOverflowButton == null) {
                this.mOverflowButton = new OverflowMenuButton(this.mSystemContext);
            }
            ViewGroup viewGroup = (ViewGroup) this.mOverflowButton.getParent();
            if (viewGroup != this.mMenuView) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.mOverflowButton);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.mMenuView;
                actionMenuView.addView(this.mOverflowButton, actionMenuView.H());
            }
        } else {
            OverflowMenuButton overflowMenuButton = this.mOverflowButton;
            if (overflowMenuButton != null) {
                Object parent = overflowMenuButton.getParent();
                Object obj = this.mMenuView;
                if (parent == obj) {
                    ((ViewGroup) obj).removeView(this.mOverflowButton);
                }
            }
        }
        ((ActionMenuView) this.mMenuView).setOverflowReserved(this.mReserveOverflow);
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public void g(@NonNull Context context, @Nullable MenuBuilder menuBuilder) {
        super.g(context, menuBuilder);
        Resources resources = context.getResources();
        ActionBarPolicy actionBarPolicyB = ActionBarPolicy.b(context);
        if (!this.mReserveOverflowSet) {
            this.mReserveOverflow = actionBarPolicyB.h();
        }
        if (!this.mWidthLimitSet) {
            this.mWidthLimit = actionBarPolicyB.c();
        }
        if (!this.mMaxItemsSet) {
            this.mMaxItems = actionBarPolicyB.d();
        }
        int measuredWidth = this.mWidthLimit;
        if (this.mReserveOverflow) {
            if (this.mOverflowButton == null) {
                OverflowMenuButton overflowMenuButton = new OverflowMenuButton(this.mSystemContext);
                this.mOverflowButton = overflowMenuButton;
                if (this.mPendingOverflowIconSet) {
                    overflowMenuButton.setImageDrawable(this.mPendingOverflowIcon);
                    this.mPendingOverflowIcon = null;
                    this.mPendingOverflowIconSet = false;
                }
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.mOverflowButton.measure(iMakeMeasureSpec, iMakeMeasureSpec);
            }
            measuredWidth -= this.mOverflowButton.getMeasuredWidth();
        } else {
            this.mOverflowButton = null;
        }
        this.mActionItemWidthLimit = measuredWidth;
        this.mMinCellSize = (int) (resources.getDisplayMetrics().density * 56.0f);
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public boolean k(SubMenuBuilder subMenuBuilder) {
        boolean z6 = false;
        if (!subMenuBuilder.hasVisibleItems()) {
            return false;
        }
        SubMenuBuilder subMenuBuilder2 = subMenuBuilder;
        while (subMenuBuilder2.i0() != this.mMenu) {
            subMenuBuilder2 = (SubMenuBuilder) subMenuBuilder2.i0();
        }
        View viewC = C(subMenuBuilder2.getItem());
        if (viewC == null) {
            return false;
        }
        this.mOpenSubMenuId = subMenuBuilder.getItem().getItemId();
        int size = subMenuBuilder.size();
        for (int i10 = 0; i10 < size; i10++) {
            MenuItem item = subMenuBuilder.getItem(i10);
            if (item.isVisible() && item.getIcon() != null) {
                z6 = true;
                break;
            }
        }
        ActionButtonSubmenu actionButtonSubmenu = new ActionButtonSubmenu(this.mContext, subMenuBuilder, viewC);
        this.mActionButtonPopup = actionButtonSubmenu;
        actionButtonSubmenu.g(z6);
        this.mActionButtonPopup.k();
        super.k(subMenuBuilder);
        return true;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    public boolean o(ViewGroup viewGroup, int i10) {
        if (viewGroup.getChildAt(i10) == this.mOverflowButton) {
            return false;
        }
        return super.o(viewGroup, i10);
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    public View q(MenuItemImpl menuItemImpl, View view, ViewGroup viewGroup) {
        int i10;
        View actionView = menuItemImpl.getActionView();
        if (actionView == null || menuItemImpl.j()) {
            actionView = super.q(menuItemImpl, view, viewGroup);
        }
        if (menuItemImpl.isActionViewExpanded()) {
            i10 = 8;
        } else {
            i10 = 0;
        }
        actionView.setVisibility(i10);
        ActionMenuView actionMenuView = (ActionMenuView) viewGroup;
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.generateLayoutParams(layoutParams));
        }
        return actionView;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    public boolean t(int i10, MenuItemImpl menuItemImpl) {
        return menuItemImpl.l();
    }
}
