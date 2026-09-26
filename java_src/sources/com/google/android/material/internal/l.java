package com.google.android.material.internal;

import android.content.Context;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.SubMenuBuilder;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo
public class l extends SubMenuBuilder {
    public l(Context context, j jVar, MenuItemImpl menuItemImpl) {
        super(context, jVar, menuItemImpl);
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    public void M(boolean z6) {
        super.M(z6);
        ((MenuBuilder) i0()).M(z6);
    }
}
