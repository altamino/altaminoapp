package com.google.android.material.navigation;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;

/* JADX INFO: loaded from: classes6.dex */
@RestrictTo
public final class b extends MenuBuilder {
    private final int maxItemCount;

    @NonNull
    private final Class<?> viewClass;

    @Override // androidx.appcompat.view.menu.MenuBuilder, android.view.Menu
    @NonNull
    public SubMenu addSubMenu(int i10, int i11, int i12, @NonNull CharSequence charSequence) {
        throw new UnsupportedOperationException(this.viewClass.getSimpleName() + " does not support submenus");
    }

    public b(@NonNull Context context, @NonNull Class<?> cls, int i10) {
        super(context);
        this.viewClass = cls;
        this.maxItemCount = i10;
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    @NonNull
    protected MenuItem a(int i10, int i11, int i12, @NonNull CharSequence charSequence) {
        if (size() + 1 <= this.maxItemCount) {
            h0();
            MenuItem menuItemA = super.a(i10, i11, i12, charSequence);
            if (menuItemA instanceof MenuItemImpl) {
                ((MenuItemImpl) menuItemA).t(true);
            }
            g0();
            return menuItemA;
        }
        String simpleName = this.viewClass.getSimpleName();
        throw new IllegalArgumentException("Maximum number of items supported by " + simpleName + " is " + this.maxItemCount + ". Limit can be checked with " + simpleName + "#getMaxItemCount()");
    }
}
