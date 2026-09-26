package androidx.appcompat.view;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;

/* JADX INFO: loaded from: classes8.dex */
public abstract class ActionMode {
    private Object mTag;
    private boolean mTitleOptionalHint;

    public interface Callback {
        boolean a(ActionMode actionMode, Menu menu);

        boolean b(ActionMode actionMode, MenuItem menuItem);

        boolean c(ActionMode actionMode, Menu menu);

        void d(ActionMode actionMode);
    }

    public abstract void c();

    public abstract View d();

    public abstract Menu e();

    public abstract MenuInflater f();

    public abstract CharSequence g();

    public Object h() {
        return this.mTag;
    }

    public abstract CharSequence i();

    public boolean j() {
        return this.mTitleOptionalHint;
    }

    public abstract void k();

    public boolean l() {
        return false;
    }

    public abstract void m(View view);

    public abstract void n(int i10);

    public abstract void o(CharSequence charSequence);

    public void p(Object obj) {
        this.mTag = obj;
    }

    public abstract void q(int i10);

    public abstract void r(CharSequence charSequence);

    public void s(boolean z6) {
        this.mTitleOptionalHint = z6;
    }
}
