package androidx.appcompat.view;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes6.dex */
@RestrictTo
public class StandaloneActionMode extends ActionMode implements MenuBuilder.Callback {
    private ActionMode.Callback mCallback;
    private Context mContext;
    private ActionBarContextView mContextView;
    private WeakReference<View> mCustomView;
    private boolean mFinished;
    private boolean mFocusable;
    private MenuBuilder mMenu;

    @Override // androidx.appcompat.view.ActionMode
    public Menu e() {
        return this.mMenu;
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    public boolean a(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
        return this.mCallback.b(this, menuItem);
    }

    @Override // androidx.appcompat.view.ActionMode
    public void c() {
        if (this.mFinished) {
            return;
        }
        this.mFinished = true;
        this.mCallback.d(this);
    }

    @Override // androidx.appcompat.view.ActionMode
    public View d() {
        WeakReference<View> weakReference = this.mCustomView;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @Override // androidx.appcompat.view.ActionMode
    public MenuInflater f() {
        return new SupportMenuInflater(this.mContextView.getContext());
    }

    @Override // androidx.appcompat.view.ActionMode
    public CharSequence g() {
        return this.mContextView.getSubtitle();
    }

    @Override // androidx.appcompat.view.ActionMode
    public CharSequence i() {
        return this.mContextView.getTitle();
    }

    @Override // androidx.appcompat.view.ActionMode
    public void k() {
        this.mCallback.c(this, this.mMenu);
    }

    @Override // androidx.appcompat.view.ActionMode
    public boolean l() {
        return this.mContextView.k();
    }

    @Override // androidx.appcompat.view.ActionMode
    public void m(View view) {
        this.mContextView.setCustomView(view);
        this.mCustomView = view != null ? new WeakReference<>(view) : null;
    }

    @Override // androidx.appcompat.view.ActionMode
    public void n(int i10) {
        o(this.mContext.getString(i10));
    }

    @Override // androidx.appcompat.view.ActionMode
    public void o(CharSequence charSequence) {
        this.mContextView.setSubtitle(charSequence);
    }

    @Override // androidx.appcompat.view.ActionMode
    public void q(int i10) {
        r(this.mContext.getString(i10));
    }

    @Override // androidx.appcompat.view.ActionMode
    public void r(CharSequence charSequence) {
        this.mContextView.setTitle(charSequence);
    }

    public StandaloneActionMode(Context context, ActionBarContextView actionBarContextView, ActionMode.Callback callback, boolean z6) {
        this.mContext = context;
        this.mContextView = actionBarContextView;
        this.mCallback = callback;
        MenuBuilder menuBuilderW = new MenuBuilder(actionBarContextView.getContext()).W(1);
        this.mMenu = menuBuilderW;
        menuBuilderW.V(this);
        this.mFocusable = z6;
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    public void b(@NonNull MenuBuilder menuBuilder) {
        k();
        this.mContextView.g();
    }

    @Override // androidx.appcompat.view.ActionMode
    public void s(boolean z6) {
        super.s(z6);
        this.mContextView.setTitleOptional(z6);
    }
}
