package androidx.appcompat.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.annotation.RestrictTo;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes9.dex */
@RestrictTo
public class MenuAdapter extends BaseAdapter {
    MenuBuilder mAdapterMenu;
    private int mExpandedIndex = -1;
    private boolean mForceShowIcon;
    private final LayoutInflater mInflater;
    private final int mItemLayoutRes;
    private final boolean mOverflowOnly;

    public MenuBuilder b() {
        return this.mAdapterMenu;
    }

    public void d(boolean z6) {
        this.mForceShowIcon = z6;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return i10;
    }

    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.mInflater.inflate(this.mItemLayoutRes, viewGroup, false);
        }
        int groupId = getItem(i10).getGroupId();
        int i11 = i10 - 1;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        listMenuItemView.setGroupDividerEnabled(this.mAdapterMenu.H() && groupId != (i11 >= 0 ? getItem(i11).getGroupId() : groupId));
        MenuView.ItemView itemView = (MenuView.ItemView) view;
        if (this.mForceShowIcon) {
            listMenuItemView.setForceShowIcon(true);
        }
        itemView.e(getItem(i10), 0);
        return view;
    }

    void a() {
        MenuItemImpl menuItemImplX = this.mAdapterMenu.x();
        if (menuItemImplX != null) {
            ArrayList<MenuItemImpl> arrayListB = this.mAdapterMenu.B();
            int size = arrayListB.size();
            for (int i10 = 0; i10 < size; i10++) {
                if (arrayListB.get(i10) == menuItemImplX) {
                    this.mExpandedIndex = i10;
                    return;
                }
            }
        }
        this.mExpandedIndex = -1;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public MenuItemImpl getItem(int i10) {
        ArrayList<MenuItemImpl> arrayListB = this.mOverflowOnly ? this.mAdapterMenu.B() : this.mAdapterMenu.G();
        int i11 = this.mExpandedIndex;
        if (i11 >= 0 && i10 >= i11) {
            i10++;
        }
        return arrayListB.get(i10);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        ArrayList<MenuItemImpl> arrayListB = this.mOverflowOnly ? this.mAdapterMenu.B() : this.mAdapterMenu.G();
        return this.mExpandedIndex < 0 ? arrayListB.size() : arrayListB.size() - 1;
    }

    public MenuAdapter(MenuBuilder menuBuilder, LayoutInflater layoutInflater, boolean z6, int i10) {
        this.mOverflowOnly = z6;
        this.mInflater = layoutInflater;
        this.mAdapterMenu = menuBuilder;
        this.mItemLayoutRes = i10;
        a();
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
