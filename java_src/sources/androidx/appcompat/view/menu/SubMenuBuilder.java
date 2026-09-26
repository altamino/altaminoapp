package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo
public class SubMenuBuilder extends MenuBuilder implements SubMenu {
    private MenuItemImpl mItem;
    private MenuBuilder mParentMenu;

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return this.mItem;
    }

    public Menu i0() {
        return this.mParentMenu;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(Drawable drawable) {
        return (SubMenu) super.Z(drawable);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        return (SubMenu) super.c0(charSequence);
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        this.mItem.setIcon(drawable);
        return this;
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    public MenuBuilder F() {
        return this.mParentMenu.F();
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    public boolean H() {
        return this.mParentMenu.H();
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    public boolean I() {
        return this.mParentMenu.I();
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    public boolean J() {
        return this.mParentMenu.J();
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    public void V(MenuBuilder.Callback callback) {
        this.mParentMenu.V(callback);
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    public boolean f(MenuItemImpl menuItemImpl) {
        return this.mParentMenu.f(menuItemImpl);
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    public boolean m(MenuItemImpl menuItemImpl) {
        return this.mParentMenu.m(menuItemImpl);
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder, android.view.Menu
    public void setGroupDividerEnabled(boolean z6) {
        this.mParentMenu.setGroupDividerEnabled(z6);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(int i10) {
        return (SubMenu) super.Y(i10);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(int i10) {
        return (SubMenu) super.b0(i10);
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i10) {
        this.mItem.setIcon(i10);
        return this;
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder, android.view.Menu
    public void setQwertyMode(boolean z6) {
        this.mParentMenu.setQwertyMode(z6);
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    public String v() {
        MenuItemImpl menuItemImpl = this.mItem;
        int itemId = menuItemImpl != null ? menuItemImpl.getItemId() : 0;
        if (itemId == 0) {
            return null;
        }
        return super.v() + ":" + itemId;
    }

    public SubMenuBuilder(Context context, MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        super(context);
        this.mParentMenu = menuBuilder;
        this.mItem = menuItemImpl;
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    boolean h(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
        if (!super.h(menuBuilder, menuItem) && !this.mParentMenu.h(menuBuilder, menuItem)) {
            return false;
        }
        return true;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderView(View view) {
        return (SubMenu) super.d0(view);
    }
}
