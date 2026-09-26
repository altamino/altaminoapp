package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Rect;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes10.dex */
public abstract class MenuPopup implements ShowableListMenu, MenuPresenter, AdapterView.OnItemClickListener {
    private Rect mEpicenterBounds;

    protected static int o(ListAdapter listAdapter, ViewGroup viewGroup, Context context, int i10) {
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int count = listAdapter.getCount();
        int i11 = 0;
        int i12 = 0;
        View view = null;
        for (int i13 = 0; i13 < count; i13++) {
            int itemViewType = listAdapter.getItemViewType(i13);
            if (itemViewType != i12) {
                view = null;
                i12 = itemViewType;
            }
            if (viewGroup == null) {
                viewGroup = new FrameLayout(context);
            }
            view = listAdapter.getView(i13, view, viewGroup);
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            int measuredWidth = view.getMeasuredWidth();
            if (measuredWidth >= i10) {
                return i10;
            }
            if (measuredWidth > i11) {
                i11 = measuredWidth;
            }
        }
        return i11;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean b(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean f(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void g(@NonNull Context context, @Nullable MenuBuilder menuBuilder) {
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public int getId() {
        return 0;
    }

    public abstract void l(MenuBuilder menuBuilder);

    protected boolean m() {
        return true;
    }

    public Rect n() {
        return this.mEpicenterBounds;
    }

    public abstract void p(View view);

    public void q(Rect rect) {
        this.mEpicenterBounds = rect;
    }

    public abstract void r(boolean z6);

    public abstract void s(int i10);

    public abstract void t(int i10);

    public abstract void u(PopupWindow.OnDismissListener onDismissListener);

    public abstract void v(boolean z6);

    public abstract void w(int i10);

    protected static MenuAdapter y(ListAdapter listAdapter) {
        return listAdapter instanceof HeaderViewListAdapter ? (MenuAdapter) ((HeaderViewListAdapter) listAdapter).getWrappedAdapter() : (MenuAdapter) listAdapter;
    }

    MenuPopup() {
    }

    protected static boolean x(MenuBuilder menuBuilder) {
        int size = menuBuilder.size();
        for (int i10 = 0; i10 < size; i10++) {
            MenuItem item = menuBuilder.getItem(i10);
            if (item.isVisible() && item.getIcon() != null) {
                return true;
            }
        }
        return false;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i10, long j6) {
        int i11;
        ListAdapter listAdapter = (ListAdapter) adapterView.getAdapter();
        MenuBuilder menuBuilder = y(listAdapter).mAdapterMenu;
        MenuItem menuItem = (MenuItem) listAdapter.getItem(i10);
        if (m()) {
            i11 = 0;
        } else {
            i11 = 4;
        }
        menuBuilder.O(menuItem, this, i11);
    }
}
