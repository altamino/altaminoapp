package androidx.fragment.app;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MenuItem;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public class FragmentController {
    private final FragmentHostCallback<?> mHost;

    @NonNull
    public static FragmentController b(@NonNull FragmentHostCallback<?> fragmentHostCallback) {
        return new FragmentController((FragmentHostCallback) Preconditions.j(fragmentHostCallback, "callbacks == null"));
    }

    public void a(@Nullable Fragment fragment) {
        FragmentHostCallback<?> fragmentHostCallback = this.mHost;
        fragmentHostCallback.mFragmentManager.o(fragmentHostCallback, fragmentHostCallback, fragment);
    }

    public void c() {
        this.mHost.mFragmentManager.B();
    }

    public boolean d(@NonNull MenuItem menuItem) {
        return this.mHost.mFragmentManager.E(menuItem);
    }

    public void e() {
        this.mHost.mFragmentManager.F();
    }

    public void f() {
        this.mHost.mFragmentManager.H();
    }

    public void g() {
        this.mHost.mFragmentManager.Q();
    }

    public void h() {
        this.mHost.mFragmentManager.U();
    }

    public void i() {
        this.mHost.mFragmentManager.V();
    }

    public void j() {
        this.mHost.mFragmentManager.X();
    }

    public boolean k() {
        return this.mHost.mFragmentManager.e0(true);
    }

    @NonNull
    public FragmentManager l() {
        return this.mHost.mFragmentManager;
    }

    public void m() {
        this.mHost.mFragmentManager.f1();
    }

    @Nullable
    public View n(@Nullable View view, @NonNull String str, @NonNull Context context, @NonNull AttributeSet attributeSet) {
        return this.mHost.mFragmentManager.D0().onCreateView(view, str, context, attributeSet);
    }

    private FragmentController(FragmentHostCallback<?> fragmentHostCallback) {
        this.mHost = fragmentHostCallback;
    }
}
