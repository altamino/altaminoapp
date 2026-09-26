package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.ViewGroup;
import android.view.Window;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.core.view.ViewPropertyAnimatorCompat;

/* JADX INFO: loaded from: classes3.dex */
@RestrictTo
public interface DecorToolbar {
    boolean a();

    boolean b();

    boolean c();

    void collapseActionView();

    boolean d();

    void e(Menu menu, MenuPresenter.Callback callback);

    void f();

    boolean g();

    Context getContext();

    CharSequence getTitle();

    int getVisibility();

    boolean h();

    void i(int i10);

    int j();

    void k(int i10);

    void l();

    void m(boolean z6);

    void n();

    int o();

    void p();

    void q(Drawable drawable);

    Menu r();

    ViewPropertyAnimatorCompat s(int i10, long j6);

    void setIcon(int i10);

    void setIcon(Drawable drawable);

    void setTitle(CharSequence charSequence);

    void setVisibility(int i10);

    void setWindowCallback(Window.Callback callback);

    void setWindowTitle(CharSequence charSequence);

    ViewGroup t();

    void u(boolean z6);

    void v(ScrollingTabContainerView scrollingTabContainerView);

    void w(int i10);

    void x(MenuPresenter.Callback callback, MenuBuilder.Callback callback2);
}
