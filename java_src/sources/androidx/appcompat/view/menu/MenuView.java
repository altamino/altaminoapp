package androidx.appcompat.view.menu;

import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes8.dex */
@RestrictTo
public interface MenuView {

    public interface ItemView {
        boolean c();

        void e(MenuItemImpl menuItemImpl, int i10);

        MenuItemImpl getItemData();
    }

    void a(MenuBuilder menuBuilder);
}
