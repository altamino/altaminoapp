package com.google.android.material.internal;

import android.content.Context;
import android.view.SubMenu;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo
public class j extends MenuBuilder {
    public j(Context context) {
        super(context);
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder, android.view.Menu
    @NonNull
    public SubMenu addSubMenu(int i10, int i11, int i12, CharSequence charSequence) {
        MenuItemImpl menuItemImpl = (MenuItemImpl) a(i10, i11, i12, charSequence);
        l lVar = new l(w(), this, menuItemImpl);
        menuItemImpl.x(lVar);
        return lVar;
    }
}
