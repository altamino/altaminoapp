package androidx.appcompat.widget;

import android.view.Menu;
import android.view.Window;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuPresenter;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo
public interface DecorContentParent {
    boolean a();

    boolean b();

    boolean c();

    boolean d();

    void e(Menu menu, MenuPresenter.Callback callback);

    void f();

    boolean g();

    void h(int i10);

    void i();

    void setWindowCallback(Window.Callback callback);

    void setWindowTitle(CharSequence charSequence);
}
