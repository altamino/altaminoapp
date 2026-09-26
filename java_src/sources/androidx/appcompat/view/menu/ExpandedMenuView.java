package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import androidx.annotation.RestrictTo;
import androidx.appcompat.widget.TintTypedArray;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo
public final class ExpandedMenuView extends ListView implements MenuBuilder.ItemInvoker, MenuView, AdapterView.OnItemClickListener {
    private static final int[] TINT_ATTRS = {R.attr.background, R.attr.divider};
    private int mAnimations;
    private MenuBuilder mMenu;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listViewStyle);
    }

    @Override // androidx.appcompat.view.menu.MenuView
    public void a(MenuBuilder menuBuilder) {
        this.mMenu = menuBuilder;
    }

    public int getWindowAnimations() {
        return this.mAnimations;
    }

    public ExpandedMenuView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        TintTypedArray tintTypedArrayV = TintTypedArray.v(context, attributeSet, TINT_ATTRS, i10, 0);
        if (tintTypedArrayV.s(0)) {
            setBackgroundDrawable(tintTypedArrayV.g(0));
        }
        if (tintTypedArrayV.s(1)) {
            setDivider(tintTypedArrayV.g(1));
        }
        tintTypedArrayV.w();
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.ItemInvoker
    public boolean f(MenuItemImpl menuItemImpl) {
        return this.mMenu.N(menuItemImpl, 0);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i10, long j6) {
        f((MenuItemImpl) getAdapter().getItem(i10));
    }
}
