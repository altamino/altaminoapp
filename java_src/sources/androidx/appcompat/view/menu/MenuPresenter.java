package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes8.dex */
@RestrictTo
public interface MenuPresenter {

    public interface Callback {
        void a(@NonNull MenuBuilder menuBuilder, boolean z6);

        boolean b(@NonNull MenuBuilder menuBuilder);
    }

    void a(MenuBuilder menuBuilder, boolean z6);

    boolean b(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl);

    Parcelable c();

    void d(boolean z6);

    boolean e();

    boolean f(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl);

    void g(Context context, MenuBuilder menuBuilder);

    int getId();

    void h(Callback callback);

    void j(Parcelable parcelable);

    boolean k(SubMenuBuilder subMenuBuilder);
}
